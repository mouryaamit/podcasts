import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import * as d3 from 'd3';

// Types for clarity
interface SegmentDetail {
  category: string; // "07-2019"
  value: number;
  SortOrder: number;
}

interface Segment {
  SegmentName: string; // "Micro(0-5 Cr]"
  Details: SegmentDetail[];
}

interface RawPoint {
  category: string; // "07-2019"
  Micro: number;
  Small: number;
  Medium: number;
  Large: number;
}

@Component({
  selector: 'app-turnover-distribution',
  templateUrl: './turnover-distribution.component.html',
  styleUrls: ['./turnover-distribution.component.scss'],
})
export class TurnoverDistributionComponent implements OnInit {
  @Input() turnoverDistributionData: Segment[] = [];
  @Output() graphWidth = new EventEmitter<number>();

  constructor() { }

  ngOnInit(): void {
    if (this.turnoverDistributionData?.length) {
      const raw = this.convertToRawData(this.turnoverDistributionData);
      this.generateTurnoverGraph(raw);
    }
  }

  // Convert segment-wise API data to month-wise rows with Micro/Small/Medium/Large
  private convertToRawData(segments: Segment[]): RawPoint[] {
    const byCategory = new Map<string, RawPoint>();

    const getKeyFromSegmentName = (
      name: string
    ): 'Micro' | 'Small' | 'Medium' | 'Large' => {
      const base = name.split('(')[0].trim(); // "Micro(0-5 Cr]" -> "Micro"
      if (
        base === 'Micro' ||
        base === 'Small' ||
        base === 'Medium' ||
        base === 'Large'
      ) {
        return base;
      }
      // fallback – not expected with your data
      return base as any;
    };

    segments.forEach((segment) => {
      const key = getKeyFromSegmentName(segment.SegmentName); // "Micro" / "Small" / "Medium" / "Large"

      segment.Details.forEach((detail) => {
        const category = detail.category; // "07-2019", ...

        let row = byCategory.get(category);
        if (!row) {
          row = {
            category,
            Micro: 0,
            Small: 0,
            Medium: 0,
            Large: 0,
          };
          byCategory.set(category, row);
        }

        row[key] = Number(detail.value ?? 0);
      });
    });

    // Sort by date "MM-YYYY"
    const parseDate = d3.timeParse('%m-%Y');

    return Array.from(byCategory.values()).sort((a, b) => {
      const da = parseDate(a.category);
      const db = parseDate(b.category);
      if (!da || !db) {
        return a.category.localeCompare(b.category);
      }
      return da.getTime() - db.getTime();
    });
  }

  private generateTurnoverGraph(data: RawPoint[]): void {
    // console.log('generateTurnoverGraph data:', data);
    const margin = {
      top: 10,
      right: 10,
      bottom: 60,
      left: 0,
    },
      default_width = 25 * data.length,
      default_height = 445,
      width = default_width - margin.left - margin.right,
      height = default_height - margin.top - margin.bottom;

    // console.log('generateTurnoverGraph default_width:', default_width);
    // console.log('generateTurnoverGraph default_height:', default_height);
    // console.log('generateTurnoverGraph width:', width);
    // console.log('generateTurnoverGraph height:', height);

    this.graphWidth.emit(default_width);

    const parseDate = d3.timeParse('%m-%Y');

    // ---- NORMALISE DATA FOR STACKED AREA ----
    const stackedKeys: Array<keyof RawPoint> = ['Micro', 'Small', 'Medium']; // ignore Large

    const color = d3
      .scaleOrdinal<string>()
      .domain(stackedKeys as string[])
      .range(['#78CF90', '#96D9FF', '#9981F6']); // Micro, Small, Medium

    const dataForStack = data
      .map((d) => {
        const parsed = parseDate(d.category);
        if (!parsed) {
          console.warn('Invalid date, skipping point:', d.category);
          return null;
        }

        // ✅ move point to middle of the month (15th)
        const dateObj = new Date(parsed.getFullYear(), parsed.getMonth(), 15);

        return {
          ...d,
          dateObj,
          Micro: Number(d.Micro ?? 0),
          Small: Number(d.Small ?? 0),
          Medium: Number(d.Medium ?? 0),
        };
      })
      .filter((d): d is RawPoint & { dateObj: Date } => d !== null);

    if (!dataForStack.length) {
      console.warn('No valid data points for turnover graph.');
      return;
    }

    // ----- PAD FIRST & LAST MONTH TO FILL FULL WIDTH -----
    const firstReal = dataForStack[0];
    const lastReal = dataForStack[dataForStack.length - 1];

    // Start of first month (e.g., 01-MM-YYYY)
    const firstMonthStart = new Date(
      firstReal.dateObj.getFullYear(),
      firstReal.dateObj.getMonth(),
      1
    );

    // End of last month (e.g., 30/31-MM-YYYY)
    const lastMonthEnd = new Date(
      lastReal.dateObj.getFullYear(),
      lastReal.dateObj.getMonth() + 1,
      0 // day 0 of next month = last day of this month
    );

    // Clone first & last with same values but shifted dates
    const firstPadded = {
      ...firstReal,
      dateObj: firstMonthStart,
    };

    const lastPadded = {
      ...lastReal,
      dateObj: lastMonthEnd,
    };

    // Use this for stack + x-scale
    const paddedDataForStack = [firstPadded, ...dataForStack, lastPadded];

    const stackGen = d3.stack<any>().keys(stackedKeys as string[]);
    const stackedSeries = stackGen(paddedDataForStack as any);

    // ---- SCALES ----
    const xDomain = d3.extent(paddedDataForStack, (d) => d.dateObj) as [
      Date,
      Date
    ];

    const x1 = d3.scaleTime().domain(xDomain).range([0, width]); // month name
    const x2 = d3.scaleTime().domain(xDomain).range([0, width]); // year
    const x3 = d3
      .scaleTime()
      .domain(xDomain)
      .range([10, width + 10]); // month number

    // Y as percentage 0–100
    const y1 = d3.scaleLinear().domain([0, 100]).nice().range([height, 0]); // left
    const y2 = d3.scaleLinear().domain([0, 100]).range([height, 0]); // grid

    // ---- AXES DEFINITIONS ----
    const xAxis_month_number = d3
      .axisBottom<Date>(x3)
      .tickFormat(d3.timeFormat('%m'))
      .tickSize(height)
      .ticks(data.length);

    const xAxis_month_name = d3
      .axisBottom<Date>(x1)
      .tickSize(-height)
      .ticks(data.length)
      .tickFormat(d3.timeFormat('%b'));

    const xAxis_year = d3
      .axisBottom<Date>(x2)
      .tickSize(35)
      .ticks(data.length)
      .tickFormat((d: Date, i: number) => {
        if (i === 0) {
          return d3.timeFormat('%Y')(d);
        } else {
          const monNum_fmt = d3.timeFormat('%m')(d);
          const year_fmt = d3.timeFormat('%Y')(d);
          return monNum_fmt === '01' ? year_fmt : '';
        }
      });

    const y_left_coordinates = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100];

    const yAxis_left = d3
      .axisLeft(y1)
      .tickSize(0)
      .tickValues(y_left_coordinates);

    const yAxis_graphLines = d3
      .axisLeft(y2)
      .tickSize([-width])
      .tickValues(y_left_coordinates);

    // -------- LEFT SVG (Y axis % + label) --------
    const svgY_left = d3
      .select('#turnover_graph_left_vertical_svg')
      .html('') // clear previous
      .append('svg')
      .attr('height', 500)
      .attr('width', 50)
      .attr('transform', 'translate(0, 5)');

    svgY_left
      .append('g')
      .attr('class', 'y_left_points')
      .call(yAxis_left)
      .attr('dx', '-0.3em')
      .attr('transform', 'translate(40, 5)')
      .style('font-size', '12px')
      .style('color', '#B2B2B2')
      .style('text-anchor', 'end');

    svgY_left
      .append('text')
      .attr('x', '-250')
      .attr('y', '10')
      .style('text-anchor', 'start')
      .attr('transform', 'rotate(-90)')
      .text('GSTIN count %');

    svgY_left.select('.domain').attr('stroke', 'none');

    // -------- MAIN SVG (stacked area + X axes) --------
    const svg = d3
      .select('#turnover_graph_svg_inner')
      .html('') // clear previous
      .append('svg')
      .attr('width', default_width + 2 * margin.right)
      // .attr('width', default_width - 10)
      .attr('id', 'svg_turnover_graph')
      .attr('height', default_height)
      .append('g')
      .attr('transform', `translate(${margin.left},${margin.top})`);

    // horizontal grid lines
    svg.append('g').attr('stroke-width', '0.1').call(yAxis_graphLines);

    // ---- STACKED AREA LAYERS ----
    const area = d3
      .area<any>()
      .x((d: any) => x1(d.data.dateObj as Date))
      .y0((d: any) => y1(d[0]))
      .y1((d: any) => y1(d[1]));

    svg
      .selectAll('path.layer')
      .data(stackedSeries)
      .enter()
      .append('path')
      .attr('class', 'layer')
      .attr('d', area as any)
      .attr('fill', (d: any) => color(d.key as string) as string)
      .attr('opacity', 0.95);

    // // -------- VALUE LABELS ON STACKED AREAS --------
    // const valueLabels = svg.append('g').attr('class', 'value-labels');

    // stackedSeries.forEach((series: any) => {
    //   const key = series.key as keyof RawPoint; // "Micro" | "Small" | "Medium"

    //   valueLabels
    //     .selectAll(`text.value-${key}`)
    //     .data(series)
    //     .enter()
    //     .append('text')
    //     .attr('class', `value-label value-${key}`)
    //     .attr('x', (d: any) => x1(d.data.dateObj as Date))
    //     .attr('y', (d: any) => {
    //       const mid = (d[0] + d[1]) / 2; // middle of that stacked band
    //       return y1(mid);
    //     })
    //     .attr('dy', '0.35em')
    //     .attr('text-anchor', 'middle')
    //     .style('font-size', '10px')
    //     .style('fill', '#333') // you can change to white if you prefer
    //     .text((d: any) => `${(d.data[key] as number).toFixed(0)}%`);
    // });

    // X axes (month number / month name / year)
    // svg
    //   .append('g')
    //   .attr('transform', `translate(0, ${height})`)
    //   .attr('stroke-width', '0')
    //   .attr('class', 'x_month_num')
    //   .call(xAxis_month_number)
    //   .selectAll('.tick text')
    //   .attr('x', '0.1em')
    //   .attr('y', '-1.3em');

    svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0.1')
      .attr('class', 'x_month_name')
      .call(xAxis_month_name)
      .selectAll('.tick text')
      .attr('x', '-1.8em')
      .attr('y', '0.5em')
      .attr('transform', () => 'rotate(-90)')
      .attr('text-anchor', 'middle')
      .attr('class', (_d, i) => `x_month_name x_month_name_${i}`)
      .style('cursor', 'pointer');

    svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0.1')
      .attr('class', 'x_month_year')
      .call(xAxis_year)
      .selectAll('.tick text')
      .attr('x', '1.5em')
      .attr('y', '2.7em')
      .style('font-weight', '600')
      .style('fill', '#A3A3A3')
      .style('font-family', 'Inter')
      .style('font-size', '16px');

    // -------- RIGHT SVG (Micro / Small / Medium labels, centered & colored) --------
    // ---- RIGHT LABEL POSITIONS BASED ON STACK DATA ----
    const lastIndex = paddedDataForStack.length - 2;

    // get middle of each stacked layer at latest month
    const labelYMap: Record<string, number> = {};

    stackedSeries.forEach((series: any) => {
      const lastPoint = series[lastIndex]; // [y0, y1] at real last month
      const middleValue = (lastPoint[0] + lastPoint[1]) / 2;
      labelYMap[series.key] = y1(middleValue);
    });

    const rightWidth = 50;
    const rightHeight = default_height;

    const svgY_right = d3
      .select('#turnover_graph_right_vertical_svg')
      .html('')
      .append('svg')
      .attr('width', rightWidth)
      .attr('height', rightHeight);

    const rightLabels = ['Micro', 'Small', 'Medium'];

    const rightPadding = 4;
    svgY_right
      .selectAll('text.segment-label')
      .data(rightLabels)
      .enter()
      .append('text')
      .attr('class', 'segment-label')
      .attr('x', rightPadding)
      .attr('y', (d) => labelYMap[d]) // ✅ MATCH STACK POSITION
      .attr('text-anchor', 'start')
      .style('font-size', '12px')
      .style('font-family', 'Inter, sans-serif')
      .style('fill', (d) => color(d) as string)
      .text((d) => d);

    addLinesForYears();

    // ✅ Proper year boundary lines using time scale
    function addLinesForYears() {
      const xYearGrid = d3
        .axisBottom(x2)
        .ticks(d3.timeYear.every(1))
        .tickSize(-height) // grid up into the chart
        .tickFormat(() => ''); // no text here, just lines

      const gYear = svg
        .append('g')
        .attr('class', 'x_year_grid')
        .attr('transform', `translate(0,${height})`)
        .call(xYearGrid);

      // Style the main grid lines (inside chart)
      gYear
        .selectAll('.tick line')
        .style('stroke-dasharray', '3,3')
        .style('stroke', '#959595')
        .style('opacity', 0.8);

      // Remove the baseline
      gYear.select('.domain').remove();

      // 👉 Extend year line down till year value (same 35px used in xAxis_year.tickSize(35))
      const extraDown = 60; // adjust if you move the year text

      gYear
        .selectAll('.tick')
        .append('line')
        .attr('class', 'year-line-extension')
        .attr('x1', 0)
        .attr('y1', 0) // start at x-axis
        .attr('x2', 0)
        .attr('y2', extraDown) // extend downward
        .style('stroke', '#5B5B5B')
        .style('stroke-width', 1.6)
        .style('stroke-dasharray', '3,3')
        .style('opacity', 0.8);
    }
  }
}
