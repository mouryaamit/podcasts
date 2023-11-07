import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import * as d3 from 'd3';
import * as $ from 'jquery';
@Component({
    selector: 'app-context-chart',
    templateUrl: './context-chart.component.html',
    styleUrls: ['./context-chart.component.scss']
})
export class ContextChartComponent implements OnInit {
    isIIPChecked = true;
    isPMIChecked = false;
    isGVAChecked = false;
    @Input() sumpoornGraphData;
    @Input() iipGraphData;
    @Input() pmiGraphData;
    @Input() gvaGraphData;
    @Output() graphWidth = new EventEmitter<number>();

    constructor() { }

    // Change Background Logic for Checkbox checked
    onCheckboxChange(checkboxName: string) {
        if (checkboxName === 'IIP') {
            this.isIIPChecked = !this.isIIPChecked;
        } else if (checkboxName === 'PMI') {
            this.isPMIChecked = !this.isPMIChecked;
        } else if (checkboxName === 'GVA') {
            this.isGVAChecked = !this.isGVAChecked;
        }
    }

    ngOnInit(): void {
        this.generateContextGraph();
        this.generateMobileContextGraph();
    }

    generateMobileContextGraph() {
        var mydata = this.sumpoornGraphData.IndexGeneration;

        var dataForIIP = this.iipGraphData.iipValues;
        var dataForPMI = this.pmiGraphData.pmiValues;
        var dataForGVA = this.gvaGraphData.gvaValues;

        // set the dimensions and margins of the graph
        const margin = {
            top: 20,
            right: 30,
            bottom: 100,
            left: 0
        },
            default_width = 25 * this.sumpoornGraphData.IndexGeneration.length,
            default_height = 500,
            width = default_width - margin.left - margin.right,
            height = default_height - margin.top - margin.bottom;
        this.graphWidth.emit(width);
        const iipColorCode = '#24C0E2'; //2E8DFF
        const pmiColorCode = '#E1861B';
        const gvaColorCode = '#3E3EC8'; //5451FF

        var IIPLine;
        var PMILine;
        var GVALine;

        const parseDate = d3.timeParse("%m-%Y");
        const y_left_coordinates = ['0.00', '0.10', '0.20', '0.30', '0.40', '0.50', '0.60', '0.70', '0.80', '0.90', '1.00'];

        let tooltip, radiation, selectedPoint;

        // Scales
        // Add X axis 1 --> it is a month format
        const x1 = d3.scaleTime()
            .domain(d3.extent(mydata, function (d: any) { return parseDate(d.category); }))
            .range([0, width]);

        // Add X axis 2 --> it is a year format
        const x2 = d3.scaleTime()
            .domain(d3.extent(mydata, function (d: any) { return parseDate(d.category); }))
            .range([0, width]);

        // Add X axis 3 --> it is a month number format
        const x3 = d3.scaleTime()
            .domain(d3.extent(mydata, function (d: any) { return parseDate(d.category); }))
            .range([10, width + 10]);

        // Add Y axis - left side
        const y1 = d3.scaleLinear()
            .domain([0, 1.0])
            .nice()
            .range([height, 0]);

        // Add Y axis - right side
        const y2 = d3.scaleLinear()
            //for y axis values
            .domain([0, 200])
            .nice()
            .range([height, 0]);

        const y3 = d3.scaleLinear()
            //for y axis values
            .domain([0, 100])
            .nice()
            .range([height, 0]);

        const y4 = d3.scaleLinear()
            .domain([d3.min(dataForGVA, function (d) { return d.value - 10; }), d3.max(dataForGVA, function (d) { return d.value + 10; })])
            .nice()
            .range([height, 0]);

        //Axes
        const xAxis_month_number = d3.axisBottom(x3)
            .tickFormat(d3.timeFormat('%m'))
            .tickSize((height))
            .ticks(width / 12);

        const xAxis_month_name = d3.axisBottom(x1)
            .tickSize([-(height)])
            .ticks(width / 12)
            .tickFormat(d3.timeFormat('%b'));

        const xAxis_year = d3.axisBottom(x2)
            .tickSize(35)
            .ticks(width / 12)
            .tickFormat(function (d, i) {
                if (i == 0) {
                    const year_fmt = d3.timeFormat('%Y')(d);
                    return year_fmt;
                } else {
                    const monNum_fmt = d3.timeFormat('%m')(d);
                    const year_fmt = d3.timeFormat('%Y')(d);
                    return (monNum_fmt == '01') ? year_fmt : '';
                }
            });

        const yAxis_left = d3.axisLeft(y1)
            .tickSize(0)
            .tickValues(y_left_coordinates);

        const yAxis_graphLines = d3.axisLeft(y1)
            .tickSize([-width - 25])
            .tickValues(y_left_coordinates);

        // Has to write one more axes for lines on graph or append lines for left yaxis
        const yAxis_right_for_iip = d3.axisRight(y2)
        // .tickSize(0);
        const yAxis_right_for_pmi = d3.axisRight(y3);

        const yAxis_right_for_gva = d3.axisRight(y4);

        const svgY = d3.select('#mobile_context_graph_y_axis_svg')
            .append('svg')
            .attr('height', 500)
            .attr("width", 30)
            .attr('transform', "translate(0, 13)");

        svgY.append('g')
            .attr('class', 'y axis')
            .call(yAxis_left)
            .attr('dx', '-0.3em')
            .attr('transform', "translate(24, 6)")
            .style("color", "#2FB36B")
            .style("text-anchor", "end");

        svgY.append("text")
            .attr("x", "-460")
            .attr("y", "15")
            .style("text-anchor", "start")
            .attr("fill", "#2FB36B")
            .attr("transform", "rotate(-90)")
            .text("Sumpoorn");

        svgY.select(".domain").attr("stroke", "none");

        const svg = d3.select("#mobile_context_graph_svg")
            .append("svg") //append svg element inside #chart
            .attr("width", default_width + (margin.left)) //set width
            .attr("height", default_height) //set height
            .append("g")
            .attr("transform", `translate(${margin.left},${margin.top})`);

        svg.append("g")
            .attr("transform", `translate(0, ${height})`)
            .attr("stroke-width", "0")
            .attr("class", "x_month_num")
            .call(xAxis_month_number)
            .selectAll("text")
            .attr("x", "0em")
            .attr("y", "-1.3em");

        svg.append("g")
            .attr("stroke-width", "0.1")
            .attr("class", "y_left_points")
            .call(yAxis_graphLines);

        const x_axis_months = svg.append("g")
            .attr("transform", `translate(0, ${height})`)
            .attr("stroke-width", "0.1")
            .attr("class", "x_month_name_context")
            .call(xAxis_month_name)
            .selectAll(".tick text")
            .attr("x", "-1.8em")
            .attr("y", "0.5em")
            .attr("transform", function (d) {
                return "rotate(-90)"
            })
            .attr("class", function (d, i) { return `x_month_name_context x_month_name_context_${i}`; })
            .style("cursor", "pointer");

        svg.append("g")
            .attr("transform", `translate(0, ${height})`)
            .attr("stroke-width", "0.1")
            .attr("class", "x_month_year")
            .call(xAxis_year)
            .selectAll(".tick text")
            .attr("x", "1.5em")
            .attr("y", "2.7em")
            .style("font-weight", "600")
            .style("fill", "#A3A3A3")
            .style("font-family", "Inter")
            .style("font-size", "16px");

        var yAxis_right_for_iip_tick;
        var yAxis_right_for_pmi_tick;
        var yAxis_right_for_gva_tick;

        var svgY_iip;
        var svgY_pmi;
        var svgY_gva;

        function initializeTooltip() {
            tooltip = d3.select("#mobile_context_graph_svg") // can be body
                .append("div")
                .attr("class", "tooltip-area")
                .style("opacity", 0);
            radiation = d3.select("#mobile_context_graph_svg") // can be body
                .append("div")
                .attr("class", "animating_circle")
                .style("opacity", 0);
        }
        initializeTooltip();

        function monthNameClickEvent() {
            x_axis_months.selectAll(".tick")._parents.forEach(function (d1, i) {
                var data = d3.select(d1).data();//get the data asociated with y axis
                let totalIndex = x_axis_months.selectAll(".tick")._parents.length - 1
                if (i == totalIndex) {
                    d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on load
                    //creating on onload and render at last index
                    svg.append('rect')
                        .attr('x', width)
                        .attr('y', 0)
                        .attr('width', 25)
                        .attr('height', height + 40)
                        .attr("id", "rect_xaxis_context")
                        .attr('stroke', 'black')
                        .style("stroke-dasharray", ("3, 1"))
                        .style("opacity", 0.3)
                        .transition()
                        .duration(1000)
                        .attr('cx', function (d) {
                            return d;
                        })
                    const tooltip_pointer = getPointsOnCurve(mydata[i].category, mydata[i].value);
                    addTooltip(tooltip_pointer, mydata[i], true);
                    d3.select(`.x_month_name_context_${i}`).classed("active", true);
                }

                d3.select(d1).on("click", function (event, d) {
                    d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on load
                    const formattedDate = d3.timeFormat("%m-%Y")(d);
                    renderPointerOnLine(formattedDate)
                });
            });
        }
        monthNameClickEvent();

        function renderPointerOnLine(date) {
            d3.selectAll("#rect_xaxis_context").remove();
            const dataValue = mydata.filter((x) => x.category == date)[0];
            const tooltip_pointer = getPointsOnCurve(dataValue.category, dataValue.value);
            const lastIndex = x_axis_months.selectAll(".tick")._parents.length - 1;
            const indexOfPoint = mydata.findIndex(x => x.category == dataValue.category);

            if (lastIndex == indexOfPoint) {
                // To apply circles animation on last index
                addTooltip(tooltip_pointer, dataValue, true);
            } else {
                // Not to apply circles animation on other points on curve
                addTooltip(tooltip_pointer, dataValue, false);
            }
            //updating x value data & re-rendering
            d3.select("#rect_xaxis_context").remove();
            svg.append('rect')
                .attr('x', tooltip_pointer.x + 0.8)
                .attr('y', 0)
                .attr('width', 25)
                .attr('height', height + 40)
                .attr("id", "rect_xaxis_context")
                .attr('stroke', 'black')
                .style("stroke-dasharray", ("3, 1"))
                .style("opacity", 0.3)
                .transition()
                .duration(1000)
                .attr('cx', function (d) {
                    return d;
                })

            const indexOfObj = mydata.findIndex(x => x.category == date);
            d3.select(`.x_month_name_context_${indexOfObj}`).classed("active", true);
        }

        function getPointsOnCurve(category, value) {
            let co_ord = { x: 0, y: 0 };
            let x_value = x1(parseDate(category));
            let y_value = y1(value);
            co_ord.x = x_value;
            co_ord.y = y_value;
            return co_ord;
        }

        function addTooltip(mousePointer, dataValue, isLatestIdx) {
            tooltip
                .transition()
                .duration(100)
                .style("opacity", 0.9);
            tooltip
                .html(Number(dataValue.value).toFixed(2))
                .style("left", (mousePointer.x - 10) + "px")
                .style("top", (mousePointer.y - 35) + "px");
            radiation
                .transition()
                .duration(100)
                .attr('cx', function (d) {
                    return d;
                })
                .style("opacity", 0.9);
            if (isLatestIdx) {
                radiation
                    .html("<span id=\"radiation\" class=\"animating_circle\">" +
                        "<span class=\"circle_waves circle_one\"></span> " +
                        "<span class=\"circle_waves circle_two\"></span> " +
                        "<span class=\"circle_waves circle_three\"></span>" +
                        "</span>")
                    .style("left", Math.ceil(mousePointer.x + 15) + "px")
                    .style("top", Math.ceil(mousePointer.y + 20) + "px");
            } else {
                radiation
                    .html("<span id=\"radiation\" class=\"animating_circle\">" +
                        "<span class=\"circle_waves circle_three\"></span>" +
                        "</span>")
                    .style("left", Math.ceil(mousePointer.x + 15) + "px")
                    .style("top", Math.ceil(mousePointer.y + 20) + "px");
            }
        }


        function addLinesForGraph() {
            let years: any = [];
            mydata.forEach(element => {
                let year = element.category.split('-')[1];
                const i = years.findIndex(e => e['year'] === year);
                if (i == -1)
                    years.push({ "year": year, "count": 1 })
                else
                    years[i]["count"]++;
            });
            const firstLine = svg.append("g"); // first line
            firstLine.append('line')
                .attr('x1', 0.2)
                .attr('y1', 0)
                .attr('x2', 0.2)
                .attr('y2', height + 60)
                .attr('stroke', '#E1E1E1')
                .attr("stroke-width", "1");
            years.forEach(year => {
                let yearSvg = svg.append("g");
                if (years.indexOf(year) == 0) {
                    yearSvg.append('line')
                        .attr('x1', 25 * year.count)
                        .attr('y1', 0)
                        .attr('x2', 25 * year.count)
                        .attr('y2', height + 60)
                        .attr('stroke', '#959595')
                        .attr("stroke-width", "1")
                        .attr("stroke-dasharray", "2");
                } else if (years.indexOf(year) == years.length - 1) {
                    yearSvg.append('line')
                        .attr('x1', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) - (years.indexOf(year))))
                        .attr('y1', 0)
                        .attr('x2', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) - (years.indexOf(year))))
                        .attr('y2', height + 60)
                        .attr('stroke', '#E1E1E1')
                        .attr("stroke-width", "1")
                } else {
                    yearSvg.append('line')
                        .attr('x1', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) - (years.indexOf(year))))
                        .attr('y1', 0)
                        .attr('x2', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) - (years.indexOf(year))))
                        .attr('y2', height + 60)
                        .attr('stroke', '#959595')
                        .attr("stroke-width", "1")
                        .attr("stroke-dasharray", "2");
                }
            });
            //top line of graph
            const top_line = svg.append("g");
            top_line.append("line")
                .attr("x1", width + 25)
                .attr("x2", 0)
                .attr("y1", 0)
                .attr("y2", 0)
                .style("stroke", "#E1E1E1")
                .attr("stroke-width", "0.7");

        }
        addLinesForGraph();

        let line = d3.line()
            .defined(function (d) { return d; })
            .x(function (d) {
                return x1(parseDate(d.category))
            })
            .x(function (d) {
                return x2(parseDate(d.category))
            })
            .x(function (d) {
                return x3(parseDate(d.category))
            })
            .y(function (d) {
                return y1(d.value)
            })
            .curve(d3.curveCatmullRom.alpha(0));

        // Add sumpoorn line
        const path = svg.append("path")
            .datum(mydata)
            .attr("fill", "none")
            .attr("stroke", "#2FB36B")
            .style("stroke-width", "2.5")
            .attr("d", line)
            .style("cursor", "pointer");

        const clickPoint = (event, d) => {
            const mousePointer = d3.pointer(event);
            const x_orig = x1.invert(mousePointer[0]);
            const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
            const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
            d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on curve selection
            renderPointerOnLine(formattedDate);
        };

        path.on("click", clickPoint);

        // Sumpoorn graph changes end
        // IIP, PMI, GVA Graph changes start
        function refreshYaxisTicks(tickName) {
            if (tickName == 'iip') {
                svgY_iip = d3.select('#mobile_context_graph_y_axis_iip_svg')
                    .append('svg')
                    .attr('height', 500)
                    .attr("width", 35)
                    .attr('transform', "translate(-5, 13)");

                yAxis_right_for_iip_tick = svgY_iip.append("g")
                    .attr("stroke-width", "0")
                    .attr('transform', "translate(24, 6)")
                    .call(yAxis_right_for_iip)
                    .selectAll("text")
                    .attr("text-anchor", "end")
                    .style("color", iipColorCode)
                    .select(".domain").attr("stroke", "none");

                d3.select("#iipYaxisTxt_mobile").remove();

                svgY_iip.append("text")
                    .attr("x", "-400")
                    .attr("y", "30")
                    .attr("id", "iipYaxisTxt_mobile")
                    .style("text-anchor", "end")
                    .style('fill', iipColorCode)
                    .attr("transform", "rotate(-90)")
                    .text("IIP");
            } else if (tickName == 'pmi') {
                svgY_pmi = d3.select('#mobile_context_graph_y_axis_pmi_svg')
                    .append('svg')
                    .attr('height', 500)
                    .attr("width", 35)
                    .attr('transform', "translate(-5, 13)");

                yAxis_right_for_pmi_tick = svgY_pmi.append("g")
                    .attr("stroke-width", "0")
                    .attr('transform', "translate(24, 6)")
                    .call(yAxis_right_for_pmi)
                    .selectAll("text")
                    .attr("text-anchor", "end")
                    .style("fill", pmiColorCode)
                    .select(".domain").attr("stroke", "none");

                d3.select("#pmiYaxisTxt_mobile").remove();

                svgY_pmi.append("text").attr("opacity", "1")
                    .attr("x", "-400")
                    .attr("y", "30")
                    .attr("id", "pmiYaxisTxt_mobile")
                    .style("text-anchor", "end")
                    .style('fill', pmiColorCode)
                    .attr("transform", "rotate(-90)")
                    .html("PMI&#8482;");


            } else if (tickName == 'gva') {
                svgY_gva = d3.select('#mobile_context_graph_y_axis_gva_svg')
                    .append('svg')
                    .attr('height', 500)
                    .attr("width", 35)
                    .attr('transform', "translate(-5, 13)");

                yAxis_right_for_gva_tick = svgY_gva.append("g")
                    .attr("stroke-width", "0")
                    .attr('transform', "translate(24, 6)")
                    .call(yAxis_right_for_gva)
                    .selectAll("text")
                    .attr("text-anchor", "end")
                    .style("fill", gvaColorCode)
                    .select(".domain").attr("stroke", "none");

                d3.select("#gvaYaxisTxt_mobile").remove();

                svgY_gva.append("text")
                    .attr("x", "-400")
                    .attr("y", "30")
                    .attr("id", "gvaYaxisTxt_mobile")
                    .style("text-anchor", "end")
                    .style('fill', gvaColorCode)
                    .attr("transform", "rotate(-90)")
                    .html("GVA%");
            }
        }

        function addIIPLine(data) {
            // Add IIP line
            IIPLine = svg.append("path")
                .datum(data)
                .attr("fill", "none")
                .style("stroke", iipColorCode)
                .style("stroke-width", "1.5")
                .attr("opacity", "0.6")
                .attr("d", d3.line()
                    .x(function (d) {
                        return x1(parseDate(d.category))
                    })
                    .x(function (d) {
                        return x2(parseDate(d.category))
                    })
                    .x(function (d) {
                        return x3(parseDate(d.category))
                    })
                    .y(function (d) { return y2(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0))
                );
        }

        function addPMILine(data) {
            // Add PMI line
            PMILine = svg.append("path")
                .datum(data)
                .attr("fill", "none")
                .style("stroke", pmiColorCode)
                .style("stroke-width", "1.5")
                .attr("opacity", "0.6")
                .attr("d", d3.line()
                    .x(function (d) {
                        return x1(parseDate(d.category))
                    })
                    .x(function (d) {
                        return x2(parseDate(d.category))
                    })
                    .x(function (d) {
                        return x3(parseDate(d.category))
                    })
                    .y(function (d) { return y3(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0))
                );

        }

        function addGVALine(data) {
            // Add the line 2
            GVALine = svg.append("path")
                .datum(data)
                .attr("fill", "none")
                .style("stroke", gvaColorCode)
                .style("stroke-width", "1.5")
                .attr("opacity", "0.6")
                .attr("d", d3.line()
                    .x(function (d) {
                        return x1(parseDate(d.category))
                    })
                    .x(function (d) {
                        return x2(parseDate(d.category))
                    })
                    .x(function (d) {
                        return x3(parseDate(d.category))
                    })
                    .y(function (d) { return y4(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0))
                );
        }

        function removeIIPLine() {
            IIPLine.remove();
            svgY_iip.remove();
            yAxis_right_for_iip_tick.remove();
        }

        function removePMILine() {
            PMILine.remove();
            svgY_pmi.remove();
            yAxis_right_for_pmi_tick.remove();
        }

        function removeGVALine() {
            GVALine.remove();
            svgY_gva.remove();
            yAxis_right_for_gva_tick.remove();
        }

        function showIIP() {
            yAxis_right_for_iip_tick.remove();
            svgY_iip.remove();
            refreshYaxisTicks('iip');
            d3.select('.legend').style('width', '100px');
        }

        function showPMI() {
            yAxis_right_for_pmi_tick.remove();
            svgY_pmi.remove();
            refreshYaxisTicks('pmi');
        }

        function showGVA() {
            yAxis_right_for_gva_tick.remove();
            svgY_gva.remove();
            refreshYaxisTicks('gva');
        }

        $("#IIPCheckboxMob").attr("checked", "true");
        refreshYaxisTicks('iip');
        addIIPLine(dataForIIP);


        var isIipCheckBoxEnabled = $("#IIPCheckboxMob") ? $("#IIPCheckboxMob").attr("checked") == 'true' ? true : false : false,
            isPmiCheckBoxEnabled = $("#PMICheckboxMob") ? $("#PMICheckboxMob").attr("checked") == 'true' ? true : false : false,
            isGvaCheckBoxEnabled = $("#GVACheckboxMob") ? $("#GVACheckboxMob").attr("checked") == 'true' ? true : false : false;

        $(".context_checkboxes_mob").on("change", function (event) {
            if (event.target["value"] == 'IIP' && $(event.target).prop("checked")) {
                isIipCheckBoxEnabled = true;

                refreshYaxisTicks('iip')
                addIIPLine(dataForIIP);

                if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                    showPMI();
                    showGVA();
                } else if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                    showPMI();
                } else if (isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                    showGVA();
                }
            } else if (event.target["value"] == 'IIP' && !$(event.target).prop("checked")) {
                isIipCheckBoxEnabled = false;

                removeIIPLine();
                d3.select("#iipYaxisTxt_mobile").remove();

                if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                    showPMI();
                    showGVA();
                } else if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                    showPMI();
                } else if (isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                    showGVA();
                }
            } else if (event.target["value"] == 'PMI' && $(event.target).prop("checked")) {
                isPmiCheckBoxEnabled = true;

                refreshYaxisTicks('pmi');
                addPMILine(dataForPMI);

                if (isIipCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                    showIIP();
                    showGVA();
                } else if (isIipCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                    showIIP();
                } else if (isIipCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                    showGVA();
                }
            } else if (event.target["value"] == 'PMI' && !$(event.target).prop("checked")) {
                isPmiCheckBoxEnabled = false;

                removePMILine();
                d3.select("#pmiYaxisTxt_mobile").remove();

                if (isIipCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                    showIIP();
                    showGVA();
                } else if (isIipCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                    showIIP();
                } else if (isIipCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                    showGVA();
                }
            } else if (event.target["value"] == 'GVA' && $(event.target).prop("checked")) {
                isGvaCheckBoxEnabled = true;

                refreshYaxisTicks('gva');
                addGVALine(dataForGVA);

                if (isIipCheckBoxEnabled == true && isPmiCheckBoxEnabled == true) {
                    showIIP();
                    showPMI();
                } else if (isIipCheckBoxEnabled == true && isPmiCheckBoxEnabled == false) {
                    showIIP();
                } else if (isIipCheckBoxEnabled == false && isPmiCheckBoxEnabled == true) {
                    showPMI();
                }
            } else if (event.target["value"] == 'GVA' && !$(event.target).prop("checked")) {
                isGvaCheckBoxEnabled = false;

                removeGVALine();
                d3.select("#gvaYaxisTxt_mobile").remove();

                if (isIipCheckBoxEnabled == true && isPmiCheckBoxEnabled == true) {
                    showIIP();
                    showPMI();
                } else if (isIipCheckBoxEnabled == true && isPmiCheckBoxEnabled == false) {
                    showIIP();
                } else if (isIipCheckBoxEnabled == false && isPmiCheckBoxEnabled == true) {
                    showPMI();
                }
            }
        });
        $("#mobile_context_graph_svg").scrollLeft(width)
    }

    generateContextGraph() {
        var mydata = this.sumpoornGraphData.IndexGeneration;
        var dataForIIP = this.iipGraphData.iipValues;
        var dataForPMI = this.pmiGraphData.pmiValues;
        var dataForGVA = this.gvaGraphData.gvaValues;

        // set the dimensions and margins of the graph
        const margin = {
            top: 10,
            right: 10,
            bottom: 60,
            left: 65
        },
        default_width = 25 * this.sumpoornGraphData.IndexGeneration.length,
        default_height = 450,
        width = default_width - margin.left - margin.right,
        height = default_height - margin.top - margin.bottom;
        this.graphWidth.emit(width);

        const iipColorCode = '#24C0E2'; //2E8DFF
        const pmiColorCode = '#E1861B';
        const gvaColorCode = '#3E3EC8'; //5451FF

        const parseDate = d3.timeParse("%m-%Y");
        const y_left_coordinates = ['0.00', '0.10', '0.20', '0.30', '0.40', '0.50', '0.60', '0.70', '0.80', '0.90', '1.00'];

        // Scales
        // Add X axis 1 --> it is a month format
        const x1 = d3.scaleTime()
        .domain(d3.extent(mydata, function (d) { return d3.timeParse("%m-%Y")(d.category); }))
            .range([0, default_width]);

        // Add X axis 2 --> it is a year format
        const x2 = d3.scaleTime()
            .domain(d3.extent(mydata, function (d) { return d3.timeParse("%m-%Y")(d.category); }))
            .range([0, default_width]);

        // Add X axis 3 --> it is a month number format
        const x3 = d3.scaleTime()
            .domain(d3.extent(mydata, function (d) { return d3.timeParse("%m-%Y")(d.category); }))
            .range([10, default_width + 10]);

        // Add Y axis - left side
        const y1 = d3.scaleLinear()
            .domain([0, 1.0]).nice()
            .range([height, 0]);

        // Add Y axis - right side
        const y2 = d3.scaleLinear()
            //for y axis values
            .domain([0, 200])
            .nice()
            .range([height, 0]);

        const y3 = d3.scaleLinear()
            .nice()
            //for y axis values
            .domain([0, 100])
            .range([height, 0]);


        const y4 = d3.scaleLinear()
            .domain([d3.min(dataForGVA, function (d) { return d.value - 10; }), d3.max(dataForGVA, function (d) { return d.value + 10; })])
            .nice()
            .range([height, 0]);

        //Axes
        const xAxis_month_name = d3.axisBottom(x1)
        .tickSize([-(height)])
        .ticks(width / 12)
        .tickFormat(function (date) {
            return d3.timeFormat('%b')(date);
        });

        const xAxis_year = d3.axisBottom(x2)
        .tickSize(35)
        .ticks(width / 12)
        .tickFormat(function (d, i) {
            if (i == 0) {
                const year_fmt = d3.timeFormat('%Y')(d);
                return year_fmt;
            } else {
                const monNum_fmt = d3.timeFormat('%m')(d);
                const year_fmt = d3.timeFormat('%Y')(d);
                return (monNum_fmt == '01') ? year_fmt : '';
            }
        });

        var xAxis_month_number = d3.axisBottom(x3)
            .tickFormat(d3.timeFormat('%m'))
            .tickSize((height))
            .ticks(width / 12);

        const yAxis_left = d3.axisLeft(y1)
            .tickSize([-width - 21])
            .tickValues(y_left_coordinates);

        const yAxis_graphLines = d3.axisLeft(y1)
            .tickSize([-default_width - 25])
            .tickValues(y_left_coordinates);

        const yAxis_right_for_iip = d3.axisRight(y2)
            .tickSize(0);
        const yAxis_right_for_pmi = d3.axisRight(y3);

        const yAxis_right_for_gva = d3.axisRight(y4);

        const svgY = d3.select("#context_graph_y_axis_svg")
            .append("svg") //append svg element inside #chart
            .attr("width", 65) //set width
            .attr("height", default_height+30) //set height
            .append("g")
            .attr("transform", `translate(${margin.left},${margin.top})`);

            const svgY_gva = d3.select("#context_graph_y_axis_gva_svg")
            .append("svg") //append svg element inside #chart
            .attr("width", 45) //set width
            .attr("height", default_height+30) //set height
            .append("g")
            .attr("transform", `translate(0,${margin.top})`);

        const svgY_pmi = d3.select("#context_graph_y_axis_pmi_svg")
            .append("svg") //append svg element inside #chart
            .attr("width", 35) //set width
            .attr("height", default_height+30) //set height
            .append("g")
            .attr("transform", `translate(0,${margin.top})`);

        const svgY_iip = d3.select("#context_graph_y_axis_iip_svg")
            .append("svg") //append svg element inside #chart
            .attr("width", 35) //set width
            .attr("height", default_height+30) //set height
            .append("g")
            .attr("transform", `translate(0,${margin.top})`);

        const svg = d3.select("#context_graph_svg")
            .append("svg") //append svg element inside #chart
            .attr("width", default_width+30) //set width
            .attr("height", default_height) //set height
            .append("g")
            .attr("transform", `translate(0,${margin.top})`);

        svg.append("g")
            .attr("transform", `translate(0, ${height})`)
            .attr("stroke-width", "0")
            .attr("class", "x_month_num")
            .call(xAxis_month_number)
            .selectAll("text")
            .attr("x", "0.2em")
            .attr("y", "-1.3em");

        svg.append("g")
            .attr("stroke-width", "0.1")
            .attr("class", "y_left_points")
            .call(yAxis_graphLines);
        const x_axis_months = svg.append("g") // TODO Check here
            .attr("transform", `translate(0, ${height})`)
            .attr("stroke-width", "0.1")
            .attr("class", "x_month_name_context")
            .call(xAxis_month_name)
            .selectAll(".tick text")
            .attr("id", "xaxisMonths")
            .attr("x", "-1.8em")
            .attr("y", "0.5em")
            .attr("transform", function (d) {
                return "rotate(-90)"
            })
            .attr("class", function (d, i) { return `x_month_name_context x_month_name_context_${i}`; })
            .style("cursor", "pointer");

        svg.append("g")
            .attr("transform", `translate(0, ${height})`)
            .attr("stroke-width", "0.1")
            .attr("class", "x_month_year")
            .call(xAxis_year)
            .selectAll(".tick text")
            .attr("x", "1.5em")
            .attr("y", "2.7em")
            .style("font-weight", "600")
            .style("fill", "#A3A3A3")
            .style("font-family", "Inter")
            .style("font-size", "16px");

        svgY.append("g")
            .attr("stroke-width", "0.1")
            .attr("class", "y_left_points")
            .call(yAxis_left)
            .append("text")
            .attr("class", "axis-title")
            .attr("x", "-10em")
            .attr("y", "-2.5em")
            .style("text-anchor", "end")
            .attr("fill", "#2FB36B")
            .attr("transform", "rotate(-90)")
            .text("Jocata Sumpoorn");

        svgY.select(".domain").attr("stroke", "none");

        var yAxisTickSpace = [15, 15, 15];
        var yAxisTickNameSpace = [22, 22, 22];

        var yAxis_right_for_iip_tick;
        var yAxis_right_for_pmi_tick;
        var yAxis_right_for_gva_tick;

        const tooltip = d3.select("#context_graph_svg") // can be body
            .append("div")
            .attr("class", "tooltip-area")
            .style("opacity", 0);
        const radiation = d3.select("#context_graph_svg") // can be body
            .append("div")
            .attr("class", "animating_circle")
            .style("opacity", 0);

        let line = d3.line()
            .defined(function (d) { return d; })
            .x(function (d) {
                return x1(d3.timeParse("%m-%Y")(d.category))
            })
            .x(function (d) {
                return x2(d3.timeParse("%m-%Y")(d.category))
            })
            .x(function (d) {
                return x3(d3.timeParse("%m-%Y")(d.category))
            })
            .y(function (d) {
                return y1(d.value)
            })
            .curve(d3.curveCatmullRom.alpha(0));

        // Add the line 1
        const path = svg.append("path")
            .datum(mydata)
            .attr("fill", "none")
            .attr("stroke", "#2FB36B")
            .style("stroke-width", "2.5")
            .attr("d", line);

        const clickPoint = (event, d) => {
            const mousePointer = d3.pointer(event);
            const x_orig = x1.invert(mousePointer[0]);
            const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
            const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
            d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on curve selection
            renderPointerOnLine(formattedDate);
        };

        path.on("click", clickPoint);

        var IIPLine;
        var PMILine;
        var GVALine;

        // addIIPLine(dataForIIP);

        var isIipCheckBoxEnabled: boolean = $("#IIPCheckbox") ? $("#IIPCheckbox").attr("checked") == 'true' ? true : false : false,
            isPmiCheckBoxEnabled: boolean = $("#PMICheckbox") ? $("#PMICheckbox").attr("checked") ? true : false : false,
            isGvaCheckBoxEnabled: boolean = $("#GVACheckbox") ? $("#GVACheckbox").attr("checked") ? true : false : false
        d3.selectAll(".context_checkboxes").on("change", function (event) {
            if (event.target["value"] == 'IIP' && $(event.target).prop("checked")) {
                $("#context_graph_y_axis_iip_svg").css("display","block");
                iipCheckBoxEnabled();
            } else if (event.target["value"] == 'IIP' && !$(event.target).prop("checked")) {
                $("#context_graph_y_axis_iip_svg").css("display","none");
                isIipCheckBoxEnabled = false;
                removeIIPLine();
                if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                    yAxis_right_for_pmi_tick.remove()
                    refreshYaxisTicks('pmi', yAxisTickSpace[0], yAxisTickNameSpace[0])
                    yAxis_right_for_gva_tick.remove()
                    refreshYaxisTicks('gva', yAxisTickSpace[1], yAxisTickNameSpace[1])
                } else if (isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                    yAxis_right_for_gva_tick.remove()
                    refreshYaxisTicks('gva', yAxisTickSpace[0], yAxisTickNameSpace[0])
                } else if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                    yAxis_right_for_pmi_tick.remove()
                    refreshYaxisTicks('pmi', yAxisTickSpace[0], yAxisTickNameSpace[0])
                }
                d3.select("#iipYaxisTxt").remove();
            }
            if (event.target["value"] == 'PMI' && $(event.target).prop("checked")) {
                $("#context_graph_y_axis_pmi_svg").css("display","block");
                isPmiCheckBoxEnabled = true;
                addPMILine(dataForPMI);
                if (isIipCheckBoxEnabled == true) {
                    refreshYaxisTicks('pmi', yAxisTickSpace[1], yAxisTickNameSpace[1])
                    if (isGvaCheckBoxEnabled == true) {
                        yAxis_right_for_gva_tick.remove()
                        refreshYaxisTicks('gva', yAxisTickSpace[2], yAxisTickNameSpace[2])
                    }
                } else {
                    refreshYaxisTicks('pmi', yAxisTickSpace[0], yAxisTickNameSpace[0])
                    if (isGvaCheckBoxEnabled == true) {
                        yAxis_right_for_gva_tick.remove()
                        refreshYaxisTicks('gva', yAxisTickSpace[1], yAxisTickNameSpace[1])
                    }
                }
            } else if (event.target["value"] == 'PMI' && !$(event.target).prop("checked")) {
                $("#context_graph_y_axis_pmi_svg").css("display","none");
                isPmiCheckBoxEnabled = false;
                removePMILine();
                if (isIipCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                    yAxis_right_for_gva_tick.remove();
                    refreshYaxisTicks('gva', yAxisTickSpace[1], yAxisTickNameSpace[1]);
                } else if (isIipCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                    yAxis_right_for_gva_tick.remove();
                    refreshYaxisTicks('gva', yAxisTickSpace[0], yAxisTickNameSpace[0]);
                }
                d3.select("#pmiYaxisTxt").remove();
            }
            if (event.target["value"] == 'GVA' && $(event.target).prop("checked")) {
                $("#context_graph_y_axis_gva_svg").css("display","block");
                isGvaCheckBoxEnabled = true;
                if (isIipCheckBoxEnabled == true && isPmiCheckBoxEnabled == true) {
                    refreshYaxisTicks('gva', yAxisTickSpace[2], yAxisTickNameSpace[2]);
                } else if (isIipCheckBoxEnabled == true && isPmiCheckBoxEnabled == false) {
                    refreshYaxisTicks('gva', yAxisTickSpace[1], yAxisTickNameSpace[1]);
                } else if (isIipCheckBoxEnabled == false && isPmiCheckBoxEnabled == true) {
                    refreshYaxisTicks('gva', yAxisTickSpace[1], yAxisTickNameSpace[1]);
                } else if (isIipCheckBoxEnabled == false && isPmiCheckBoxEnabled == false) {
                    refreshYaxisTicks('gva', yAxisTickSpace[0], yAxisTickNameSpace[0])
                }
                addGVALine(dataForGVA);
            } else if (event.target["value"] == 'GVA' && !$(event.target).prop("checked")) {
                $("#context_graph_y_axis_gva_svg").css("display","none");
                isGvaCheckBoxEnabled = false;
                removeGVALine();
                d3.select("#gvaYaxisTxt").remove();
            }

        });
        function iipCheckBoxEnabled() {
            isIipCheckBoxEnabled = true;
            refreshYaxisTicks('iip', yAxisTickSpace[0], yAxisTickNameSpace[0])
            addIIPLine(dataForIIP);
            if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == true) {
                yAxis_right_for_pmi_tick.remove()
                refreshYaxisTicks('pmi', yAxisTickSpace[1], yAxisTickNameSpace[1])
                yAxis_right_for_gva_tick.remove()
                refreshYaxisTicks('gva', yAxisTickSpace[2], yAxisTickNameSpace[2])
            } else if (isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                yAxis_right_for_pmi_tick.remove()
                refreshYaxisTicks('pmi', yAxisTickSpace[1], yAxisTickNameSpace[1])
            } else if (isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                yAxis_right_for_gva_tick.remove()
                refreshYaxisTicks('gva', yAxisTickSpace[1], yAxisTickNameSpace[1])
            }
        }
        function refreshYaxisTicks(tickName, tickWidth, yAxisTickNameSpace) {
            if (tickName == 'iip') {
                yAxis_right_for_iip_tick = svgY_iip.append("g")
                    .attr("stroke-width", "0")
                    .attr('transform', "translate(24, 6)")
                    .call(yAxis_right_for_iip)
                    .selectAll("text")
                    .attr("text-anchor", "end")
                    .style("color", iipColorCode);

                d3.select("#iipYaxisTxt").remove();
                svgY_iip.append("text")
                    .attr("x", "-400")
                    .attr("y", "30")
                    .attr("id", "iipYaxisTxt")
                    .style("text-anchor", "end")
                    .style('fill', iipColorCode)
                    .attr("transform", "rotate(-90)")
                    .text("IIP");
            } else if (tickName == 'pmi') {
                yAxis_right_for_pmi_tick = svgY_pmi.append("g")
                    .attr("stroke-width", "0")
                    .attr('transform', "translate(24, 6)")
                    .call(yAxis_right_for_pmi)
                    .selectAll("text")
                    .attr("text-anchor", "end")
                    .style("fill", pmiColorCode);

                d3.select("#pmiYaxisTxt").remove();
                svgY_pmi.append("text").attr("opacity", "1")
                    .attr("x", "-400")
                    .attr("y", "30")
                    .attr("id", "pmiYaxisTxt")
                    .style("text-anchor", "end")
                    .style('fill', pmiColorCode)
                    .attr("transform", "rotate(-90)")
                    .html("PMI&#8482;");


            } else if (tickName == 'gva') {
                yAxis_right_for_gva_tick = svgY_gva.append("g")
                    .attr("stroke-width", "0")
                    .attr('transform', "translate(24, 6)")
                    .call(yAxis_right_for_gva)
                    .selectAll("text")
                    .attr("text-anchor", "end")
                    .style("fill", gvaColorCode);

                d3.select("#gvaYaxisTxt").remove();
                svgY_gva.append("text")
                    .attr("x", "-400")
                    .attr("y", "20")
                    .attr("id", "gvaYaxisTxt")
                    .style("text-anchor", "end")
                    .style('fill', gvaColorCode)
                    .attr("transform", "rotate(-90)")
                    .text("GVA Growth %")
                    .call(function (t) {
                        //     var self = d3.select(this);
                        var s = t.text().split(' ');
                        t.text('');
                        t.append("tspan")
                            .attr("fill", "currentColor")
                            .attr("x", t._groups[0][0].x['animVal'][0]['value'])
                            .attr("y", t._groups[0][0].y['animVal'][0]['value'] - 12)
                            .attr("dy", "1em")
                            .style('fill', gvaColorCode)
                            .text(s[0]);
                        t.append("tspan")
                            .attr("fill", "currentColor")
                            .attr("x", t._groups[0][0].x['animVal'][0]['value'])
                            .attr("y", t._groups[0][0].y['animVal'][0]['value'])
                            .attr("dy", "1em")
                            .style('fill', gvaColorCode)
                            .text(s[1] + ' ' + s[2]);
                    });
            }
        }

        function addIIPLine(data) {
            // Add the line 2
            IIPLine = svg.append("path")
                .datum(data)
                .attr("fill", "none")
                .style("stroke", iipColorCode)
                .style("stroke-width", "1.5")
                .attr("opacity", "0.6")
                .attr("d", d3.line()
                    .x(function (d) {
                        return x1(d3.timeParse("%m-%Y")(d.category))
                    })
                    .x(function (d) {
                        return x2(d3.timeParse("%m-%Y")(d.category))
                    })
                    .x(function (d) {
                        return x3(d3.timeParse("%m-%Y")(d.category))
                    })
                    .y(function (d) { return y2(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0))
                );
        }
        function removeIIPLine() {
            IIPLine.remove();
            yAxis_right_for_iip_tick.remove();
        }
        function addPMILine(data) {
            // Add the line 2
            PMILine = svg.append("path")
                .datum(data)
                .attr("fill", "none")
                .style("stroke", pmiColorCode)
                .style("stroke-width", "1.5")
                .attr("opacity", "0.6")
                .attr("d", d3.line()
                    .x(function (d) {
                        return x1(d3.timeParse("%m-%Y")(d.category))
                    })
                    .x(function (d) {
                        return x2(d3.timeParse("%m-%Y")(d.category))
                    })
                    .x(function (d) {
                        return x3(d3.timeParse("%m-%Y")(d.category))
                    })
                    .y(function (d) { return y3(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0))
                );

        }
        function removePMILine() {
            PMILine.remove();
            yAxis_right_for_pmi_tick.remove();
        }

        function addGVALine(data) {
            // Add the line 2
            GVALine = svg.append("path")
                .datum(data)
                .attr("fill", "none")
                .style("stroke", gvaColorCode)
                .style("stroke-width", "1.5")
                .attr("opacity", "0.6")
                .attr("d", d3.line()
                    .x(function (d) {
                        return x1(d3.timeParse("%m-%Y")(d.category))
                    })
                    .x(function (d) {
                        return x2(d3.timeParse("%m-%Y")(d.category))
                    })
                    .x(function (d) {
                        return x3(d3.timeParse("%m-%Y")(d.category))
                    })
                    .y(function (d) { return y4(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0))
                );

        }
        function removeGVALine() {
            GVALine.remove()
            yAxis_right_for_gva_tick.remove();

        }

        function monthNameClickEvent() {
            x_axis_months.selectAll(".tick")._parents.forEach(function (d1, i) {
                var data = d3.select(d1).data();//get the data asociated with y axis
                let totalIndex = x_axis_months.selectAll(".tick")._parents.length - 1
                if (i == totalIndex) {
                    d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on load
                    //creating on onload and render at last index
                    svg.append('rect')
                        .attr('x', default_width)
                        .attr('y', 0)
                        .attr('width', 25)
                        .attr('height', height + 40)
                        .attr("id", "rect_xaxis_context")
                        .attr('stroke', 'black')
                        .style("stroke-dasharray", ("3, 1"))
                        .style("opacity", 0.3)
                        .transition()
                        .duration(1000)
                        .attr('cx', function (d) {
                            return d;
                        })
                    const tooltip_pointer = getPointsOnCurve(mydata[i].category, mydata[i].value);
                    addTooltip(tooltip_pointer, mydata[i], true);
                    d3.select(`.x_month_name_context_${i}`).classed("active", true);
                }

                d3.select(d1).on("click", function (event, d) {
                    d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on load
                    const formattedDate = d3.timeFormat("%m-%Y")(d);
                    renderPointerOnLine(formattedDate)
                });
            });
        }
        monthNameClickEvent();

        function renderPointerOnLine(date) {
            d3.selectAll("#rect_xaxis_context").remove();
            const dataValue = mydata.filter((x) => x.category == date)[0];
            const tooltip_pointer = getPointsOnCurve(dataValue.category, dataValue.value);
            const lastIndex = x_axis_months.selectAll(".tick")._parents.length - 1;
            const indexOfPoint = mydata.findIndex(x => x.category == dataValue.category);

            if (lastIndex == indexOfPoint) {
                // To apply circles animation on last index
                addTooltip(tooltip_pointer, dataValue, true);
            } else {
                // Not to apply circles animation on other points on curve
                addTooltip(tooltip_pointer, dataValue, false);
            }
            //updating x value data & re-rendering
            d3.select("#rect_xaxis_context").remove();
            svg.append('rect')
                .attr('x', tooltip_pointer.x + 0.8)
                .attr('y', 0)
                .attr('width', 25)
                .attr('height', height + 40)
                .attr("id", "rect_xaxis_context")
                .attr('stroke', 'black')
                .style("stroke-dasharray", ("3, 1"))
                .style("opacity", 0.3)
                .transition()
                .duration(1000)
                .attr('cx', function (d) {
                    return d;
                })

            const indexOfObj = mydata.findIndex(x => x.category == date);
            d3.select(`.x_month_name_context_${indexOfObj}`).classed("active", true);
        }
        function getPointsOnCurve(category, value) {
            let co_ord = { x: 0, y: 0 };
            let x_value = x1(parseDate(category));
            let y_value = y1(value);
            co_ord.x = x_value;
            co_ord.y = y_value;
            return co_ord;
        }

        function addTooltip(mousePointer, dataValue, isLatestIdx) {
            tooltip
                .transition()
                .duration(100)
                .style("opacity", 0.9);
            tooltip
                .html(dataValue.value)
                .style("left", (mousePointer.x - 10) + "px")
                .style("top", (mousePointer.y - 35) + "px");
            radiation
                .transition()
                .duration(100)
                .attr('cx', function (d) {
                    return d;
                })
                .style("opacity", 0.9);
            if (isLatestIdx) {
                radiation
                    .html("<span id=\"radiation\" class=\"animating_circle\">" +
                        "<span class=\"circle_waves circle_one\"></span> " +
                        "<span class=\"circle_waves circle_two\"></span> " +
                        "<span class=\"circle_waves circle_three\"></span>" +
                        "</span>")
                    .style("left", Math.ceil(mousePointer.x + 15) + "px")
                    .style("top", Math.ceil(mousePointer.y + 10) + "px");
            } else {
                radiation
                    .html("<span id=\"radiation\" class=\"animating_circle\">" +
                        "<span class=\"circle_waves circle_three\"></span>" +
                        "</span>")
                    .style("left", Math.ceil(mousePointer.x + 15) + "px")
                    .style("top", Math.ceil(mousePointer.y + 10) + "px");
            }
        }

        function addLinesForYears() {
            let years: any = [];
            mydata.forEach(element => {
                let year = element.category.split('-')[1];
                const i = years.findIndex(e => e['year'] === year);
                if (i == -1)
                    years.push({ "year": year, "count": 1 })
                else
                    years[i]["count"]++;
            });
            const firstLine = svg.append("g"); // first line
            firstLine.append('line')
                .attr('x1', 0.2)
                .attr('y1', 0)
                .attr('x2', 0.2)
                .attr('y2', height + 60)
                .attr('stroke', '#E1E1E1')
                .attr("stroke-width", "1");
            years.forEach(year => {
                let yearSvg = svg.append("g");
                if (years.indexOf(year) == 0) {
                    yearSvg.append('line')
                        .attr('x1', (25 * year.count)+2)
                        .attr('y1', 0)
                        .attr('x2', (25 * year.count)+2)
                        .attr('y2', height + 60)
                        .attr('stroke', '#959595')
                        .attr("stroke-width", "1")
                        .attr("stroke-dasharray", "2")
                        .attr("class", "year-line");
                } else if (years.indexOf(year) == years.length - 1) {
                    yearSvg.append('line')
                        .attr('x1', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) + (years.indexOf(year)*6.5)))
                        .attr('y1', 0)
                        .attr('x2', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) + (years.indexOf(year)*6.5)))
                        .attr('y2', height + 60)
                        .attr('stroke', '#E1E1E1')
                        .attr("stroke-width", "1")
                        .attr("class", "year-line");
                } else {
                    yearSvg.append('line')
                        .attr('x1', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) + (years.indexOf(year)*7.5)))
                        .attr('y1', 0)
                        .attr('x2', (25 * year.count) + (300 * years.indexOf(year) - (25 * (12 - years[0].count)) + (years.indexOf(year)*7.5)))
                        .attr('y2', height + 60)
                        .attr('stroke', '#959595')
                        .attr("stroke-width", "1")
                        .attr("stroke-dasharray", "2")
                        .attr("class", "year-line");
                }
            });
            //top line of graph
            const top_line = svg.append("g");
            top_line.append("line")
                .attr("x1", default_width + 25)
                .attr("x2", 0)
                .attr("y1", 0)
                .attr("y2", 0)
                .style("stroke", "#E1E1E1")
                .attr("stroke-width", "0.7");
        }
        addLinesForYears();
        $("#IIPCheckbox").attr("checked", "true");
        iipCheckBoxEnabled();
        $("#context_graph_svg").scrollLeft(width)

    }
}
