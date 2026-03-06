import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import * as d3 from 'd3';
import * as $ from 'jquery';
import * as _moment from 'moment';

// Types for clarity
interface SegmentDetail {
  category: string; // "07-2019"
  value: number;
  SortOrder: number;
}

interface Segment {
  HsnName: string; // "39"
  Details: SegmentDetail[];
}

interface RawPoint {
  category: string; // "07-2019"
  [hsn: string]: number | string; // dynamic HSNs
}

@Component({
  selector: 'app-sector-distribution',
  templateUrl: './sector-distribution.component.html',
  styleUrls: ['./sector-distribution.component.scss'],
})
export class SectorDistributionComponent implements OnInit {
  @Input() sectorDistributionData;
  @Output() graphWidth = new EventEmitter<number>();
  hsnRaw: Record<string, string> = {};

  constructor() { }

  ngOnInit(): void {
    console.log('sectorDistributionData', this.sectorDistributionData);
    if (this.sectorDistributionData?.length) {
      const raw = this.convertToRawData(this.sectorDistributionData);
      this.hsnRaw = this.filterHsnRaw(this.sectorDistributionData);
      this.generateSectorGraph(raw);
    }
  }
  private getHsnKeys(): string[] {
    return Object.keys(this.hsnRaw).sort((a, b) => Number(a) - Number(b));
  }

  filterHsnRaw(sectorDistributionData: any): Record<string, string> {
    let hsnRecord: Record<string, string> = {};
    sectorDistributionData.forEach((hsn) => {
      let Hsn = hsn.HsnName.split(" - ");;
      hsnRecord[Hsn[0]] = Hsn[1]?.trim();
    })
    return hsnRecord;
  }

  // Convert sector-wise API data to month-wise rows
  private convertToRawData(segments: Segment[]): RawPoint[] {
    const byCategory = new Map<string, RawPoint>();

    segments.forEach((segment) => {
      const hsnKey = segment.HsnName.split(' - ')[0].trim();

      segment.Details.forEach((detail) => {
        const category = detail.category;

        let row = byCategory.get(category);
        if (!row) {
          row = { category };
          byCategory.set(category, row);
        }

        row[hsnKey] = Number(detail.value ?? 0);
      });
    });

    const parseDate = d3.timeParse('%m-%Y');

    return Array.from(byCategory.values()).sort((a, b) => {
      const da = parseDate(a.category);
      const db = parseDate(b.category);
      if (!da || !db) return a.category.localeCompare(b.category);
      return da.getTime() - db.getTime();
    });
  }


  private generateSectorGraph(data: RawPoint[]): void {
    const that = this;
    const margin = { top: 10, right: 10, bottom: 60, left: 0 };
    const default_width = 25 * data.length; // 25px per real month
    const default_height = 445;
    const width = default_width - margin.left - margin.right;
    const height = default_height - margin.top - margin.bottom;
    const isMobile = window.innerWidth <= 767; // 👈 detect breakpoint once

    this.graphWidth.emit(default_width);

    const parseDate = d3.timeParse('%m-%Y');

    // ---- PREPARE DATA WITH dateObj AT MID-MONTH ----
    const dataForStack = data
      .map((d) => {
        const parsed = parseDate(d.category);
        if (!parsed) {
          console.warn('Invalid date in sector graph:', d.category);
          return null;
        }
        // put bar in the middle of the month (15th)
        const dateObj = new Date(parsed.getFullYear(), parsed.getMonth(), 15);
        return { ...d, dateObj };
      })
      .filter((d): d is RawPoint & { dateObj: Date } => d !== null);

    if (!dataForStack.length) {
      console.warn('No valid data points for sector graph.');
      return;
    }

    // ---- PAD FIRST & LAST MONTH TO FILL FULL WIDTH ----
    const firstReal = dataForStack[0];
    const lastReal = dataForStack[dataForStack.length - 1];

    const firstMonthStart = new Date(
      firstReal.dateObj.getFullYear(),
      firstReal.dateObj.getMonth(),
      1
    );
    const lastMonthEnd = new Date(
      lastReal.dateObj.getFullYear(),
      lastReal.dateObj.getMonth() + 1,
      0
    );

    const firstPadded = { ...firstReal, dateObj: firstMonthStart };
    const lastPadded = { ...lastReal, dateObj: lastMonthEnd };

    const paddedDataForStack = [firstPadded, ...dataForStack, lastPadded];

    // ---- STACK CONFIG ----
    const stackedKeys = this.getHsnKeys();


    // const color = d3
    //   .scaleOrdinal<string>()
    //   .domain(stackedKeys as string[])
    //   .range([
    //     '#4f81bd', // 39
    //     '#FF0000', // 52
    //     '#a684e0', // 71
    //     '#9fd3c7', // 72
    //     '#7cc576', // 73
    //     '#5a9bd4', // 84
    //     '#b4a7d6', // 85
    //     '#f9a65a', // 87
    //     '#7da7d9', // 99
    //   ]);

    const HSN_FIXED_COLORS: Record<string, string> = { //TODO: Update color code as per veena
      '39': '#63A2EC',
      '52': '#3593D3',
      '71': '#8DBBE6',
      '72': '#B6FFCA',
      '73': '#81B9FC',
      '84': '#95ACFF',
      '85': '#67E089',
      '87': '#96D9FF',
      '99': '#9981F6',
    };

    const hsnKeys = Object.keys(this.hsnRaw).sort((a, b) => Number(a) - Number(b));

    const rainbowScale = d3
      .scaleSequential()
      .domain([0, hsnKeys.length - 1])
      .interpolator(d3.interpolateRainbow);

    const hsnColor = (hsn: string): string => {
      // 1️⃣ Use fixed color if defined
      if (HSN_FIXED_COLORS[hsn]) {
        return HSN_FIXED_COLORS[hsn];
      }

      // 2️⃣ Otherwise assign from rainbow based on index
      const index = hsnKeys.indexOf(hsn);

      if (index >= 0) {
        return rainbowScale(index);
      }

      // 3️⃣ Absolute fallback (should not happen)
      return '#999';
    };

    // const color = d3
    //   .scaleOrdinal<string, string>()
    //   .domain(stackedKeys)
    //   .range(
    //     d3.quantize(d3.interpolateRainbow, stackedKeys.length)
    //   );


    // stack only REAL data for drawing bars
    const stackGen = d3.stack<any>().keys(stackedKeys as string[]);
    const stackedSeries = stackGen(dataForStack as any);

    // ---- SCALES (same style as activity graph) ----
    const xDomain = d3.extent(paddedDataForStack, (d) => d.dateObj) as [
      Date,
      Date
    ];

    const x1 = d3.scaleTime().domain(xDomain).range([0, width]); // for bars + month name
    const x2 = d3.scaleTime().domain(xDomain).range([0, width]); // for year axis / year grid
    const x3 = d3
      .scaleTime()
      .domain(xDomain)
      .range([10, width + 10]); // for month numbers row (vertical lines)

    // Y as percentage 0–60
    const y1 = d3.scaleLinear().domain([0, 60]).nice().range([height, 0]); // left
    const y2 = d3.scaleLinear().domain([0, 60]).range([height, 0]); // grid

    const y_left_coordinates = [0, 10, 20, 30, 40, 50, 60];

    const yAxis_left = d3
      .axisLeft(y1)
      .tickSize(0)
      .tickValues(y_left_coordinates);

    // const yAxis_graphLines = d3
    //   .axisLeft(y2)
    //   .tickSize([-width])
    //   .tickValues(y_left_coordinates);

    // ---- X AXES (month num, month name, year) ----
    // const xAxis_month_number = d3
    //   .axisBottom<Date>(x3)
    //   .tickFormat(d3.timeFormat('%m'))
    //   .tickSize(height)
    //   .ticks(data.length);

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

    // ===== LEFT SVG (Y axis % + label) =====
    const svgY_left = d3
      .select('#sector_graph_left_vertical_svg')
      .html('')
      .append('svg')
      .attr('height', 500)
      .attr('width', 50)
      .attr('transform', 'translate(0, 5)');

    svgY_left
      .append('g')
      .attr('class', 'y_left_points')
      .call(yAxis_left as any)
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
      .text('HSNTTM sales %');

    svgY_left.select('.domain').attr('stroke', 'none');

    // ===== MAIN SVG =====
    const svg = d3
      .select('#sector_graph_svg_inner')
      .html('')
      .append('svg')
      // .attr('width', default_width)
      .attr('width', default_width + 2 * margin.right)
      .attr('height', default_height)
      .attr('id', 'svg_sector_graph')
      .append('g')
      .attr('transform', `translate(${margin.left},${margin.top})`);

    // horizontal grid lines
    // svg
    //   .append('g')
    //   .attr('stroke-width', '0.1')
    //   .call(yAxis_graphLines as any);

    // ---- STACKED BARS (real months only) ----
    // bar width ≈ distance between two mid-months
    let barWidth = 15;
    if (dataForStack.length > 1) {
      const dx =
        x1(dataForStack[1].dateObj as Date) -
        x1(dataForStack[0].dateObj as Date);
      barWidth = dx * 0.8; // 80% of cell
    }

    const seriesGroup = svg
      .selectAll('g.layer')
      .data(stackedSeries)
      .enter()
      .append('g')
      .attr('class', 'layer')
      .attr('fill', (d: any) => hsnColor(d.key as string) as string);

    seriesGroup
      .selectAll('rect')
      .data((d: any) => d)
      .enter()
      .append('rect')
      .attr(
        'x',
        (d: any) => (x1(d.data.dateObj as Date) ?? 0) - barWidth / 2 + 1.25 // center bar at mid-month
      )
      .attr('width', barWidth)
      .attr('y', (d: any) => y1(d[1]))
      .attr('height', (d: any) => Math.max(0, y1(d[0]) - y1(d[1])));

    // ---- X AXES (bottom) ----
    // svg
    //   .append('g')
    //   .attr('transform', `translate(0, ${height})`)
    //   .attr('stroke-width', '0')
    //   .attr('class', 'x_month_num')
    //   .call(xAxis_month_number as any)
    //   .selectAll('.tick text')
    //   .attr('x', 3)
    //   .attr('y', '-1.3em')
    //   .style('text-anchor', 'middle');

    svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0.1')
      .attr('class', 'x_month_name')
      .call(xAxis_month_name as any)
      .selectAll('.tick text')
      .attr('x', -20)
      .attr('y', 8)
      .attr('transform', 'rotate(-90)')
      .attr('text-anchor', 'middle')
      .attr('class', (_d, i) => `x_month_name x_month_name_${i}`)
      .style('cursor', 'pointer');

    svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0.1')
      .attr('class', 'x_month_year')
      .call(xAxis_year as any)
      .selectAll('.tick text')
      .attr('x', '1.5em')
      .attr('y', '2.7em')
      .style('font-weight', '600')
      .style('fill', '#A3A3A3')
      .style('font-family', 'Inter')
      .style('font-size', '16px');

    // ===== RIGHT SVG (HSN labels aligned to last real bar) =====
    const lastIndexReal = dataForStack.length - 1;
    const labelYMap: Record<string, number> = {};

    stackedSeries.forEach((series: any) => {
      const lastPoint = series[lastIndexReal]; // [y0, y1] at last real month
      const middleValue = (lastPoint[0] + lastPoint[1]) / 2;
      labelYMap[series.key] = y1(middleValue);
    });

    addRightSvg(isMobile);

    // ===== RIGHT SVG (HSN legend like image) =====
    function addRightSvg(isMobile: boolean) {
      const svgWidth = isMobile ? 400 : 250; // wider on mobile
      const boxSize = isMobile ? 15 : 12; // bigger color box on mobile
      const fontSize = isMobile ? 12 : 10; // bigger font on mobile
      const rowGap = isMobile ? 52 : 52; // little more gap on mobile
      const svgHeight = isMobile ? 450 : default_height; // wider on mobile

      const svgY_right = d3
        .select('#sector_graph_right_vertical_svg')
        .html('')
        .append('svg')
        .attr('width', svgWidth)
        .attr('height', svgHeight);

      const labelGroup = svgY_right
        .append('g')
        .attr('transform', 'translate(5, 15)');

      // HSN Description map
      // const hsnLabelMap: Record<string, string> = {
      //   '39': 'Plastics',
      //   '52': 'Cotton',
      //   '71': 'Precious metals, metals clad with precious metal & articles thereof imitation jewellery',
      //   '72': 'Iron & steel',
      //   '73': 'Articles of iron or steel',
      //   '84': 'Machinery & mechanical appliances, boilers, nuclear reactors; parts thereof',
      //   '85': 'Electrical machinery & equipments; parts thereof',
      //   '87': 'Vehicles other than railway/tramway rolling-stock, parts & accessories thereof',
      //   '99': 'All Services',
      // };

      // 🔻 SORT legend by HSN numerically (DESC)
      const legendData = stackedKeys
        .filter((d) => that.hsnRaw[d])
        .sort((a, b) => Number(b) - Number(a));

      const legendItem = labelGroup
        .selectAll('g.legend-item')
        .data(legendData)
        .enter()
        .append('g')
        .attr('class', 'legend-item')
        .attr('transform', (_d, i) => `translate(0, ${i * rowGap})`);

      // ✅ Color square
      legendItem
        .append('rect')
        .attr('width', boxSize)
        .attr('height', boxSize)
        .attr('rx', 2)
        .attr('ry', 2)
        .attr('fill', (d) => hsnColor(d as string) as string)
        .attr('y', isMobile ? 0 : 3); // slightly align on mobile

      // ✅ Label text with multiline tspans
      legendItem
        .append('text')
        .attr('x', boxSize + 8)
        .attr('y', boxSize)
        .style('font-family', 'Inter, sans-serif')
        .style('font-size', `${fontSize}px`)
        .each(function (this: SVGTextElement, d: string) {
          const text = d3.select<SVGTextElement, string>(this);

          const baseY = boxSize;
          const hsnX = boxSize + 8; // start of "HSN"
          const descX = hsnX + 50; // start of description
          const maxWidth = isMobile ? 260 : 200; // wider on mobile
          const lineHeight = 1.2; // em

          // --- Line 1: "HSN" (normal) ---
          text
            .append('tspan')
            .attr('x', hsnX)
            .attr('y', baseY)
            .text('HSN')
            .style('font-weight', '400');

          // --- Line 1: code (bold) ---
          text.append('tspan').text(d).style('font-weight', '700');

          // --- Description: multiple wrapped lines under the code ---
          const description = that.hsnRaw[d] || '';
          if (!description) return;

          const words = description.split(/\s+/);
          let line: string[] = [];

          // First desc tspan
          let tspan = text
            .append('tspan')
            .attr('x', descX)
            .style('font-weight', '400')
            .style('fill', '#000');

          words.forEach((word) => {
            line.push(word);
            tspan.text(line.join(' '));

            const node = tspan.node();
            // Fallback width estimation for browsers where getComputedTextLength can be flaky
            const approxWidth =
              (node && node.getComputedTextLength()) ||
              tspan.text().length * (fontSize * 0.55);

            if (approxWidth > maxWidth) {
              // current word caused overflow -> move it to new line
              line.pop();
              tspan.text(line.join(' '));

              line = [word];
              tspan = text
                .append('tspan')
                .attr('x', descX)
                .attr('dy', `${lineHeight}em`)
                .style('font-weight', '400')
                .style('fill', '#000')
                .text(word);
            }
          });
        });
    }

    // ===== YEAR DIVIDER LINES (like activity graph) =====
    addYearLines();

    function addYearLines() {
      const xYearGrid = d3
        .axisBottom(x2)
        .ticks(d3.timeYear.every(1))
        .tickSize(-height)
        .tickFormat(() => '');

      const gYear = svg
        .append('g')
        .attr('class', 'x_year_grid')
        .attr('transform', `translate(0,${height})`)
        .call(xYearGrid as any);

      gYear
        .selectAll('.tick line')
        .style('stroke-dasharray', '3,3')
        .style('stroke', '#959595')
        .style('opacity', 0.8);

      gYear.select('.domain').remove();

      const extraDown = 60;

      gYear
        .selectAll('.tick')
        .append('line')
        .attr('class', 'year-line-extension')
        .attr('x1', 0)
        .attr('y1', 0)
        .attr('x2', 0)
        .attr('y2', extraDown)
        .style('stroke', '#5B5B5B')
        .style('stroke-width', 1.6)
        .style('stroke-dasharray', '3,3')
        .style('opacity', 0.8);
    }
  }
}
