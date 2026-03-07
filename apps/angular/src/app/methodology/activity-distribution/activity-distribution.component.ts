import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import * as d3 from 'd3';
import * as _moment from 'moment';

// Types for clarity
interface SegmentDetail {
  category: string; // "07-2019"
  value: number;
  SortOrder: number;
}

interface Segment {
  activityName: string; //"services","nonServices"
  Details: SegmentDetail[];
}

interface RawPoint {
  category: string; // "07-2019"
  services: number;
  nonServices: number;
}

@Component({
  selector: 'app-activity-distribution',
  templateUrl: './activity-distribution.component.html',
  styleUrls: ['./activity-distribution.component.scss'],
})
export class ActivityDistributionComponent implements OnInit {
  @Input() activityDistributionData;
  @Output() graphWidth = new EventEmitter<number>();

  constructor() { }

  ngOnInit(): void {
    // console.log('activityDistributionData', this.activityDistributionData);
    if (this.activityDistributionData?.length) {
      const raw = this.convertToRawData(this.activityDistributionData);
      this.generateActivityGraph(raw);
    }
  }

  // Convert activity-wise API data to month-wise rows
  private convertToRawData(segments: Segment[]): RawPoint[] {
    const byCategory = new Map<string, RawPoint>();

    const getKeyFromActivityName = (
      name: string
    ): 'services' | 'nonServices' => {
      const base = name.split('(')[0].trim();
      if (base === 'services' || base === 'nonServices') {
        return base;
      }
      // fallback – not expected with your data
      return base as any;
    };

    segments.forEach((segment) => {
      const key = getKeyFromActivityName(segment.activityName);

      segment.Details.forEach((detail) => {
        const category = _moment(detail.category, `MMM'YY`).format('MM-YYYY'); // "07-2019", ...

        let row = byCategory.get(category);
        if (!row) {
          row = {
            category,
            services: 0,
            nonServices: 0,
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

  private generateActivityGraph(data: RawPoint[]): void {
    // console.log('generateActivityGraph data:', data);
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

    // console.log('generateActivityGraph default_width:', default_width);
    // console.log('generateActivityGraph default_height:', default_height);
    // console.log('generateActivityGraph width:', width);
    // console.log('generateActivityGraph height:', height);

    this.graphWidth.emit(default_width);

    const parseDate = d3.timeParse('%m-%Y');

    // ---- NORMALISE DATA FOR STACKED AREA ----
    const stackedKeys: Array<keyof RawPoint> = ['services', 'nonServices']; // ignore Large

    const color = d3
      .scaleOrdinal<string>()
      .domain(stackedKeys as string[])
      .range(['#9981F6', '#96D9FF']); // services, nonServices

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
          services: Number(d.services ?? 0),
          nonServices: Number(d.nonServices ?? 0),
        };
      })
      .filter((d): d is RawPoint & { dateObj: Date } => d !== null);

    if (!dataForStack.length) {
      console.warn('No valid data points for activity graph.');
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
      .select('#activity_graph_left_vertical_svg')
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
      .select('#activity_graph_svg_inner')
      .html('') // clear previous
      .append('svg')
      .attr('width', default_width + 2 * margin.right + 15)
      // .attr('width', default_width - 10)
      .attr('id', 'svg_activity_graph')
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

    // -------- RIGHT SVG (services / nonServices labels, centered & colored) --------
    // ---- RIGHT LABEL POSITIONS BASED ON STACK DATA ----
    const lastIndex = paddedDataForStack.length - 2;

    // get middle of each stacked layer at latest month
    const labelYMap: Record<string, number> = {};

    stackedSeries.forEach((series: any) => {
      const lastPoint = series[lastIndex]; // [y0, y1] at real last month
      const middleValue = (lastPoint[0] + lastPoint[1]) / 2;
      labelYMap[series.key] = y1(middleValue);
    });

    const rightWidth = 80;
    const rightHeight = default_height;

    const svgY_right = d3
      .select('#activity_graph_right_vertical_svg')
      .html('')
      .append('svg')
      .attr('width', rightWidth)
      .attr('height', rightHeight);

    const rightLabels: Array<keyof RawPoint> = ['services', 'nonServices'];
    // 🔹 display mapping
    const rightLabelDisplay: Record<string, string> = {
      services: 'Service',
      nonServices: 'Non-Service',
    };
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
      .text((d) => rightLabelDisplay[d as string] ?? String(d));

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
