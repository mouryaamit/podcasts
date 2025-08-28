import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { DomSanitizer } from '@angular/platform-browser';
import * as d3 from 'd3';
import * as $ from 'jquery';
import * as _moment from 'moment';
@Component({
  selector: 'app-insights-chart',
  templateUrl: './insights-chart.component.html',
  styleUrls: ['./insights-chart.component.scss'],
})
export class InsightsChartComponent implements OnInit {
  @Input() sumpoornGraphData;
  @Output() graphWidth = new EventEmitter<number>();
  constructor(private sanitizer: DomSanitizer) {}

  ngOnInit(): void {
    this.generateInsightsGraph();
    this.generateMobileInsightsGraph();
  }
  getSafeUrl = (url: string): any => {
    let safeUrl: any = this.sanitizer.bypassSecurityTrustResourceUrl(url);
    return safeUrl?.changingThisBreaksApplicationSecurity
      ? safeUrl?.changingThisBreaksApplicationSecurity
      : safeUrl;
  };
  // Not using for now
  // getVideoId=(url:string) : any => {
  //   const regExp = /^.*(youtu.be\/|v\/|u\/\w\/|(?:live|embed)\/|watch\?v=|&v=)([^#&?]*).*/;
  //   const match = url?.match(regExp);
  //   const videoId = (match && match[2].length === 11) ? match[2] : null;
  //   return videoId;
  // }
  openInfoIcon(graph_id, evt) {
    {
      function formatYaxisForText(d: any, fromWhere: any) {
        if (d == 0.25) {
          return 'Substantial';
          // if(fromWhere == "info") {
          //     return "Substantial";
          // } else {
          //     return "Substantial Contraction";
          // }
        } else if (d == 0.45) {
          return 'Significant';
        } else if (d == 0.5) {
          return 'Moderate';
        } else if (d == 0.52) {
          return 'Mild';
        } else if (d == 0.54) {
          return 'Marginal';
        } else if (d == 0.6) {
          return 'Mild';
        } else if (d == 0.65) {
          return 'Moderate';
        } else if (d == 0.75) {
          return 'Significant';
        } else if (d == 1.0) {
          return 'Substantial';
        }
        return '';
      }
      const y_right_coordinates = [
        '0.00',
        '0.25',
        '0.45',
        '0.50',
        '0.52',
        '0.54',
        '0.60',
        '0.65',
        '0.75',
        '1.00',
      ]; //'0.00',
      // Position:
      if (graph_id == '#mobile_insights_graph_svg') {
        const absX = evt.clientX + window.scrollX - 190;
        const absY = evt.clientY + window.scrollY + 20;
        $('#contextMenuMobile').css('top', absY + 'px');
        $('#contextMenuMobile').css('left', absX + 'px');
        $('#contextMenuMobile').css('display', 'block');
      } else {
        const absX = evt.clientX + window.scrollX - 180;
        const absY = evt.clientY + window.scrollY - 180;
        $('#contextMenuMobile').css('top', absY + 'px');
        $('#contextMenuMobile').css('left', absX + 'px');
        $('#contextMenuMobile').css('display', 'block');
      }

      let indexData: any[] = [];
      let startYaxisPoint = '';
      y_right_coordinates.forEach(function (index) {
        if (startYaxisPoint == '' || startYaxisPoint.length == 0) {
          startYaxisPoint = index;
        } else {
          let value = formatYaxisForText(index, 'info');
          let da: any = new Object();
          da.index =
            (Number(startYaxisPoint) == 0.0
              ? startYaxisPoint
              : Number(startYaxisPoint) + 0.01) +
            '-' +
            index;
          da.value = value;
          indexData.push(da);
          startYaxisPoint = index;
        }
      });
      let infodata = '';
      for (let i = indexData.length - 1; i >= 0; i--) {
        if (i <= 3) {
          if (i == 3)
            infodata +=
              '<div style="padding-bottom: 10px;padding-top: 10px;color:#960000"><b>&#8595; Contraction</b></div><div style="color:#960000;padding-left: 13px;padding-bottom: 3px;">' +
              indexData[i].value +
              ' <span style="float:right;color:#960000;"> <span>&#8594;</span> ' +
              indexData[i].index +
              '</span></div>';
          else
            infodata +=
              '<div style="color:#960000;padding-left: 13px;padding-bottom: 3px;">' +
              indexData[i].value +
              ' <span style="float:right;color:#960000"><span>&#8594;</span>  ' +
              indexData[i].index +
              '</span></div>';
        } else {
          if (i == indexData.length - 1)
            infodata +=
              '<div style="padding-bottom: 10px;color:#1E7400"><b>&#8593; Expansion</b></div><div style="color:#1E7400;padding-left: 13px;padding-bottom: 3px;">' +
              indexData[i].value +
              ' <span style="float:right;color:#1E7400"><span>&#8594;</span>  ' +
              indexData[i].index +
              '</span></div>';
          else
            infodata +=
              '<div style="color:#1E7400;padding-left: 13px;padding-bottom: 3px;">' +
              indexData[i].value +
              ' <span style="float:right;color:#1E7400"><span>&#8594;</span>  ' +
              indexData[i].index +
              '</span></div>';
        }
      }
      $('#mobile_insights_graph_y_axis_content_info').html(infodata);
    }
  }

  generateMobileInsightsGraph() {
    var outsideThis = this;
    const mydata = this.sumpoornGraphData.IndexGeneration;
    const indexData = this.sumpoornGraphData.Commentary;

    const y_left_coordinates = [
      '0.00',
      '0.10',
      '0.20',
      '0.30',
      '0.40',
      '0.50',
      '0.60',
      '0.70',
      '0.80',
      '0.90',
      '1.00',
    ];
    const y_right_coordinates = [
      '0.00',
      '0.25',
      '0.45',
      '0.50',
      '0.52',
      '0.54',
      '0.60',
      '0.65',
      '0.75',
      '1.00',
    ]; //'0.00',
    const y_com_coordinates = ['0.0', '0.2', '0.4', '0.6', '0.8', '1.0'];

    let tooltip, radiation, selectedPoint;

    // set the dimensions and margins of the graph
    const margin = {
        top: 20,
        right: 25,
        bottom: 100,
        left: 0,
      },
      default_width = 25 * mydata.length,
      default_height = 485, //500
      width = default_width - margin.left - margin.right,
      height = default_height - margin.top - margin.bottom,
      parseDate = d3.timeParse('%m-%Y');
    this.graphWidth.emit(default_width);

    // Coordinates on axes
    // Add X axis 1 --> it is a month format
    const x1 = d3
      .scaleTime()
      .domain(
        <[Date, Date]>d3.extent(mydata, function (d: any) {
          return parseDate(d.category);
        })
      )
      .range([0, width]);

    // Add X axis 2 --> it is a year format
    const x2 = d3
      .scaleTime()
      .domain(
        <[Date, Date]>d3.extent(mydata, function (d: any) {
          return parseDate(d.category);
        })
      )
      .range([0, width]);

    // Add X axis 3 --> it is a month number format
    const x3 = d3
      .scaleTime()
      .domain(
        <[Date, Date]>d3.extent(mydata, function (d: any) {
          return parseDate(d.category);
        })
      )
      .range([10, width + 10]);

    // Add Y axis - left side
    const y1 = d3.scaleLinear().domain([0, 1.0]).nice().range([height, 0]);

    // Add Y axis - right side
    const y2 = d3.scaleLinear().domain([0, 1.0]).nice().range([height, 0]);

    // Customize text values on axes
    const xAxis_month_number = d3
      .axisBottom<Date>(x3)
      .tickFormat(d3.timeFormat('%m'))
      .tickSize(height)
      .ticks(mydata.length);

    const xAxis_month_name = d3
      .axisBottom<Date>(x1)
      .tickSize(-height)
      .ticks(mydata.length)
      .tickFormat(d3.timeFormat('%b'));

    const xAxis_year = d3
      .axisBottom(x2)
      .tickSize(35) // sets line for month
      .ticks(mydata.length)
      .tickFormat(function (d, i) {
        if (i == 0) {
          const year_fmt = d3.timeFormat('%Y')(d);
          return year_fmt;
        } else {
          const monNum_fmt = d3.timeFormat('%m')(d);
          const year_fmt = d3.timeFormat('%Y')(d);
          return monNum_fmt == '01' ? year_fmt : '';
        }
      });

    const yAxis_left = d3
      .axisLeft(y1)
      .tickSize(0)
      .tickValues(y_left_coordinates);

    const yAxis_right = d3
      .axisRight(y2)
      .tickSize([-width - 25]) // sets last xaxis index align
      .tickValues(y_right_coordinates);

    const svgY = d3
      .select('#mobile_insights_graph_right_vertical_svg')
      .append('svg')
      .attr('height', 500)
      .attr('width', 40)
      .attr('transform', 'translate(0, 13)');

    svgY
      .append('g')
      .attr('class', 'y axis')
      .call(yAxis_left)
      .attr('dx', '-0.3em')
      .attr('transform', 'translate(24, 6)')
      .style('color', '#B2B2B2')
      .style('text-anchor', 'middle');

    svgY.select('.domain').attr('stroke', 'none');

    const y_axis_rect_9 = svgY.append('g');
    y_axis_rect_9
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 7 + ')')
      .attr('width', 5)
      .attr('height', 89.5)
      .attr('fill', '#C3E8D2')
      .attr('opacity', '1')
      .attr('stroke', '#C3E8D2')
      .attr('stroke-width', '1');

    const y_axis_rect_8 = svgY.append('g');
    y_axis_rect_8
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 99 + ')')
      .attr('width', 5)
      .attr('height', 34)
      .attr('fill', '#C3E8D2')
      .attr('opacity', '1')
      .attr('stroke', '#C3E8D2')
      .attr('stroke-width', '1');

    const y_axis_rect_7 = svgY.append('g');
    y_axis_rect_7
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 135.5 + ')')
      .attr('width', 5)
      .attr('height', 16)
      .attr('fill', '#C3E8D2')
      .attr('opacity', '1')
      .attr('stroke', '#C3E8D2')
      .attr('stroke-width', '1');

    const y_axis_rect_6 = svgY.append('g');
    y_axis_rect_6
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 154 + ')')
      .attr('width', 5)
      .attr('height', 19)
      .attr('fill', '#C3E8D2')
      .attr('opacity', '1')
      .attr('stroke', '#C3E8D2')
      .attr('stroke-width', '1');

    const y_axis_rect_5 = svgY.append('g');
    y_axis_rect_5
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 175 + ')')
      .attr('width', 5)
      .attr('height', 6)
      .attr('fill', '#C3E8D2')
      .attr('opacity', '1')
      .attr('stroke', '#C3E8D2')
      .attr('stroke-width', '1');

    const y_axis_rect_4 = svgY.append('g');
    y_axis_rect_4
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 183 + ')')
      .attr('width', 5)
      .attr('height', 5)
      .attr('fill', '#FFC7C7')
      .attr('opacity', '1')
      .attr('stroke', '#FFC7C7')
      .attr('stroke-width', '1');

    const y_axis_rect_3 = svgY.append('g');
    y_axis_rect_3
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 190 + ')')
      .attr('width', 5)
      .attr('height', 15)
      .attr('fill', '#FFC7C7')
      .attr('opacity', '1')
      .attr('stroke', '#FFC7C7')
      .attr('stroke-width', '1');

    const y_axis_rect_2 = svgY.append('g');
    y_axis_rect_2
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 208 + ')')
      .attr('width', 5)
      .attr('height', 71.5)
      .attr('fill', '#FFC7C7')
      .attr('opacity', '1')
      .attr('stroke', '#FFC7C7')
      .attr('stroke-width', '1');

    const y_axis_rect_1 = svgY.append('g');
    y_axis_rect_1
      .append('rect')
      .attr('transform', 'translate(' + 0 + ',' + 282 + ')')
      .attr('width', 5)
      .attr('height', 90)
      .attr('fill', '#FFC7C7')
      .attr('opacity', '1')
      .attr('stroke', '#FFC7C7')
      .attr('stroke-width', '1');

    // Creating svg with dimensions to chart
    const svg = d3
      .select('#mobile_insights_graph_svg')
      .append('svg') //append svg element inside #chart
      .attr('width', default_width + margin.left + 20) //set width (remove 20 later)
      .attr('height', default_height) //set height
      .append('g')
      .attr('transform', `translate(${margin.left},${margin.top})`);

    // Adding axes to svg
    const month_number = svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0')
      .attr('class', 'x_month_num')
      .call(xAxis_month_number)
      .selectAll('.tick text')
      .attr('x', '0.1em')
      .attr('y', '-1.3em');

    const month_name = svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0.1')
      .attr('class', 'x_month_name')
      .call(xAxis_month_name)
      .selectAll('.tick text')
      .attr('x', '-1.8em')
      .attr('y', '0.5em')
      .attr('transform', function (d) {
        return 'rotate(-90)';
      })
      .attr('text-anchor', 'middle')
      .attr('class', function (d, i) {
        return `x_month_name x_month_name_${i}`;
      })
      .style('cursor', 'pointer');

    const month_year = svg
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

    const y_text = svg
      .append('g')
      .attr('stroke-width', '0.1')
      .attr('transform', `translate(${width + 25},0)`) // sets last xaxis index align
      .attr('class', 'y_axis_text')
      .call(yAxis_right)
      .selectAll('.tick text'); // select all the y tick texts

    function formatYaxisForXvalue(d: any, i: any) {
      if (
        d == 0.25 ||
        d == 1.0 ||
        d == 0.45 ||
        d == 0.5 ||
        d == 0.6 ||
        d == 0.65 ||
        d == 0.75
      ) {
        return '1em';
      } else if (d == 0.52 || d == 0.54) {
        return '6.69em';
      }
      return '';
    }

    function addLinesForGraph() {
      let years: any = [];
      mydata.forEach((element) => {
        let year = element.category.split('-')[1];
        const i = years.findIndex((e) => e['year'] === year);
        if (i == -1) years.push({ year: year, count: 1 });
        else years[i]['count']++;
      });
      const firstLine = svg.append('g'); // first line
      firstLine
        .append('line')
        .attr('x1', 0.2)
        .attr('y1', 0)
        .attr('x2', 0.2)
        .attr('y2', height + 60)
        .attr('stroke', '#E1E1E1')
        .attr('stroke-width', '1');
      years.forEach((year) => {
        let yearSvg = svg.append('g');
        if (years.indexOf(year) == 0) {
          // 2019
          yearSvg
            .append('line')
            .attr('x1', 25 * year.count)
            .attr('y1', 0)
            .attr('x2', 25 * year.count)
            .attr('y2', height + 60)
            .attr('stroke', '#959595')
            .attr('stroke-width', '1')
            .attr('stroke-dasharray', '2');
        } else if (years.indexOf(year) == years.length - 1) {
          //last line
          yearSvg
            .append('line')
            .attr(
              'x1',
              25 * year.count +
                (300 * years.indexOf(year) - 25 * (12 - years[0].count))
            )
            .attr('y1', 0)
            .attr(
              'x2',
              25 * year.count +
                (300 * years.indexOf(year) - 25 * (12 - years[0].count))
            )
            .attr('y2', height + 35) //60
            .attr('stroke', '#E1E1E1')
            .attr('stroke-width', '1');
        } else {
          // all year line except to 2019
          yearSvg
            .append('line')
            .attr(
              'x1',
              25 * year.count +
                (300 * years.indexOf(year) - 25 * (12 - years[0].count))
            )
            .attr('y1', 0)
            .attr(
              'x2',
              25 * year.count +
                (300 * years.indexOf(year) - 25 * (12 - years[0].count))
            )
            .attr('y2', height + 60)
            .attr('stroke', '#959595')
            .attr('stroke-width', '1')
            .attr('stroke-dasharray', '2');
        }
      });
      //top line of graph
      const top_line = svg.append('g');
      top_line
        .append('line')
        .attr('x1', width + 25)
        .attr('x2', 0)
        .attr('y1', 0)
        .attr('y2', 0)
        .style('stroke', '#E1E1E1')
        .attr('stroke-width', '0.7');
      // bottom line of graph
      // const bottom_line = svg.append("g");
      // bottom_line.append("line")
      //     .attr("x1", width + 200)
      //     .attr("x2", 0)
      //     .attr("y1", height + 62)
      //     .attr("y2", height + 62)
      //     .style("stroke", "#E1E1E1")
      //     .attr("stroke-width", "0.7");
    }

    function addFlags() {
      let flag1_values = getPointsOnCurve('03-2020', 0.37);
      let flag2_values = getPointsOnCurve('02-2021', 0.63);
      let x_1 = flag1_values.x;
      let y_1 = flag1_values.y;
      let x_2 = flag2_values.x;
      let y_2 = flag2_values.y;
      const flag1_focus = svg
        .append('g')
        .attr('class', 'flag1_focus')
        .attr('transform', 'translate(' + (x_1 + 10) + ',' + y_1 + ')');

      flag1_focus.append('circle').attr('r', 4.5);
      const flag2_focus = svg
        .append('g')
        .attr('class', 'flag2_focus')
        .attr('transform', 'translate(' + (x_2 + 10) + ',' + y_2 + ')');

      flag2_focus.append('circle').attr('r', 4.5);

      const covid_2020 = svg.append('g');
      covid_2020
        .append('rect')
        .attr('transform', 'translate(' + (x_1 - 65) + ',' + (y_1 + 55) + ')')
        .attr('width', 80)
        .attr('height', 50)
        .attr('fill', 'white')
        .attr('opacity', '0.7')
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');
      covid_2020
        .append('text')
        .html('COVID-19 Lockdown')
        .attr('x', x_1 - 25)
        .attr('y', y_1 + 55)
        .attr('width', 25)
        .attr('class', 'flags_text_mobile')
        .attr('text-anchor', 'middle')
        .style('font-size', '14px')
        .style('fill', '#767676')
        .style('font-weight', 500);
      covid_2020
        .append('line')
        .attr('x1', x_1 + 9)
        .attr('y1', y_1 - 10)
        .attr('x2', x_1 + 9)
        .attr('y2', y_1 + 55)
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');
      const covid_2021 = svg.append('g');
      covid_2021
        .append('rect')
        .attr('transform', 'translate(' + (x_2 - 75) + ',' + (y_2 - 105) + ')')
        .attr('width', 90)
        .attr('height', 50)
        .attr('fill', 'white')
        .attr('opacity', '0.7')
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');
      covid_2021
        .append('text')
        .html('COVID-19 Recovery')
        .attr('x', x_2 - 30)
        .attr('y', y_2 - 105)
        .attr('width', 25)
        .attr('class', 'flags_text_mobile')
        .attr('text-anchor', 'middle')
        .style('font-size', '14px')
        .style('fill', '#767676')
        .style('font-weight', 500);
      covid_2021
        .append('line')
        .attr('x1', x_2 + 10)
        .attr('y1', y_2)
        .attr('x2', x_2 + 10)
        .attr('y2', y_2 - 55)
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');

      d3.selectAll('.flags_text_mobile').call(wrap);
    }

    function getPointsOnCurve(category: any, value: any) {
      let co_ord = { x: 0, y: 0 };
      let x_value = x1(<Date>parseDate(category));
      let y_value = y1(value);
      co_ord.x = x_value;
      co_ord.y = y_value;
      return co_ord;
    }

    const wrap = (textData) => {
      const wrapTexts = textData._groups[0];
      wrapTexts.forEach((ele) => {
        var selectedEle = d3.select(ele);
        var words = selectedEle.text().split(/\s+/).reverse();
        var lineHeight = 20;
        var y = parseFloat(selectedEle.attr('y'));
        var x = selectedEle.attr('x');
        var anchor = selectedEle.attr('text-anchor');
        var tspanTag = '<tspan></tspan>';

        var tspan = selectedEle
          .text(null)
          .append('tspan')
          .attr('x', x)
          .attr('y', y)
          .attr('text-anchor', anchor);
        var lineNumber = 0;
        var line: any = [];
        var word = words.pop();

        while (word) {
          line.push(word);
          lineNumber += 1;
          tspan = selectedEle
            .append('tspan')
            .attr('x', x)
            .attr('y', y + lineNumber * lineHeight)
            .attr('anchor', anchor)
            .text(word);
          word = words.pop();
        }
      });
    };

    const addSelectionYaxis = () => {
      y_text.selectAll('.tick')._parents.forEach((d_child, i) => {
        addDefaultSelYaxis(d_child.__data__);
        d3.select(d_child).on('mouseover', (event, d) => {
          if (d != 0.52 && d != 0.54) {
            d3.selectAll('.y-axis-titles').classed('select', false);
            yAxisMouseOver(event, d);
          }
        });
      });
    };

    function removeXaxisTitleSelection() {
      d3.selectAll('.x_month_name').classed('select_g', false);
      d3.selectAll('.x_month_name').classed('select_r', false);
    }
    function removeRectsSelection() {
      d3.selectAll('#rect_yaxis').remove();
      d3.selectAll('#rect_xaxis_sel').remove();
      d3.selectAll('.y-axis-titles').classed('select', false);
    }

    d3.select('#mobile_insights_graph_svg').on('mouseleave', (event) => {
      removeRectsSelection();
      removeXaxisTitleSelection();
    });

    function yAxisMouseOver(event: any, d: any) {
      let handyValues = formatHandYvaluesYaxis(d, true);
      d3.selectAll('#rect_yaxis').remove();
      svg
        .append('rect')
        .attr('x', 0)
        .attr('y', handyValues.y)
        .attr('width', width + 119)
        .attr('height', handyValues.h)
        .attr('id', 'rect_yaxis')
        .attr('class', function () {
          // color change for different indices
          if (d == 1.0 || d == 0.75 || d == 0.65 || d == 0.6) {
            return 'rect_yaxis_1';
          } else {
            return 'rect_yaxis_2';
          }
        })
        .attr('stroke', 'black')
        .style('stroke-dasharray', '3, 1')
        .style('opacity', 0.3)
        .transition()
        .duration(1000)
        .attr('cy', function (d: any) {
          return d;
        });
      checkSpecificPointsOnXaxis(d);
    }

    function checkSpecificPointsOnXaxis(d) {
      let hoverIndex = y_right_coordinates.indexOf(d);
      let beforeIndexValue = y_right_coordinates[hoverIndex - 1];
      let dataValues = mydata.filter((e) => {
        return e.value >= beforeIndexValue && e.value <= d;
      });
      d3.selectAll('#rect_xaxis_sel').remove();
      // yaxis selection
      removeXaxisTitleSelection();
      dataValues.forEach((eachValue: any) => {
        highlightXaxis(eachValue, d);
      });
    }

    function highlightXaxis(dataValue: any, d: any) {
      const tooltip_pointer = getPointsOnCurve(
        dataValue.category,
        dataValue.value
      );
      svg
        .append('rect')
        .attr('x', tooltip_pointer.x)
        .attr('y', 0)
        .attr('width', 22)
        .attr('height', height + 40)
        .attr('id', 'rect_xaxis_sel')
        .attr('opacity', '0.7')
        .transition()
        .duration(1000)
        .attr('cx', function (d: any) {
          return d;
        });
      const indexOfObj = mydata.findIndex(
        (x) => x.category == dataValue.category
      );
      if (d == 1.0 || d == 0.75 || d == 0.65 || d == 0.6) {
        d3.select(`.x_month_name_${indexOfObj}`).classed('select_g', true);
      } else {
        d3.select(`.x_month_name_${indexOfObj}`).classed('select_r', true);
      }
    }

    function addDefaultSelYaxis(d) {
      let handyValues = formatHandYvaluesYaxis(d, false);
      svg
        .append('rect')
        .attr('x', 0)
        .attr('y', handyValues.y)
        .attr('width', width + 25)
        .attr('height', handyValues.h)
        .attr('id', 'rect_def_yaxis')
        .attr('opacity', '0.5')
        .attr('stroke', '#E2E2E280')
        .transition()
        .duration(1000)
        .attr('cy', function (d: any) {
          return d;
        });
    }
    function formatHandYvaluesYaxis(d, isMouseover) {
      if (isMouseover) {
        let hAndyValues = { y: 0, h: 0 };
        if (d == 0.25) {
          hAndyValues.y = 282;
          hAndyValues.h = 93;
        } else if (d == 0.45) {
          hAndyValues.y = 207;
          hAndyValues.h = 75;
        } else if (d == 0.5) {
          hAndyValues.y = 188;
          hAndyValues.h = 20;
        } else if (d == 0.6) {
          hAndyValues.y = 151;
          hAndyValues.h = 23;
        } else if (d == 0.65) {
          hAndyValues.y = 132;
          hAndyValues.h = 18;
        } else if (d == 0.75) {
          hAndyValues.y = 94;
          hAndyValues.h = 37;
        } else if (d == 1.0) {
          hAndyValues.y = 0;
          hAndyValues.h = 94;
        }
        return hAndyValues;
      } else {
        let hAndyValues = { y: 0, h: 0 };
        if (d == 0.45) {
          hAndyValues.y = 201;
          hAndyValues.h = 73;
        } else if (d == 0.52) {
          hAndyValues.y = 175.5;
          hAndyValues.h = 7;
        } else if (d == 0.6) {
          hAndyValues.y = 146.5;
          hAndyValues.h = 21.5;
        } else if (d == 0.75) {
          hAndyValues.y = 91.5;
          hAndyValues.h = 36;
        }
        return hAndyValues;
      }
    }

    addSelectionYaxis();

    function selectionOfXaxis() {
      month_name.selectAll('.tick')._parents.forEach(function (d_child, i) {
        let totalIndex = month_name.selectAll('.tick')._parents.length - 1;
        if (i == totalIndex) {
          // xaxis selection on load
          removeXaxisTitleSelection();
          d3.selectAll('.x_month_name').classed('active', false);
          svg
            .append('rect')
            .attr('x', width)
            .attr('y', 0)
            .attr('width', 24)
            .attr('height', height + 40)
            .attr('id', 'rect_xaxis')
            .attr('stroke', 'black')
            .style('stroke-dasharray', '3, 1')
            .style('opacity', '0.5')
            .transition()
            .duration(1000)
            .attr('cx', function (d) {
              return d;
            });

          const tooltip_pointer = getPointsOnCurve(
            mydata[i].category,
            mydata[i].value
          );
          // To apply circles animation on last index
          addTooltip(tooltip_pointer, mydata[i], true);
          d3.select(`.x_month_name_${i}`).classed('active', true);
          // de highlight yaxis text
          d3.selectAll('.y-axis-titles').classed('active', false);
          d3.selectAll('.y-axis-titles').classed('select', false);
          checkSpecificPointOnYaxis(i);
          addCommentary(mydata[i]);
        }
        d3.select(d_child).on('click', function (event, d) {
          // xaxis selection on click
          removeXaxisTitleSelection();
          d3.selectAll('.x_month_name').classed('active', false);
          const formattedDate = d3.timeFormat('%m-%Y')(d);
          renderPointerOnLine(formattedDate);
        });
      });
    }

    function renderPointerOnLine(date) {
      d3.selectAll('#rect_xaxis').remove();
      d3.selectAll('#rect_yaxis').remove(); // to remove highlighting of yaxis data
      d3.selectAll('#rect_xaxis_sel').remove(); // to remove highlighting of already selected xaxis data

      const dataValue = mydata.filter((x) => x.category == date)[0];
      const tooltip_pointer = getPointsOnCurve(
        dataValue.category,
        dataValue.value
      );
      const lastIndex = month_name.selectAll('.tick')._parents.length - 1;
      const indexOfPoint = mydata.findIndex(
        (x) => x.category == dataValue.category
      );
      if (lastIndex == indexOfPoint) {
        // To apply circles animation on last index
        addTooltip(tooltip_pointer, dataValue, true);
      } else {
        // Not to apply circles animation on other points on curve
        addTooltip(tooltip_pointer, dataValue, false);
      }
      svg
        .append('rect')
        .attr('x', tooltip_pointer.x)
        .attr('y', 0)
        .attr('width', 25)
        .attr('height', height + 40)
        .attr('id', 'rect_xaxis')
        .attr('stroke', 'black')
        .style('stroke-dasharray', '3, 1')
        .style('opacity', '0.5')
        .transition()
        .duration(1000)
        .attr('cx', function (d) {
          return d;
        });
      const indexOfObj = mydata.findIndex(
        (x) => x.category == dataValue.category
      );
      d3.select(`.x_month_name_${indexOfObj}`).classed('active', true); // xaxis selection
      d3.selectAll('.y-axis-titles').classed('select', false);
      d3.selectAll('.y-axis-titles').classed('active', false);
      checkSpecificPointOnYaxis(indexOfObj);
      addCommentary(dataValue);
    }

    function initializeTooltip() {
      tooltip = d3
        .select('#mobile_insights_graph_svg')
        .append('div')
        .attr('class', 'tooltip-area')
        .style('opacity', 0);

      selectedPoint = d3
        .select('#mobile_insights_graph_svg')
        .append('div')
        .attr('class', 'focus_circle')
        .style('opacity', 0);

      radiation = d3
        .select('#mobile_insights_graph_svg')
        .append('div')
        .attr('class', 'animating_circle')
        .style('opacity', 0);
    }

    initializeTooltip();

    function addTooltip(mousePointer, dataValue, isLatestIdx) {
      tooltip.transition().duration(100).style('opacity', 0.9);
      tooltip
        .html(Number(dataValue.value).toFixed(2))
        .style('left', mousePointer.x - 10 + 'px')
        .style('top', mousePointer.y - 35 + 'px');
      radiation
        .transition()
        .duration(100)
        .attr('cx', function (d) {
          return d;
        })
        .style('opacity', 0.9);
      if (isLatestIdx) {
        radiation
          .html(
            '<span id="radiation" class="animating_circle">' +
              '<span class="circle_waves circle_one"></span> ' +
              '<span class="circle_waves circle_two"></span> ' +
              '<span class="circle_waves circle_three"></span>' +
              '</span>'
          )
          .style('left', Math.ceil(mousePointer.x + 15) + 'px')
          .style('top', Math.ceil(mousePointer.y + 20) + 'px');
      } else {
        radiation
          .html(
            '<span id="radiation" class="animating_circle">' +
              '<span class="circle_waves circle_three"></span>' +
              '</span>'
          )
          .style('left', Math.ceil(mousePointer.x + 15) + 'px')
          .style('top', Math.ceil(mousePointer.y + 20) + 'px');
      }
    }

    function checkSpecificPointOnYaxis(i) {
      const yOfx = mydata[i].value;
      const closestIndex = findClosestYvalue(yOfx);
      if (closestIndex !== -1) {
        d3.select(`.y-axis-title_${closestIndex}`).classed('active', true);
      }
    }

    function findClosestYvalue(goal) {
      if (goal <= 0.25) {
        return 1;
      } else if (goal > 0.25 && goal <= 0.45) {
        return 2;
      } else if (goal > 0.45 && goal <= 0.5) {
        return 3;
      } else if (goal > 0.5 && goal <= 0.52) {
        return 4;
      } else if (goal > 0.52 && goal <= 0.54) {
        return 5;
      } else if (goal > 0.54 && goal <= 0.6) {
        return 6;
      } else if (goal > 0.6 && goal <= 0.65) {
        return 7;
      } else if (goal > 0.65 && goal <= 0.75) {
        return 8;
      } else if (goal > 0.75 && goal <= 1.0) {
        return 9;
      }
      return -1;
    }

    const addCommentary = (dataValue) => {
      let indexValue = dataValue.value;
      let expertData = indexData.ExpertCommentary.filter((e) => {
        return e.Month == dataValue.category;
      });
      let monthlyData = indexData.MonthlyCommentary.filter((m) => {
        return m.Month == dataValue.category;
      });
      let graphData = indexData.MonthlyCommentaryGraph.filter((m) => {
        return m.Month == dataValue.category;
      });
      // let videoData = indexData.MonthlyVideoCommentary.filter((m) => {
      //   return m.Month == dataValue.category;
      // });

      if (
        expertData.length > 0 &&
        monthlyData.length > 0 &&
        graphData.length > 0
      ) {
        let monthlyC = monthlyData[0];
        let expertC = expertData[0];
        let graphC = graphData[0].monthList;

        let current_month = d3.timeFormat('%b')(<Date>parseDate(expertC.Month));
        let current_year = d3.timeFormat('%Y')(<Date>parseDate(expertC.Month));
        // Left data
        d3.select('#mc_title_mobile').html(`Jocata Sumpoorn`);
        d3.select('#mc_rating_mobile').html(`${indexValue}`);

        const indexOfPoint = mydata.findIndex(
          (x) => x.category == dataValue.category
        );
        if (mydata.length - 1 == indexOfPoint) {
          $('.isLatestIdx').css('display', 'inherit');
        } else {
          $('.isLatestIdx').css('display', 'none');
        }

        d3.select('#mc_body_mobile').html(`${monthlyC.comment}`);
        // if (videoData && videoData.length > 0 && videoData[0]?.videoUrl != '') {
        //   d3.selectAll('.mc_ytvideo_url_mobile').remove();
        //   d3.select('#monthly_commentary_chart_mobile').remove();
        //   let videoUrl = videoData[0]?.videoUrl;
        //   let safeSrcUrl = this.getSafeUrl(videoUrl);
        //   // let safeSrcUrl: any = this.sanitizer.bypassSecurityTrustResourceUrl(videoUrl);
        //   d3
        //     .select('.mc_ytvideo_mobile')
        //     .append('div')
        //     .attr('class', 'mc_ytvideo_url_mobile')
        //     .html(`<iframe src="${safeSrcUrl}" class="w-100 mb-4" height="200" frameborder="0" webkitallowfullscreen mozallowfullscreen
        // allowfullscreen></iframe>`);
        // }

        d3.select('.ec_month_title_download').html(`${expertC.Month}`);
        d3.select('.audio_title_mobile').html(
          `${_moment(current_month, 'MMM').format(
            'MMMM'
          )} ${current_year} Audio Commentary`
        );
        if (expertC.AuthorDetails && expertC.AuthorDetails.length > 0) {
          d3.selectAll('.expert_comm_mem_mobile').remove();
          d3.select('#commentary_border_mobile').remove();
          d3.select('#commentary_mem_details_mobile')
            .style('margin-bottom', '16px')
            .append('div')
            .attr('id', 'commentary_border_mobile')
            .attr('class', 'member_border');
          expertC.AuthorDetails.forEach((expertAD, i) => {
            if (
              expertAD.ExpertImageDetails &&
              expertAD.ExpertName &&
              expertAD.ExpertDetails
            ) {
              // commentary member details
              d3.select('#commentary_border_mobile')
                .append('div')
                .attr(
                  'class',
                  'expert_comm_mem_mobile expert_comm_border_right'
                )
                .attr('id', `expert_comm_mem_mobile_${i}`);
              d3.select(`#expert_comm_mem_mobile_${i}`)
                .html(`<img src="assets/images/${
                expertAD.ExpertImageDetails
              }" alt="expert image" class="img-fluid" />
                                <div class="member_details">
                                <p class="member_name mb-0 ec_author">${
                                  expertAD.ExpertName
                                }</p>
                                <p class="member_title mb-0 ec_author_designation">${expertAD.ExpertDetails.split(
                                  ','
                                ).join(',</br>')}</p>
                                </div>`);
              d3.select('#ec_title_mobile').html(`Expert Commentary`);
            }
          });
        } else {
          d3.select('#commentary_mem_details_mobile')
            .html('')
            .style('margin-bottom', '0');
          d3.select('#ec_title_mobile').html(`Macro Commentary`);
        }
        d3.select('#ec_message_mobile').html(`${expertC.ExpertCommentary}`);
        // Add graph here - MonthlyCommentaryGraph
        createGraphForCommentary(graphC);
        // if (videoData && videoData.length > 0 && videoData[0]?.videoUrl == '') {
        //   createGraphForCommentary(graphC);
        // }
      } else {
        let lastMonth = _moment(dataValue.category, 'MM-YYYY')
          .subtract(1, 'months')
          .format('MM-YYYY');
        let lastMonthDataValue = mydata.filter(
          (x) => x.category == lastMonth
        )[0];
        addCommentary(lastMonthDataValue);
      }
    };

    function createGraphForCommentary(graphData) {
      // set the dimensions and margins of the graph
      const margin_c = { top: 20, right: 15, bottom: 25, left: 45 },
        default_width_c = 270,
        default_height_c = 257,
        width_c = default_width_c - margin_c.left - margin_c.right,
        height_c = default_height_c - margin_c.top - margin_c.bottom;

      // Add X axis --> it is a date format
      const x1 = d3
        .scaleTime()
        .domain(
          d3.extent(graphData, function (d) {
            return parseDate(d.category);
          })
        )
        .range([0, width_c]);

      // Add Y axis - left side
      const y1 = d3.scaleLinear().domain([0, 1.0]).nice().range([height_c, 0]);

      // Add Y axis - right side
      const y2 = d3.scaleLinear().domain([0, 1.0]).range([height_c, 0]);

      const xa = d3
        .axisBottom(x1)
        .tickSize(-height_c)
        .tickFormat(d3.timeFormat('%b'));

      const ya = d3
        .axisLeft(y1)
        .tickSize([-width_c])
        .tickValues(y_com_coordinates);

      const ya_right = d3
        .axisRight(y2)
        .tickSize([-width_c])
        .tickValues(y_right_coordinates)
        .tickFormat('');

      // append the svg object to the body of the page
      d3.select('#monthly_commentary_chart_mobile').remove();
      // d3.selectAll('.mc_ytvideo_url_mobile').remove();
      const svg_c = d3
        .select('#commentary_graph_mobile')
        .append('svg')
        .attr('id', 'monthly_commentary_chart_mobile')
        .attr('width', width_c + margin_c.left + margin_c.right)
        .attr('height', height_c + margin_c.top + margin_c.bottom + 40)
        .append('g')
        .attr('transform', `translate(${margin_c.left},${margin_c.top})`);

      const x_axis = svg_c
        .append('g')
        .attr('transform', `translate(0, ${height_c})`)
        .attr('stroke-width', '1')
        .attr('class', 'x_month_value')
        .call(xa);

      x_axis
        .append('text') // text label for the x axis
        .attr('x', '7em')
        .attr('y', '3.5em')
        .attr('class', 'axis-title')
        .style('text-anchor', 'middle')
        .attr('fill', '#959595')
        .text('Trailing 6 months');

      x_axis.selectAll('.tick text').attr('y', '0.7em');

      svg_c
        .append('g')
        .attr('stroke', '#A3A3A3')
        .attr('stroke-width', '0')
        .attr('opacity', '.6')
        .attr('class', 'y_month_value')
        .call(ya)
        .append('text')
        .attr('class', 'axis-title')
        .attr('x', '-3.5em')
        .attr('y', '-2.5em')
        .style('text-anchor', 'end')
        .attr('fill', '#2FB36B')
        .attr('transform', 'rotate(-90)')
        .text('Jocata Sumpoorn');
      const yaright_text = svg_c
        .append('g')
        .attr('stroke', '#A3A3A3')
        .attr('stroke-width', '0.1')
        .attr('opacity', '1')
        .attr('transform', `translate(${width_c},0)`) //+20
        .call(ya_right);
      yaright_text.selectAll('.tick')._groups[0].forEach(function (d_child, i) {
        let handyValues = gethAndYValuesCommentary(d_child.__data__);
        svg_c
          .append('rect')
          .attr('x', 0)
          .attr('y', handyValues.y)
          .attr('width', width_c)
          .attr('height', handyValues.h)
          .attr('id', 'rect_def_yaxis')
          .attr('stroke', '#E2E2E280')
          .transition()
          .duration(1000)
          .attr('cy', function (d) {
            return d;
          });
      });
      d3.selectAll('#infoIcon_2_mobile').remove();
      addInfoIcon(
        default_width_c - 85,
        default_height_c - 250,
        '#commentary_graph_mobile',
        'infoIcon_2_mobile',
        svg_c
      );
      // Add the line
      svg_c
        .append('path')
        .datum(graphData)
        .attr('fill', 'none')
        .attr('stroke', '#2FB36B')
        .attr('stroke-width', 1)
        .attr(
          'd',
          d3
            .line()
            .x((d) => x1(<Date>parseDate(d.category)))
            .y((d) => y1(d.value))
        );
      // Add the points
      svg_c
        .append('g')
        .selectAll('dot')
        .data(graphData)
        .join('circle')
        .attr('cx', (d) => x1(<Date>parseDate(d.category)))
        .attr('cy', (d) => y1(d.value))
        .attr('r', 2)
        .attr('fill', '#2FB36B');
    }

    function gethAndYValuesCommentary(d) {
      let hAndyValues = { y: 0, h: 0 };
      if (d == 0.45) {
        hAndyValues.y = 117.5;
        hAndyValues.h = 42;
      } else if (d == 0.52) {
        hAndyValues.y = 102.5;
        hAndyValues.h = 3.5;
      } else if (d == 0.6) {
        hAndyValues.y = 85.5;
        hAndyValues.h = 11.5;
      } else if (d == 0.75) {
        hAndyValues.y = 53.5;
        hAndyValues.h = 20.5;
      }
      return hAndyValues;
    }

    function addInfoIcon(icon_x, icon_y, graph_id, icon_id, selectedSvg) {
      let icon;
      if (graph_id == '#mobile_insights_graph_svg') {
        icon = d3.select(icon_id);
      } else {
        icon = selectedSvg
          .append('g')
          .attr('transform', `translate(${icon_x},${icon_y})`)
          .append('svg:image')
          .attr('xlink:href', 'assets/icons/info.svg')
          .attr('width', 15)
          .attr('height', 15)
          .attr('id', icon_id)
          .style('cursor', 'pointer');
      }
      icon.on('click', function (evt, d) {
        outsideThis.openInfoIcon(graph_id, evt);
      });

      $('#closeInfoMobile').on('click', function (e) {
        $('#contextMenuMobile').css('display', 'none');
      });
    }

    // addInfoIcon(0, 0, "#mobile_insights_graph_svg", "#insightsInfoIcon", null);

    selectionOfXaxis();

    addLinesForGraph();

    addFlags();

    const clickPoint = (event, d) => {
      const mousePointer = d3.pointer(event);
      const x_orig = x1.invert(mousePointer[0]);
      const formattedDate = d3.timeFormat('%m-%Y')(x1.invert(mousePointer[0]));
      const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
      // xaxis selection on curve selection
      removeXaxisTitleSelection();
      d3.selectAll('.x_month_name').classed('active', false);
      renderPointerOnLine(formattedDate);
    };

    // Add the line
    const path = svg
      .append('path')
      .datum(mydata)
      .attr('fill', 'none')
      .attr('stroke', '#2FB36B')
      .attr('stroke-width', '2.5')
      .attr(
        'd',
        d3
          .line()
          .x(function (d: any) {
            return x1(<Date>parseDate(d.category));
          })
          .x(function (d: any) {
            return x2(<Date>parseDate(d.category));
          })
          .x(function (d: any) {
            return x3(<Date>parseDate(d.category));
          })
          .y(function (d: any) {
            return y1(d.value);
          })
          .y(function (d: any) {
            return y2(d.value);
          })
          .curve(d3.curveCatmullRom.alpha(0))
      )
      .style('cursor', 'pointer');
    path.on('click', clickPoint);

    $('#mobile_insights_graph_svg').scrollLeft(default_width);
  }

  generateInsightsGraph() {
    const mydata = this.sumpoornGraphData.IndexGeneration;
    const indexData = this.sumpoornGraphData.Commentary;
    let pageThis = this;
    const y_left_coordinates = [
      '0.00',
      '0.10',
      '0.20',
      '0.30',
      '0.40',
      '0.50',
      '0.60',
      '0.70',
      '0.80',
      '0.90',
      '1.00',
    ];
    const y_right_coordinates = [
      '0.00',
      '0.25',
      '0.45',
      '0.50',
      '0.52',
      '0.54',
      '0.60',
      '0.65',
      '0.75',
      '1.00',
    ]; //'0.00',
    const y_com_coordinates = ['0.0', '0.2', '0.4', '0.6', '0.8', '1.0'];

    let prev_month_data;
    let next_month_data;

    let tooltip, radiation, selectedPoint;

    // set the dimensions and margins of the graph
    const margin = {
        top: 10,
        right: 10,
        bottom: 60,
        left: 0,
      },
      default_width = 25 * mydata.length, //1150
      default_height = 445, //500
      width = default_width - margin.left - margin.right,
      height = default_height - margin.top - margin.bottom;
    this.graphWidth.emit(default_width);
    const parseDate = d3.timeParse('%m-%Y');

    // Coordinates on axes
    // Add X axis 1 --> it is a month format
    const x1 = d3
      .scaleTime()
      .domain(
        <[Date, Date]>d3.extent(mydata, function (d: any) {
          return parseDate(d.category);
        })
      )
      .range([0, width]);
    // Add X axis 2 --> it is a year format
    const x2 = d3
      .scaleTime()
      .domain(
        <[Date, Date]>d3.extent(mydata, function (d: any) {
          return parseDate(d.category);
        })
      )
      .range([0, width]);
    // Add X axis 3 --> it is a month number format
    const x3 = d3
      .scaleTime()
      .domain(
        <[Date, Date]>d3.extent(mydata, function (d: any) {
          return parseDate(d.category);
        })
      )
      .range([10, width + 10]);
    // Add Y axis - left side
    const y1 = d3.scaleLinear().domain([0, 1.0]).nice().range([height, 0]);
    // Add Y axis - right side
    const y2 = d3.scaleLinear().domain([0, 1.0]).range([height, 0]);
    // Customize text values on axes
    const xAxis_month_number = d3
      .axisBottom<Date>(x3)
      .tickFormat(d3.timeFormat('%m'))
      .tickSize(height)
      .ticks(mydata.length);
    const xAxis_month_name = d3
      .axisBottom<Date>(x1)
      .tickSize(-height)
      .ticks(mydata.length)
      .tickFormat(d3.timeFormat('%b'));
    const xAxis_year = d3
      .axisBottom(x2)
      .tickSize(35) // sets line for month
      .ticks(mydata.length)
      .tickFormat(function (d, i) {
        if (i == 0) {
          const year_fmt = d3.timeFormat('%Y')(d);
          return year_fmt;
        } else {
          const monNum_fmt = d3.timeFormat('%m')(d);
          const year_fmt = d3.timeFormat('%Y')(d);
          return monNum_fmt == '01' ? year_fmt : '';
        }
      });
    const yAxis_left = d3
      .axisLeft(y1)
      .tickSize(0)
      .tickValues(y_left_coordinates);
    const yAxis_right = d3
      .axisRight(y2)
      .tickSize([-width - 25]) // sets last xaxis index align
      .tickValues(y_right_coordinates)
      .tickFormat(function (d) {
        return formatYaxisForText(d);
      });
    const yAxis_graphLines = d3
      .axisLeft(y2)
      .tickSize([-width - 25])
      .tickValues(y_right_coordinates);

    const svgY_left = d3
      .select('#insights_graph_left_vertical_svg')
      .append('svg')
      .attr('height', 500)
      .attr('width', 40)
      .attr('transform', 'translate(0, 5)');

    svgY_left
      .append('g')
      .attr('class', 'y_left_points')
      .call(yAxis_left)
      .attr('dx', '-0.3em')
      .attr('transform', 'translate(20, 5)')
      .style('color', '#B2B2B2')
      .style('text-anchor', 'start');

    svgY_left
      .append('text')
      .attr('x', '-250')
      .attr('y', '10')
      .style('text-anchor', 'start')
      .attr('fill', '#2FB36B')
      .attr('transform', 'rotate(-90)')
      .text('Jocata Sumpoorn');

    svgY_left.select('.domain').attr('stroke', 'none');

    // Creating svg with dimensions to chart
    const svg = d3
      .select('#insights_graph_svg')
      .append('svg') //append svg element inside #chart
      .attr('width', default_width + 2 * margin.right + 15) //set width (remove 15 later)
      .attr('id', 'svg_insights_graph')
      .attr('height', default_height) //set height
      // .style("max-width", default_width + (margin.left + margin.right)) //set width
      // .style("max-height", default_height) //set height
      // .attr("viewBox", `0 0 ${default_width + (margin.left + margin.right)} ${default_height}`)
      .append('g')
      .attr('transform', `translate(${margin.left},${margin.top})`);
    const svgY_right = d3
      .select('#insights_graph_right_vertical_svg')
      .append('svg')
      .attr('height', 500)
      .attr('width', 200)
      .attr('transform', 'translate(0, 10)');

    const y_text = svgY_right
      .append('g')
      .attr('stroke-width', '0.1')
      .attr('transform', `translate(0,0)`) // sets last xaxis index align
      .call(yAxis_right)
      .selectAll('.tick text') // select all the y tick texts
      .style('cursor', 'pointer')
      .attr('x', function (d, i) {
        return formatYaxisForXvalue(d, i);
      })
      .attr('y', function (d, i) {
        return formatYaxisForYvalue(d, i);
      })
      .attr('class', function (d, i) {
        return `y-axis-titles y-axis-title_${i}`;
      });
    svgY_right.select('.domain').attr('stroke', 'none');

    // Adding axes to svg
    const month_number = svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0')
      .attr('class', 'x_month_num')
      .call(xAxis_month_number)
      .selectAll('.tick text')
      .attr('x', '0.1em')
      .attr('y', '-1.3em');
    const month_name = svg
      .append('g')
      .attr('transform', `translate(0, ${height})`)
      .attr('stroke-width', '0.1')
      .attr('class', 'x_month_name')
      .call(xAxis_month_name)
      .selectAll('.tick text') // select all the y tick texts
      .attr('x', '-1.8em')
      .attr('y', '0.5em')
      .attr('transform', function (d) {
        return 'rotate(-90)';
      })
      .attr('text-anchor', 'middle')
      .attr('class', function (d, i) {
        return `x_month_name x_month_name_${i}`;
      })
      .style('cursor', 'pointer');
    const month_year = svg
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
    svg
      .append('g')
      .attr('stroke-width', '0.1')
      // .attr("class", "y_right_points")
      // .attr("transform", `translate(0,0)`) // sets last xaxis index align
      .call(yAxis_graphLines);

    function formatYaxisForText(d: any) {
      if (d == 0.25) {
        return 'Substantial';
      } else if (d == 0.45) {
        return 'Significant';
      } else if (d == 0.5) {
        return 'Moderate';
      } else if (d == 0.52) {
        return 'Mild';
      } else if (d == 0.54) {
        return 'Marginal';
      } else if (d == 0.6) {
        return 'Mild';
      } else if (d == 0.65) {
        return 'Moderate';
      } else if (d == 0.75) {
        return 'Significant';
      } else if (d == 1.0) {
        return 'Substantial';
      }
      return '';
    }

    function formatYaxisForXvalue(d: any, i: any) {
      if (
        d == 0.25 ||
        d == 1.0 ||
        d == 0.45 ||
        d == 0.5 ||
        d == 0.6 ||
        d == 0.65 ||
        d == 0.75
      ) {
        return '1em';
      } else if (d == 0.52 || d == 0.54) {
        return '8em';
      }
      return '';
    }

    function formatYaxisForYvalue(d: any, i: any) {
      if (d == 0.25) {
        return '5em';
      } else if (d == 0.45) {
        return '4.0em';
      } else if (d == 0.5) {
        return '0.7em';
      } else if (d == 0.52) {
        return '0.40em';
      } else if (d == 0.54) {
        return '-0.5em';
      } else if (d == 0.6) {
        return '0.8em';
      } else if (d == 0.65) {
        return '0.6em';
      } else if (d == 0.75) {
        return '0.6em';
      } else if (d == 1.0) {
        return '0.8em';
      }
      return '';
    }

    function addLinesForYears() {
      let years: any = [];
      mydata.forEach((element) => {
        let year = element.category.split('-')[1];
        const i = years.findIndex((e) => e['year'] === year);
        if (i == -1) years.push({ year: year, count: 1 });
        else years[i]['count']++;
      });
      const firstLine = svg.append('g'); // first line
      firstLine
        .append('line')
        .attr('x1', 0.2)
        .attr('y1', 0)
        .attr('x2', 0.2)
        .attr('y2', height + 63)
        .attr('stroke', '#E1E1E1')
        .attr('stroke-width', '1');
      years.forEach((year) => {
        let yearSvg = svg.append('g');
        if (years.indexOf(year) == 0) {
          // 2019
          yearSvg
            .append('line')
            .attr('x1', 25 * year.count + 2)
            .attr('y1', 0)
            .attr('x2', 25 * year.count + 2)
            .attr('y2', height + 63)
            .attr('stroke', '#959595')
            .attr('stroke-width', '1')
            .attr('stroke-dasharray', '2');
        } else if (years.indexOf(year) == years.length - 1) {
          //last line
          yearSvg
            .append('line')
            .attr(
              'x1',
              25 * year.count +
                (300 * years.indexOf(year) -
                  25 * (12 - years[0].count) +
                  years.indexOf(year) * 2.62) //3 4
            )
            .attr('y1', 0)
            .attr(
              'x2',
              25 * year.count +
                (300 * years.indexOf(year) -
                  25 * (12 - years[0].count) +
                  years.indexOf(year) * 2.62) //3 4
            )
            .attr('y2', height + 35) //63
            .attr('stroke', '#E1E1E1')
            .attr('stroke-width', '1');
        } else {
          // all year line except to 2019
          yearSvg
            .append('line')
            .attr(
              'x1',
              25 * year.count +
                (300 * years.indexOf(year) -
                  25 * (12 - years[0].count) +
                  years.indexOf(year) * 3) //3.8 4.8
            )
            .attr('y1', 0)
            .attr(
              'x2',
              25 * year.count +
                (300 * years.indexOf(year) -
                  25 * (12 - years[0].count) +
                  years.indexOf(year) * 3) //3.8 4.8
            )
            .attr('y2', height + 63)
            .attr('stroke', '#959595')
            .attr('stroke-width', '1')
            .attr('stroke-dasharray', '2');
        }
      });
      //top line of graph
      // const top_line = svg.append("g");
      // top_line.append("line")
      //     .attr("x1", width + 25)
      //     .attr("x2", 0)
      //     .attr("y1", 0)
      //     .attr("y2", 0)
      //     .style("stroke", "#E1E1E1")
      //     .attr("stroke-width", "0.7");
      // bottom line of graph
      const bottom_line = svg.append('g');
      bottom_line
        .append('line')
        .attr('x1', width + 25)
        .attr('x2', 0)
        .attr('y1', height + 62)
        .attr('y2', height + 62)
        .style('stroke', '#E1E1E1')
        .attr('stroke-width', '0.7');
    }

    function addFlags() {
      let flag1_values = getPointsOnCurve('03-2020', 0.37);
      let flag2_values = getPointsOnCurve('02-2021', 0.63);
      let x_1 = flag1_values.x;
      let y_1 = flag1_values.y;
      let x_2 = flag2_values.x;
      let y_2 = flag2_values.y;
      const flag1_focus = svg
        .append('g')
        .attr('class', 'flag1_focus')
        .attr('transform', 'translate(' + (x_1 + 10) + ',' + y_1 + ')');
      flag1_focus.append('circle').attr('r', 4.5);
      const flag2_focus = svg
        .append('g')
        .attr('class', 'flag2_focus')
        .attr('transform', 'translate(' + (x_2 + 10) + ',' + (y_2 + 7) + ')');
      flag2_focus.append('circle').attr('r', 4.5);

      const covid_2020 = svg.append('g');
      covid_2020
        .append('rect')
        .attr('transform', 'translate(' + (x_1 - 65) + ',' + (y_1 + 55) + ')')
        .attr('width', 80)
        .attr('height', 50)
        .attr('fill', 'white')
        .attr('opacity', '0.7')
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');
      covid_2020
        .append('text')
        .html('COVID-19 Lockdown')
        .attr('x', x_1 - 25)
        .attr('y', y_1 + 55)
        .attr('width', 25)
        .attr('class', 'flags_text')
        .attr('text-anchor', 'middle')
        .style('font-size', '14px')
        .style('fill', '#767676')
        .style('font-weight', 500);
      covid_2020
        .append('line')
        .attr('x1', x_1 + 9)
        .attr('y1', y_1 - 6)
        .attr('x2', x_1 + 9)
        .attr('y2', y_1 + 55)
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');
      const covid_2021 = svg.append('g');
      covid_2021
        .append('rect')
        .attr('transform', 'translate(' + (x_2 - 75) + ',' + (y_2 - 105) + ')')
        .attr('width', 90)
        .attr('height', 50)
        .attr('fill', 'white')
        .attr('opacity', '0.7')
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');
      covid_2021
        .append('text')
        .html('COVID-19 Recovery')
        .attr('x', x_2 - 30)
        .attr('y', y_2 - 105)
        .attr('width', 25)
        .attr('class', 'flags_text')
        .attr('text-anchor', 'middle')
        .style('font-size', '14px')
        .style('fill', '#767676')
        .style('font-weight', 500);
      covid_2021
        .append('line')
        .attr('x1', x_2 + 10)
        .attr('y1', y_2 + 2)
        .attr('x2', x_2 + 10)
        .attr('y2', y_2 - 55)
        .attr('stroke', '#A0A0A0')
        .attr('stroke-width', '1');

      d3.selectAll('.flags_text').call(wrap);
    }

    function getPointsOnCurve(category: any, value: any) {
      let co_ord = { x: 0, y: 0 };
      let x_value = x1(<Date>parseDate(category));
      let y_value = y1(value);
      co_ord.x = x_value;
      co_ord.y = y_value;
      return co_ord;
    }

    const wrap = (textData) => {
      const wrapTexts = textData._groups[0];
      wrapTexts.forEach((ele) => {
        var selectedEle = d3.select(ele);
        var words = selectedEle.text().split(/\s+/).reverse();
        var lineHeight = 20;
        // var width = parseFloat(text.attr('width'));
        var y = parseFloat(selectedEle.attr('y'));
        var x = selectedEle.attr('x');
        var anchor = selectedEle.attr('text-anchor');
        var tspanTag = '<tspan></tspan>';

        var tspan = selectedEle
          .text(null)
          .append('tspan')
          .attr('x', x)
          .attr('y', y)
          .attr('text-anchor', anchor);
        // var tspan = d3.create('tspan').attr('x', x).attr('y', y).attr('text-anchor', anchor);
        // selectedEle.text(null).append(tspan)
        var lineNumber = 0;
        var line: any = [];
        var word = words.pop();

        while (word) {
          line.push(word);
          lineNumber += 1;
          tspan = selectedEle
            .append('tspan')
            .attr('x', x)
            .attr('y', y + lineNumber * lineHeight)
            .attr('anchor', anchor)
            .text(word);
          word = words.pop();
        }
      });
    };

    const addSelectionYaxis = () => {
      y_text.selectAll('.tick')._parents.forEach((d_child, i) => {
        addDefaultSelYaxis(d_child.__data__);
        d3.select(d_child).on('mouseover', (event, d) => {
          if (d != 0.52 && d != 0.54) {
            let hoverIndex = y_right_coordinates.indexOf(d);
            d3.selectAll('.y-axis-titles').classed('select', false);
            d3.select(`.y-axis-title_${hoverIndex}`).classed('select', true);
            yAxisMouseOver(event, d);
          }
        });
      });
    };

    function removeXaxisTitleSelection() {
      d3.selectAll('.x_month_name').classed('select_g', false);
      d3.selectAll('.x_month_name').classed('select_r', false);
    }
    function removeRectsSelection() {
      d3.selectAll('#rect_yaxis').remove();
      d3.selectAll('#rect_xaxis_sel').remove();
      d3.selectAll('.y-axis-titles').classed('select', false);
    }

    d3.select('#insights_graph_svg') //.insights_graph, .app_index_chart_con
      .on('mouseleave', (event) => {
        removeRectsSelection();
        removeXaxisTitleSelection();
      });

    function yAxisMouseOver(event: any, d: any) {
      let handyValues = formatHandYvaluesYaxis(d, true);
      d3.selectAll('#rect_yaxis').remove();
      svg
        .append('rect')
        .attr('x', 0)
        .attr('y', handyValues.y)
        .attr('width', width + 119)
        .attr('height', handyValues.h)
        .attr('id', 'rect_yaxis')
        .attr('class', function () {
          // color change for different indices
          if (d == 1.0 || d == 0.75 || d == 0.65 || d == 0.6) {
            return 'rect_yaxis_1';
          } else {
            return 'rect_yaxis_2';
          }
        })
        .attr('stroke', 'black')
        .style('stroke-dasharray', '3, 1')
        .style('opacity', 0.3)
        .transition()
        .duration(1000)
        //.ease(d3.easeCubicOut)
        .attr('cy', function (d: any) {
          return d;
        });
      svgY_right
        .append('rect')
        .attr('x', -10)
        .attr('y', handyValues.y)
        .attr('width', 108)
        .attr('height', handyValues.h)
        .attr('id', 'rect_yaxis')
        .attr('class', function () {
          // color change for different indices
          if (d == 1.0 || d == 0.75 || d == 0.65 || d == 0.6) {
            return 'rect_yaxis_1';
          } else {
            return 'rect_yaxis_2';
          }
        })
        .attr('stroke', 'black')
        .style('stroke-dasharray', '3, 1')
        .style('opacity', 0.3)
        .transition()
        .duration(1000)
        //.ease(d3.easeCubicOut)
        .attr('cy', function (d: any) {
          return d;
        });
      checkSpecificPointsOnXaxis(d);
    }

    function checkSpecificPointsOnXaxis(d) {
      let hoverIndex = y_right_coordinates.indexOf(d);
      let beforeIndexValue = y_right_coordinates[hoverIndex - 1];
      let dataValues = mydata.filter((e) => {
        return e.value >= beforeIndexValue && e.value <= d;
      });
      // d3.selectAll("#rect_xaxis").remove();
      d3.selectAll('#rect_xaxis_sel').remove();
      // yaxis selection
      removeXaxisTitleSelection();
      // d3.selectAll(".x_month_name").classed("active", false);
      dataValues.forEach((eachValue: any) => {
        highlightXaxis(eachValue, d);
      });
    }

    function highlightXaxis(dataValue: any, d: any) {
      const tooltip_pointer = getPointsOnCurve(
        dataValue.category,
        dataValue.value
      );
      svg
        .append('rect')
        .attr('x', tooltip_pointer.x)
        .attr('y', 0)
        .attr('width', 25)
        .attr('height', height + 40)
        .attr('id', 'rect_xaxis_sel')
        .attr('opacity', '0.7')
        .transition()
        .duration(1000)
        //.ease(d3.easeCubicOut)
        .attr('cx', function (d: any) {
          return d;
        });
      const indexOfObj = mydata.findIndex(
        (x) => x.category == dataValue.category
      );
      if (d == 1.0 || d == 0.75 || d == 0.65 || d == 0.6) {
        d3.select(`.x_month_name_${indexOfObj}`).classed('select_g', true);
      } else {
        d3.select(`.x_month_name_${indexOfObj}`).classed('select_r', true);
      }
    }

    function addDefaultSelYaxis(d) {
      let handyValues = formatHandYvaluesYaxis(d, false);
      svg
        .append('rect')
        .attr('x', 0)
        .attr('y', handyValues.y)
        .attr('width', width + 25)
        .attr('height', handyValues.h)
        .attr('id', 'rect_def_yaxis')
        .attr('opacity', '0.5')
        .attr('stroke', '#E2E2E280')
        .transition()
        .duration(1000)
        .attr('cy', function (d: any) {
          return d;
        });

      let handyValues_line = getYaxisValuesForLines(d);
      svgY_right
        .append('line')
        .attr('x1', 15)
        .attr('x2', handyValues_line.x2)
        .attr('y1', handyValues_line.y1)
        .attr('y2', handyValues_line.y1)
        .style('stroke', '#E2E2E2')
        .attr('stroke-width', 1);
    }
    function formatHandYvaluesYaxis(d, isMouseover) {
      if (isMouseover) {
        let hAndyValues = { y: 0, h: 0 };
        if (d == 0.25) {
          hAndyValues.y = 282;
          hAndyValues.h = 93;
        } else if (d == 0.45) {
          hAndyValues.y = 207;
          hAndyValues.h = 75;
        } else if (d == 0.5) {
          hAndyValues.y = 188;
          hAndyValues.h = 20;
        } else if (d == 0.6) {
          hAndyValues.y = 151;
          hAndyValues.h = 23;
        } else if (d == 0.65) {
          hAndyValues.y = 132;
          hAndyValues.h = 18;
        } else if (d == 0.75) {
          hAndyValues.y = 94;
          hAndyValues.h = 37;
        } else if (d == 1.0) {
          hAndyValues.y = 0;
          hAndyValues.h = 94;
        }
        return hAndyValues;
      } else {
        let hAndyValues = { y: 0, h: 0 };
        if (d == 0.45) {
          hAndyValues.y = 207;
          hAndyValues.h = 75;
        } else if (d == 0.52) {
          hAndyValues.y = 180.5;
          hAndyValues.h = 7.5;
        } else if (d == 0.6) {
          hAndyValues.y = 150.5;
          hAndyValues.h = 22.5;
        } else if (d == 0.75) {
          hAndyValues.y = 94;
          hAndyValues.h = 38;
        }
        return hAndyValues;
      }
    }

    function getYaxisValuesForLines(d) {
      //todo
      let hAndyValues = { y1: 0, x2: 0 };
      if (d == 0.0) {
        hAndyValues.y1 = height;
        hAndyValues.x2 = 200;
      } else if (d == 0.25) {
        hAndyValues.y1 = 282;
        hAndyValues.x2 = 95;
      } else if (d == 0.45) {
        hAndyValues.y1 = 207;
        hAndyValues.x2 = 95;
      } else if (d == 0.5) {
        hAndyValues.y1 = 187.5;
        hAndyValues.x2 = 70;
      } else if (d == 0.52) {
        hAndyValues.y1 = 180.5;
        hAndyValues.x2 = 70;
      } else if (d == 0.54) {
        hAndyValues.y1 = 173;
        hAndyValues.x2 = 70;
      } else if (d == 0.6) {
        hAndyValues.y1 = 150.5;
        hAndyValues.x2 = 95;
      } else if (d == 0.65) {
        hAndyValues.y1 = 131.5;
        hAndyValues.x2 = 95;
      } else if (d == 0.75) {
        hAndyValues.y1 = 94;
        hAndyValues.x2 = 95;
      } else if (d == 1.0) {
        hAndyValues.y1 = 0;
        hAndyValues.x2 = 200;
      }
      return hAndyValues;
    }
    addSelectionYaxis();

    function selectionOfXaxis() {
      month_name.selectAll('.tick')._parents.forEach(function (d_child, i) {
        let totalIndex = month_name.selectAll('.tick')._parents.length - 1;
        if (i == totalIndex) {
          // xaxis selection on load
          removeXaxisTitleSelection();
          d3.selectAll('.x_month_name').classed('active', false);
          svg
            .append('rect')
            .attr('x', width)
            .attr('y', 0)
            .attr('width', 26.5)
            .attr('height', height + 40)
            .attr('id', 'rect_xaxis')
            .attr('stroke', 'black')
            .style('stroke-dasharray', '3, 1')
            .style('opacity', '0.5')
            .transition()
            .duration(1000)
            .attr('cx', function (d) {
              return d;
            });

          const tooltip_pointer = getPointsOnCurve(
            mydata[i].category,
            mydata[i].value
          );
          // To apply circles animation on last index
          addTooltip(tooltip_pointer, mydata[i], true);
          d3.select(`.x_month_name_${i}`).classed('active', true);
          // de highlight yaxis text
          d3.selectAll('.y-axis-titles').classed('active', false);
          d3.selectAll('.y-axis-titles').classed('select', false);
          checkSpecificPointOnYaxis(i);
          setPrevAndNextMonthsSlider(mydata[i]);
          addCommentary(mydata[i]);
        }
        d3.select(d_child).on('click', function (event, d) {
          // xaxis selection on click
          removeXaxisTitleSelection();
          d3.selectAll('.x_month_name').classed('active', false);
          const formattedDate = d3.timeFormat('%m-%Y')(d);
          renderPointerOnLine(formattedDate);
        });
      });
    }

    function renderPointerOnLine(date) {
      d3.selectAll('#rect_xaxis').remove();
      d3.selectAll('#rect_yaxis').remove(); // to remove highlighting of yaxis data
      d3.selectAll('#rect_xaxis_sel').remove(); // to remove highlighting of already selected xaxis data

      const dataValue = mydata.filter((x) => x.category == date)[0];
      const tooltip_pointer = getPointsOnCurve(
        dataValue.category,
        dataValue.value
      );
      const lastIndex = month_name.selectAll('.tick')._parents.length - 1;
      const indexOfPoint = mydata.findIndex(
        (x) => x.category == dataValue.category
      );
      if (lastIndex == indexOfPoint) {
        // To apply circles animation on last index
        addTooltip(tooltip_pointer, dataValue, true);
      } else {
        // Not to apply circles animation on other points on curve
        addTooltip(tooltip_pointer, dataValue, false);
      }
      svg
        .append('rect')
        .attr('x', tooltip_pointer.x)
        .attr('y', 0)
        .attr('width', 25)
        .attr('height', height + 40)
        .attr('id', 'rect_xaxis')
        .attr('stroke', 'black')
        .style('stroke-dasharray', '3, 1')
        .style('opacity', '0.5')
        .transition()
        .duration(1000)
        .attr('cx', function (d) {
          return d;
        });
      const indexOfObj = mydata.findIndex(
        (x) => x.category == dataValue.category
      );
      d3.select(`.x_month_name_${indexOfObj}`).classed('active', true); // xaxis selection
      d3.selectAll('.y-axis-titles').classed('select', false);
      d3.selectAll('.y-axis-titles').classed('active', false);
      checkSpecificPointOnYaxis(indexOfObj);
      setPrevAndNextMonthsSlider(dataValue);
      addCommentary(dataValue);
    }

    function initializeTooltip() {
      tooltip = d3
        .select('#insights_graph_svg')
        .append('div')
        .attr('class', 'tooltip-area')
        .style('opacity', 0);

      selectedPoint = d3
        .select('#insights_graph_svg')
        .append('div')
        .attr('class', 'focus_circle')
        .style('opacity', 0);

      radiation = d3
        .select('#insights_graph_svg')
        .append('div')
        .attr('class', 'animating_circle')
        .style('opacity', 0);
    }

    initializeTooltip();

    function addTooltip(mousePointer, dataValue, isLatestIdx) {
      tooltip.transition().duration(100).style('opacity', 0.9);
      tooltip
        .html(dataValue.value)
        .style('left', mousePointer.x - 10 + 'px')
        .style('top', mousePointer.y - 35 + 'px');
      radiation
        .transition()
        .duration(100)
        .attr('cx', function (d) {
          return d;
        })
        .style('opacity', 0.9);
      if (isLatestIdx) {
        radiation
          .html(
            '<span id="radiation" class="animating_circle">' +
              '<span class="circle_waves circle_one"></span> ' +
              '<span class="circle_waves circle_two"></span> ' +
              '<span class="circle_waves circle_three"></span>' +
              '</span>'
          )
          .style('left', mousePointer.x + 15 + 'px')
          .style('top', mousePointer.y + 10 + 'px');
      } else {
        radiation
          .html(
            '<span id="radiation" class="animating_circle">' +
              '<span class="circle_waves circle_three"></span>' +
              '</span>'
          )
          .style('left', mousePointer.x + 15 + 'px')
          .style('top', mousePointer.y + 10 + 'px');
      }
    }

    function checkSpecificPointOnYaxis(i) {
      const yOfx = mydata[i].value;
      const closestIndex = findClosestYvalue(yOfx);
      if (closestIndex !== -1) {
        d3.select(`.y-axis-title_${closestIndex}`).classed('active', true);
      }
    }

    function findClosestYvalue(goal) {
      if (goal <= 0.25) {
        return 1;
      } else if (goal > 0.25 && goal <= 0.45) {
        return 2;
      } else if (goal > 0.45 && goal <= 0.5) {
        return 3;
      } else if (goal > 0.5 && goal <= 0.52) {
        return 4;
      } else if (goal > 0.52 && goal <= 0.54) {
        return 5;
      } else if (goal > 0.54 && goal <= 0.6) {
        return 6;
      } else if (goal > 0.6 && goal <= 0.65) {
        return 7;
      } else if (goal > 0.65 && goal <= 0.75) {
        return 8;
      } else if (goal > 0.75 && goal <= 1.0) {
        return 9;
      }
      return -1;
    }

    function setPrevAndNextMonthsSlider(dataValue) {
      let expertData = indexData.ExpertCommentary.filter((e) => {
        return e.Month == dataValue.category;
      });
      if (expertData.length > 0) {
        let expertC = expertData[0];
        let prev_month = d3.timeFormat('%b')(
          <Date>parseDate(expertC.previousMonth)
        );
        let next_month = d3.timeFormat('%b')(
          <Date>parseDate(expertC.nextMonth)
        );
        $('#prev_month').html(prev_month);
        $('#next_month').html(next_month);
        addSliderData(expertC.previousMonth, expertC.nextMonth);
      }
    }

    function addSliderData(prev_month_ec, next_month_ec) {
      prev_month_data = prev_month_ec;
      next_month_data = next_month_ec;
      checkIfCommentaryDataAvailable(prev_month_data, next_month_data);
    }

    function checkIfCommentaryDataAvailable(prev_month_data, next_month_data) {
      const prevCommentaryData = mydata.filter(
        (x) => x.category == prev_month_data
      )[0];
      const nextCommentaryData = mydata.filter(
        (x) => x.category == next_month_data
      )[0];
      const checkForPrevCommentary = indexData.ExpertCommentary.filter(
        (x) => x.Month == prev_month_data
      )[0];
      const checkForNextCommentary = indexData.ExpertCommentary.filter(
        (x) => x.Month == next_month_data
      )[0];
      (<HTMLElement>document.getElementById('#slide_prev')).classList.remove(
        'disable_arrows'
      );
      (<HTMLElement>document.getElementById('#slide_next')).classList.remove(
        'disable_arrows'
      );
      if (
        !prevCommentaryData ||
        (prevCommentaryData && !checkForPrevCommentary)
      ) {
        (<HTMLElement>document.getElementById('#slide_prev')).classList.add(
          'disable_arrows'
        );
      } else if (
        !nextCommentaryData ||
        (nextCommentaryData && !checkForNextCommentary)
      ) {
        (<HTMLElement>document.getElementById('#slide_next')).classList.add(
          'disable_arrows'
        );
      }
    }

    (<HTMLElement>document.getElementById('#slide_prev')).addEventListener(
      'click',
      function () {
        const prevCommentaryData = mydata.filter(
          (x) => x.category == prev_month_data
        )[0];
        const checkIfMonthlyCommentary = indexData.ExpertCommentary.filter(
          (x) => x.Month == prev_month_data
        )[0];
        if (prevCommentaryData && checkIfMonthlyCommentary) {
          setPrevAndNextMonthsSlider(prevCommentaryData);
          addCommentary(prevCommentaryData);
          // need to avoid for month not having commentary data
          // xaxis selection on click
          removeXaxisTitleSelection();
          d3.selectAll('.x_month_name').classed('active', false);
          renderPointerOnLine(prevCommentaryData.category);
        }
      }
    );
    (<HTMLElement>document.getElementById('#slide_next')).addEventListener(
      'click',
      function () {
        const nextCommentaryData = mydata.filter(
          (x) => x.category == next_month_data
        )[0];
        const checkIfMonthlyCommentary = indexData.ExpertCommentary.filter(
          (x) => x.Month == next_month_data
        )[0];
        if (nextCommentaryData && checkIfMonthlyCommentary) {
          setPrevAndNextMonthsSlider(nextCommentaryData);
          addCommentary(nextCommentaryData);
          // xaxis selection on click
          removeXaxisTitleSelection();
          d3.selectAll('.x_month_name').classed('active', false);
          renderPointerOnLine(nextCommentaryData.category);
        }
      }
    );

    const addCommentary = (dataValue) => {
      let indexValue = dataValue.value;
      let expertData = indexData.ExpertCommentary.filter((e) => {
        return e.Month == dataValue.category;
      });
      let monthlyData = indexData.MonthlyCommentary.filter((m) => {
        return m.Month == dataValue.category;
      });
      let graphData = indexData.MonthlyCommentaryGraph.filter((m) => {
        return m.Month == dataValue.category;
      });
      // let videoData = indexData.MonthlyVideoCommentary.filter((m) => {
      //   return m.Month == dataValue.category;
      // });

      if (
        expertData.length > 0 &&
        monthlyData.length > 0 &&
        graphData.length > 0
      ) {
        let monthlyC = monthlyData[0];
        let expertC = expertData[0];
        let graphC = graphData[0].monthList;
        let current_month = d3.timeFormat('%b')(<Date>parseDate(expertC.Month));
        let current_year = d3.timeFormat('%Y')(<Date>parseDate(expertC.Month));
        // Left data
        d3.select('.mc_title').html(`Jocata Sumpoorn`);
        d3.select('.mc_rating').html(`${indexValue}`);

        const indexOfPoint = mydata.findIndex(
          (x) => x.category == dataValue.category
        );
        if (mydata.length - 1 == indexOfPoint) {
          d3.select('.isLatestIdx').style('display', 'inherit');
        } else {
          d3.select('.isLatestIdx').style('display', 'none');
        }

        d3.select('.mc_body').html(`${monthlyC.comment}`);
        // let videoId = this.getVideoId(monthlyC.videoUrl);
        // if (videoData && videoData.length > 0 && videoData[0]?.videoUrl != '') {
        //   d3.selectAll('.mc_ytvideo_url').remove();
        //   d3.select('#monthly_commentary_chart').remove();
        //   let videoUrl = videoData[0]?.videoUrl;
        //   let safeSrcUrl = this.getSafeUrl(videoUrl);
        //   // let safeSrcUrl: any = this.sanitizer.bypassSecurityTrustResourceUrl(videoUrl);
        //   d3.select('.mc_ytvideo').append('div').attr('class', 'mc_ytvideo_url')
        //     .html(`<iframe src="${safeSrcUrl}" class="w-100 my-4" height="200" frameborder="0" webkitallowfullscreen mozallowfullscreen
        // allowfullscreen></iframe>`);
        // }
        // Right data
        d3.select('.ec_month_title_download').html(`${expertC.Month}`);

        d3.select('.ec_month_title').html(`${current_month} ${current_year}`);
        d3.select('.audio_title').html(
          `${_moment(current_month, 'MMM').format(
            'MMMM'
          )} ${current_year} Audio Commentary`
        );
        if (expertC.AuthorDetails && expertC.AuthorDetails.length > 0) {
          d3.selectAll('.expert_comm_mem').remove();
          d3.select('#commentary_border').remove();
          d3.select('#commentary_mem_details')
            .style('margin-bottom', '16px')
            .append('div')
            .attr('class', 'member_border')
            .attr('id', 'commentary_border');
          expertC.AuthorDetails.forEach((expertAD, i) => {
            if (
              expertAD.ExpertImageDetails &&
              expertAD.ExpertName &&
              expertAD.ExpertDetails
            ) {
              // commentary member details
              d3.select('#commentary_border')
                .append('div')
                .attr('class', 'expert_comm_mem expert_comm_border_right')
                .attr('id', `expert_comm_mem_${i}`);
              d3.select(`#expert_comm_mem_${i}`)
                .html(`<img src="assets/images/${
                expertAD.ExpertImageDetails
              }" alt="expert image" class="img-fluid ms-3 me-2" />
                                <div class="member_details">
                                <p class="member_name mb-0 ec_author">${
                                  expertAD.ExpertName
                                }</p>
                                <p class="member_title mb-0 ec_author_designation">${expertAD.ExpertDetails.split(
                                  ','
                                ).join(',</br>')}</p>
                                </div>`);
              d3.select('.ec_title').html(`Expert Commentary`);
            }
          });
        } else {
          d3.select('#commentary_mem_details')
            .html('')
            .style('margin-bottom', '0');
          d3.select('.ec_title').html(`Macro Commentary`);
        }
        d3.select('.ec_message').html(`${expertC.ExpertCommentary}`);
        // Add graph here - MonthlyCommentaryGraph
        createGraphForCommentary(graphC);
        // if (videoData && videoData.length > 0 && videoData[0]?.videoUrl == '') {
        //   createGraphForCommentary(graphC);
        // }
        let textForSpeech =
          'Jocata Sumpoorn ' + indexValue + ',<br/><br/>' + monthlyC.comment;
        if (expertC.AuthorDetails && expertC.AuthorDetails.length > 0) {
          textForSpeech += ',<br/><br/> Expert Commentary,<br/><br/>';
        } else {
          textForSpeech += ',<br/><br/> Macro Commentary,<br/><br/>';
        }
        textForSpeech += expertC.ExpertCommentary;
        $('#textForSpeech').html(textForSpeech);
      } else {
        let lastMonth = _moment(dataValue.category, 'MM-YYYY')
          .subtract(1, 'months')
          .format('MM-YYYY');
        let lastMonthDataValue = mydata.filter(
          (x) => x.category == lastMonth
        )[0];
        addCommentary(lastMonthDataValue);
      }
    };

    function createGraphForCommentary(graphData) {
      // set the dimensions and margins of the graph
      const margin_c = { top: 20, right: 15, bottom: 25, left: 45 },
        default_width_c = 270,
        default_height_c = 257,
        width_c = default_width_c - margin_c.left - margin_c.right,
        height_c = default_height_c - margin_c.top - margin_c.bottom;

      // Add X axis --> it is a date format
      const x1 = d3
        .scaleTime()
        .domain(
          d3.extent(graphData, function (d) {
            return parseDate(d.category);
          })
        )
        .range([0, width_c]);

      // Add Y axis - left side
      const y1 = d3.scaleLinear().domain([0, 1.0]).nice().range([height_c, 0]);

      // Add Y axis - right side
      const y2 = d3.scaleLinear().domain([0, 1.0]).range([height_c, 0]);

      const xa = d3
        .axisBottom(x1)
        .tickSize(-height_c)
        .tickFormat(d3.timeFormat('%b'));

      const ya = d3
        .axisLeft(y1)
        .tickSize([-width_c])
        .tickValues(y_com_coordinates);
      const ya_right = d3
        .axisRight(y2)
        .tickSize([-width_c])
        .tickValues(y_right_coordinates)
        .tickFormat('');
      // append the svg object to the body of the page
      d3.select('#monthly_commentary_chart').remove();
      // d3.selectAll('.mc_ytvideo_url').remove();
      const svg_c = d3
        .select('#commentary_graph')
        .append('svg')
        .attr('id', 'monthly_commentary_chart')
        .attr('width', width_c + margin_c.left + margin_c.right)
        .attr('height', height_c + margin_c.top + margin_c.bottom + 40)
        .append('g')
        .attr('transform', `translate(${margin_c.left},${margin_c.top})`);

      const x_axis = svg_c
        .append('g')
        .attr('transform', `translate(0, ${height_c})`)
        .attr('stroke-width', '1')
        .attr('class', 'x_month_value')
        .call(xa);

      x_axis
        .append('text') // text label for the x axis
        .attr('x', '7em')
        .attr('y', '3.5em')
        .attr('class', 'axis-title')
        .style('text-anchor', 'middle')
        .attr('fill', '#959595')
        .text('Trailing 6 months');

      x_axis.selectAll('.tick text').attr('y', '0.7em');

      svg_c
        .append('g')
        .attr('stroke', '#A3A3A3')
        .attr('stroke-width', '0')
        .attr('opacity', '.6')
        .attr('class', 'y_month_value')
        .call(ya)
        .append('text')
        .attr('class', 'axis-title')
        .attr('x', '-3.5em')
        .attr('y', '-2.5em')
        .style('text-anchor', 'end')
        .attr('fill', '#2FB36B')
        .attr('transform', 'rotate(-90)')
        .text('Jocata Sumpoorn');
      const yaright_text = svg_c
        .append('g')
        .attr('stroke', '#A3A3A3')
        .attr('stroke-width', '0.1')
        .attr('opacity', '1')
        .attr('transform', `translate(${width_c},0)`) //+20
        .call(ya_right);
      yaright_text.selectAll('.tick')._groups[0].forEach(function (d_child, i) {
        let handyValues = gethAndYValuesCommentary(d_child.__data__);
        svg_c
          .append('rect')
          .attr('x', 0)
          .attr('y', handyValues.y)
          .attr('width', width_c)
          .attr('height', handyValues.h)
          .attr('id', 'rect_def_yaxis')
          .attr('stroke', '#E2E2E280')
          .transition()
          .duration(1000)
          //.ease(d3.easeCubicOut)
          .attr('cy', function (d) {
            return d;
          });
      });
      d3.selectAll('#infoIcon_2').remove();
      addInfoIcon(
        default_width_c - 85,
        default_height_c - 250,
        '#commentary_graph',
        'infoIcon_2',
        svg_c
      );
      // Add the line
      svg_c
        .append('path')
        .datum(graphData)
        .attr('fill', 'none')
        .attr('stroke', '#2FB36B')
        .attr('stroke-width', 1)
        .attr(
          'd',
          d3
            .line()
            .x((d) => x1(<Date>parseDate(d.category)))
            .y((d) => y1(d.value))
        );
      // Add the points
      svg_c
        .append('g')
        .selectAll('dot')
        .data(graphData)
        .join('circle')
        .attr('cx', (d) => x1(<Date>parseDate(d.category)))
        .attr('cy', (d) => y1(d.value))
        .attr('r', 2)
        .attr('fill', '#2FB36B');
    }

    function gethAndYValuesCommentary(d) {
      let hAndyValues = { y: 0, h: 0 };
      if (d == 0.45) {
        hAndyValues.y = 117.5;
        hAndyValues.h = 42;
      } else if (d == 0.52) {
        hAndyValues.y = 102.5;
        hAndyValues.h = 3.5;
      } else if (d == 0.6) {
        hAndyValues.y = 85.5;
        hAndyValues.h = 11.5;
      } else if (d == 0.75) {
        hAndyValues.y = 53.5;
        hAndyValues.h = 20.5;
      }
      return hAndyValues;
    }

    function addInfoIcon(icon_x, icon_y, graph_id, icon_id, selectedSvg) {
      let icon = selectedSvg
        .append('g')
        .attr('transform', `translate(${icon_x},${icon_y})`)
        .append('svg:image')
        .attr('xlink:href', 'assets/icons/info.svg')
        .attr('width', 15)
        .attr('height', 15)
        .attr('id', icon_id)
        .style('cursor', 'pointer')
        .on('click', function (evt, d) {
          // Position:
          if (graph_id == '#insights_graph_svg') {
            const absX = evt.clientX + window.scrollX;
            const absY = evt.clientY + window.scrollY;
            $('#contextMenu').css('top', absY + 20 + 'px');
            $('#contextMenu').css('left', absX - 150 + 'px');
            $('#contextMenu').css('display', 'block');
          } else {
            const absX = evt.clientX + window.scrollX + 20;
            const absY = evt.clientY + window.scrollY - 35;
            $('#contextMenu').css('top', absY + 'px');
            $('#contextMenu').css('left', absX + 'px');
            $('#contextMenu').css('display', 'block');
          }

          let indexData: any[] = [];
          let startYaxisPoint = '';
          y_right_coordinates.forEach(function (index) {
            if (startYaxisPoint == '' || startYaxisPoint.length == 0) {
              startYaxisPoint = index;
            } else {
              let value = formatYaxisForText(index);
              let da: any = new Object();
              da.index =
                (Number(startYaxisPoint) == 0.0
                  ? startYaxisPoint
                  : Number(startYaxisPoint) + 0.01) +
                '-' +
                index;
              da.value = value;
              indexData.push(da);
              startYaxisPoint = index;
            }
          });
          let infodata = '';
          for (let i = indexData.length - 1; i >= 0; i--) {
            if (i <= 3) {
              if (i == 3)
                infodata +=
                  '<div style="padding-bottom: 10px;padding-top: 10px;color:#960000"><b>&#8595; Contraction</b></div><div style="color:#960000;padding-left: 13px;padding-bottom: 3px;">' +
                  indexData[i].value +
                  ' <span style="float:right;color:#960000;"> <span>&#8594;</span> ' +
                  indexData[i].index +
                  '</span></div>';
              else
                infodata +=
                  '<div style="color:#960000;padding-left: 13px;padding-bottom: 3px;">' +
                  indexData[i].value +
                  ' <span style="float:right;color:#960000"><span>&#8594;</span>  ' +
                  indexData[i].index +
                  '</span></div>';
            } else {
              if (i == indexData.length - 1)
                infodata +=
                  '<div style="padding-bottom: 10px;color:#1E7400"><b>&#8593; Expansion</b></div><div style="color:#1E7400;padding-left: 13px;padding-bottom: 3px;">' +
                  indexData[i].value +
                  ' <span style="float:right;color:#1E7400"><span>&#8594;</span>  ' +
                  indexData[i].index +
                  '</span></div>';
              else
                infodata +=
                  '<div style="color:#1E7400;padding-left: 13px;padding-bottom: 3px;">' +
                  indexData[i].value +
                  ' <span style="float:right;color:#1E7400"><span>&#8594;</span>  ' +
                  indexData[i].index +
                  '</span></div>';
            }
          }
          $('#insights_graph_y_axis_content_info').html(infodata);
        });

      $('#closeInfo').on('click', function (e) {
        $('#contextMenu').css('display', 'none');
      });
    }
    addInfoIcon(100, 5, '#insights_graph_svg', 'infoIcon_1', svgY_right);

    selectionOfXaxis();

    function addArrowsAfterYaxis() {
      svgY_right
        .append('g')
        .attr('transform', `translate(195, ${height - 294})`)
        .append('text')
        .attr('fill', '#759B67')
        .attr('font-size', '14px')
        .html('Expansion')
        .style('transform', 'rotate(-90deg)');

      svgY_right
        .append('g')
        .attr('transform', `translate(195, ${height - 20})`)
        .append('text')
        .attr('fill', '#AC5D5D')
        .attr('font-size', '14px')
        .text('Contraction')
        .style('transform', 'rotate(-90deg)');

      svgY_right
        .append('svg:defs')
        .append('svg:marker')
        .attr('id', 'expansionArrow')
        .attr('viewBox', '0 0 10 10')
        .attr('refX', 2)
        .attr('refY', 5)
        .attr('markerUnits', 'strokeWidth')
        .attr('markerWidth', 4)
        .attr('markerHeight', 5)
        .attr('orient', 'auto')
        .style('stroke', '#1E7400')
        .attr('fill', '#1E7400')
        .append('svg:path')
        .attr('d', 'M 0 0 L 10 5 L 0 10 z');

      svgY_right
        .append('svg:defs')
        .append('svg:marker')
        .attr('id', 'contractorArrow')
        .attr('viewBox', '0 0 10 10')
        .attr('refX', 2)
        .attr('refY', 5)
        .attr('markerUnits', 'strokeWidth')
        .attr('markerWidth', 4)
        .attr('markerHeight', 5)
        .attr('orient', 'auto')
        .style('stroke', '#960000')
        .attr('fill', '#960000')
        .append('svg:path')
        .attr('d', 'M 0 0 L 10 5 L 0 10 z');

      svgY_right
        .append('line')
        .attr('x1', 192)
        .attr('x2', 192)
        .attr('y1', 135)
        .attr('y2', 100)
        .style('opacity', 0.5)
        .style('stroke', '#1E7400')
        .attr('stroke-width', 1)
        .attr('marker-end', 'url(#expansionArrow)');

      svgY_right
        .append('line')
        .attr('x1', 192)
        .attr('x2', 192)
        .attr('y1', 220)
        .attr('y2', 260)
        .style('opacity', 0.5)
        .style('stroke', '#960000')
        .attr('stroke-width', 1)
        .attr('marker-end', 'url(#contractorArrow)');

      svgY_right
        .append('svg:defs')
        .append('svg:marker')
        .attr('id', 'yaxisMarginalArrow')
        .attr('viewBox', '0 0 10 10')
        .attr('refX', 2)
        .attr('refY', 5)
        .attr('markerUnits', 'strokeWidth')
        .attr('markerWidth', 4)
        .attr('markerHeight', 5)
        .attr('orient', 'auto')
        .attr('fill', '#1E7400')
        .append('svg:path')
        .attr('d', 'M 0 0 L 10 5 L 0 10 z');

      svgY_right
        .append('line')
        .attr('x1', 120)
        .attr('x2', 110)
        .attr('y1', 167)
        .attr('y2', 177)
        .style('opacity', 0.5)
        .style('stroke', '#1E7400')
        .attr('stroke-width', 1);

      svgY_right
        .append('line')
        .attr('x1', 110)
        .attr('x2', 60)
        .attr('y1', 177)
        .attr('y2', 177)
        .style('opacity', 0.5)
        .style('stroke', '#1E7400')
        .attr('stroke-width', 1)
        .attr('marker-end', 'url(#yaxisMarginalArrow)');

      svgY_right
        .append('svg:defs')
        .append('svg:marker')
        .attr('id', 'yaxisMildArrow')
        .attr('viewBox', '0 0 10 10')
        .attr('refX', 2)
        .attr('refY', 5)
        .attr('markerUnits', 'strokeWidth')
        .attr('markerWidth', 4)
        .attr('markerHeight', 5)
        .attr('orient', 'auto')
        .attr('fill', '#960000')
        .append('svg:path')
        .attr('d', 'M 0 0 L 10 5 L 0 10 z');

      svgY_right
        .append('line')
        .attr('x1', 120)
        .attr('x2', 60)
        .attr('y1', 184)
        .attr('y2', 184)
        .style('opacity', 0.5)
        .style('stroke', '#960000')
        .attr('stroke-width', 1)
        .attr('marker-end', 'url(#yaxisMildArrow)');
    }
    addArrowsAfterYaxis();

    addLinesForYears();

    addFlags();

    const clickPoint = (event, d) => {
      const mousePointer = d3.pointer(event);
      const x_orig = x1.invert(mousePointer[0]);
      const formattedDate = d3.timeFormat('%m-%Y')(x1.invert(mousePointer[0]));
      const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
      // xaxis selection on curve selection
      removeXaxisTitleSelection();
      d3.selectAll('.x_month_name').classed('active', false);
      renderPointerOnLine(formattedDate);
    };

    // Add the line
    const path = svg
      .append('path')
      .datum(mydata)
      .attr('fill', 'none')
      .attr('stroke', '#2FB36B')
      .attr('stroke-width', '2.5')
      .attr(
        'd',
        d3
          .line()
          .x(function (d: any) {
            return x1(<Date>parseDate(d.category));
          })
          .x(function (d: any) {
            return x2(<Date>parseDate(d.category));
          })
          .x(function (d: any) {
            return x3(<Date>parseDate(d.category));
          })
          .y(function (d: any) {
            return y1(d.value);
          })
          .y(function (d: any) {
            return y2(d.value);
          })
          .curve(d3.curveCatmullRom.alpha(0))
      )
      .style('cursor', 'pointer');
    path.on('click', clickPoint);
    $('#insights_graph_svg').scrollLeft(default_width);
  }

  //     downloadSVG(){
  //       //get svg element.
  // var svg = document.getElementById("svg_insights_graph");

  // //get svg source.
  // var serializer = new XMLSerializer();
  // var source = serializer.serializeToString(svg);

  // //add name spaces.
  // if(!source.match(/^<svg[^>]+xmlns="http\:\/\/www\.w3\.org\/2000\/svg"/)){
  //     source = source.replace(/^<svg/, '<svg xmlns="http://www.w3.org/2000/svg"');
  // }
  // if(!source.match(/^<svg[^>]+"http\:\/\/www\.w3\.org\/1999\/xlink"/)){
  //     source = source.replace(/^<svg/, '<svg xmlns:xlink="http://www.w3.org/1999/xlink"');
  // }

  // //add xml declaration
  // source = '<?xml version="1.0" standalone="no"?>\r\n' + source;

  // //convert svg source to URI data scheme.
  // var url = "data:image/svg+xml;charset=utf-8,"+encodeURIComponent(source);

  // //set url value to a element's href attribute.
  // document.getElementById("link")["href"] = url;
  // //you can download svg file by right click menu.
  //     }
}
