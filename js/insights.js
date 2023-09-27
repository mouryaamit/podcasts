//Read the data
d3.json("http://192.168.0.104/SumpoornJSON/sumpoorn_test_json1.json",

    // When reading the csv, I must format variables:
    function (d) {
        return { category: parseDate(d.category), value: d.value }
    }).then(
        // Now I can use this dataset:
        function (data) {
            // console.log('json data ', data);
            const jsondata = data;
            const mydata = jsondata.IndexGeneration;
            const indexData = jsondata.Commentary;
            let prev_month_data;
            let next_month_data;
            // set the dimensions and margins of the graph
            const margin = {
                top: 50,
                right: 50,
                bottom: 50,
                left: 150
            },
                width = 1100 - margin.left - margin.right,
                height = 400 - margin.top - margin.bottom;

            const y_left_coordinates = ['0.00', '0.10', '0.20', '0.30', '0.40', '0.50', '0.60', '0.70', '0.80', '0.90', '1.00'];
            const y_right_coordinates = ['0.00', '0.25', '0.45', '0.50', '0.52', '0.54', '0.60', '0.65', '0.75', '1.00']; //'0.00',
            const y_com_coordinates = ['0.0', '0.2', '0.4', '0.6', '0.8', '1.0'];
            const parseDate = d3.timeParse("%m-%Y");

            // Add X axis 1 --> it is a month format
            const x1 = d3.scaleTime()
                .domain(d3.extent(mydata, function (d) { return parseDate(d.category); }))
                .range([0, width]);

            // Add X axis 2 --> it is a year format
            const x2 = d3.scaleTime()
                .domain(d3.extent(mydata, function (d) { return parseDate(d.category); }))
                .range([0, width]);

            // Add X axis 3 --> it is a month number format
            const x3 = d3.scaleTime()
                .domain(d3.extent(mydata, function (d) { return parseDate(d.category); }))
                // .range([0, width])
                .range([10, width + 10]);

            // Add Y axis - left side
            const y1 = d3.scaleLinear()
                // .domain([0, d3.max(mydata, function (d) { return +d.value; })])
                .domain([0, 1.0])
                .nice()
                .range([height, 0]);

            // Add Y axis - right side
            const y2 = d3.scaleLinear()
                // .domain([0, d3.max(mydata, function (d) { return +d.value; })])
                .domain([0, 1.0])
                .range([height, 0]);

            var xAxis_month_number = d3.axisBottom(x3)
                .tickFormat(d3.timeFormat('%m'))
                .tickSize((height))
                .ticks(width / 12)
                ;

            const xAxis_month_name = d3.axisBottom(x1)
                .tickSize([-(height)])
                .ticks(width / 12)
                .tickFormat(d3.timeFormat('%b'))
                ;

            const xAxis_year = d3.axisBottom(x2)
                .tickSize([35])
                .ticks(width / 12)
                .tickFormat(function (d, i) {
                    const monNum_fmt = d3.timeFormat('%m')(d);
                    const year_fmt = d3.timeFormat('%Y')(d);
                    if (monNum_fmt == '01') {
                        return year_fmt;
                    } else if (monNum_fmt == '10' && year_fmt == '2019') {
                        return year_fmt;
                    }
                })
                ;

            const yAxis_left = d3.axisLeft(y1)
                .tickSize(0)
                .tickValues(y_left_coordinates)
                ;

            const yAxis_right = d3.axisRight(y2)
                .tickSize([-width - 20]) // +20
                .tickValues(y_right_coordinates)
                .tickFormat(
                    function (d) {
                        return formatYaxisForText(d);
                    }
                )
                ;

            const svg = d3.select("#my_dataviz_insights")
                .append("svg") //append svg element inside #chart
                .attr("width", width + margin.left + margin.right + 200) //set width
                .attr("height", height + margin.top + margin.bottom + 100) //set height
                .append("g")
                // .attr("stroke", "grey")
                // .attr("stroke-width", "0.1")
                .attr("transform", `translate(${margin.left},${margin.top})`);

            const month_number = svg.append("g")
                .attr("transform", `translate(0, ${height})`)
                .attr("stroke", "grey")
                .attr("stroke-width", "0")
                // .attr("stroke-dasharray","1")
                .attr("opacity", ".6")
                .attr("class", "x_month_num")
                .call(xAxis_month_number)
                .selectAll(".tick text")
                // .attr("x", "0.8em")
                .attr("x", "0em")
                .attr("y", "-1.3em")
                ;

            const month_name = svg.append("g")
                .attr("transform", `translate(0, ${height})`)
                .attr("stroke", "grey")
                .attr("stroke-width", "0.1")
                // .attr("stroke-dasharray","1")
                .attr("opacity", ".6")
                .attr("class", "x_month_name")
                .call(xAxis_month_name)
                // .selectAll("text")
                // .selectAll(".tick text")
                .selectAll(".tick text") // select all the y tick texts
                .call(function (t) {
                    t.each(function (d) { // for each one
                        var self = d3.select(this);
                        if (self.text() == 'May') {
                            var s = self.text()
                            self.text('');
                            self.append("tspan")
                                .attr("fill", "currentColor")
                                .attr("x", '-1.7em')
                                .text(s);
                        } else if (self.text() == 'Oct') {
                            var s = self.text()
                            self.text('');
                            self.append("tspan")
                                .attr("fill", "currentColor")
                                .attr("x", '-1.9em')
                                .text(s);
                        } else if (self.text() == 'Jul') {
                            var s = self.text()
                            self.text('');
                            self.append("tspan")
                                .attr("fill", "currentColor")
                                .attr("x", '-2em')
                                .text(s);
                        }
                    })
                })
                .attr("x", "-1.8em")
                // .attr("y", "3em")
                .attr("y", "0.5em")
                .attr("transform", function (d) {
                    return "rotate(-90)"
                })
                .attr("class", function (d, i) { return `x_month_name x_month_name_${i}`; })
                .style("cursor", "pointer")
                ;

            const month_year = svg.append("g")
                .attr("transform", `translate(0, ${height})`)
                .attr("stroke", "grey")
                .attr("stroke-width", "0.1")
                // .attr("stroke-dasharray","1")
                .attr("opacity", ".6")
                .attr("class", "x_month_year")
                .call(xAxis_year)
                .selectAll(".tick text")
                .attr("x", "1.5em")
                .attr("y", "4em")
                .style("font-weight", "bold")
                .style("fill", "black")
                ;

            const y_points = svg.append("g")
                .attr("stroke", "grey")
                .attr("stroke-width", "0.1")
                .attr("opacity", ".6")
                .call(yAxis_left)
                .append("text")
                .attr("class", "axis-title")
                .attr("x", "-10em")
                .attr("y", "-2.5em")
                .style("text-anchor", "end")
                .attr("fill", "#2FB36B")
                .attr("transform", "rotate(-90)")
                .text("Jocata Sumpoorn")
                ;

            const y_text = svg.append("g")
                .attr("stroke", "grey")
                .attr("stroke-width", "0.1")
                .attr("opacity", "1")
                .attr("transform", `translate(${width + 19},0)`) //+20
                .call(yAxis_right)
                // .selectAll("text")
                .selectAll('.tick text') // select all the y tick texts
                .call(function (t) {
                    t.each(function (d) { // for each one
                        var self = d3.select(this);
                        if (self.text().indexOf(' ') >= 0) {
                            var s = self.text().split(' ');  // get the text and split it
                            self.text(''); // clear it out
                            self.append("tspan") // insert two tspans
                                .attr("fill", "currentColor")
                                .attr("x", 15)
                                .attr("y", function (d, i) {
                                    if (s[1] == "Contraction") return 40;
                                    else return 5;
                                })
                                .attr("dy", "1em")
                                .text(s[0]);
                            self.append("tspan")
                                .attr("fill", "currentColor")
                                .attr("x", 15)
                                .attr("y", function (d, i) {
                                    if (s[1] == "Contraction") return 55;
                                    else return 20;
                                })
                                .attr("dy", "1em")
                                .text(s[1]);
                        }
                    })
                })
                .style("cursor", "pointer")
                .attr("x", function (d, i) {
                    return formatYaxisForXvalue(d, i);
                })
                .attr("y", function (d, i) {
                    return formatYaxisForYvalue(d, i);
                })
                .attr("class", function (d, i) { return `y-axis-titles y-axis-title_${i}`; })
                ;

            function addLinesForYears() {
                const year_1 = svg.append("g"); //2019
                year_1.append('line')
                    .attr('x1', 0)
                    .attr('y1', 0)
                    .attr('x2', 0)
                    .attr('y2', height + 58)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.5")
                    // .attr("stroke-dasharray", "2")
                    ;
                const year_2 = svg.append("g"); //2020
                year_2.append('line')
                    .attr('x1', 61.5)
                    .attr('y1', 0)
                    .attr('x2', 61.5)
                    .attr('y2', height + 58)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.7")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_3 = svg.append("g"); //2021
                year_3.append('line')
                    .attr('x1', 301.5)
                    .attr('y1', 0)
                    .attr('x2', 301.5)
                    .attr('y2', height + 58)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.7")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_4 = svg.append("g"); //2022
                year_4.append('line')
                    .attr('x1', 541.5)
                    .attr('y1', 0)
                    .attr('x2', 541.5)
                    .attr('y2', height + 58)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.7")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_5 = svg.append("g"); //2023
                year_5.append('line')
                    .attr('x1', 781.5)
                    .attr('y1', 0)
                    .attr('x2', 781.5)
                    .attr('y2', height + 58)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.7")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_6 = svg.append("g"); //2019
                year_1.append('line')
                    .attr('x1', width + 19)
                    .attr('y1', 0)
                    .attr('x2', width + 19)
                    .attr('y2', height + 58)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.5")
                    // .attr("stroke-dasharray", "2")
                    ;
            }
            addLinesForYears();

            function addFlags() {
                let flag1_values = getPointsOnCurve("03-2020", 0.37);
                let flag2_values = getPointsOnCurve("02-2021", 0.63);
                let x_1 = flag1_values.x;
                let y_1 = flag1_values.y;
                let x_2 = flag2_values.x;
                let y_2 = flag2_values.y;
                const flag1_focus = svg.append("g")
                    .attr("class", "flag1_focus")
                    // .attr("transform", "translate(" + 104 + "," + 198 + ")")
                    .attr("transform", "translate(" + (x_1 + 10) + "," + y_1 + ")")
                    .style("opacity", 0.9)
                    ;

                flag1_focus.append("circle")
                    .attr("r", 4.5)
                    ;
                const flag2_focus = svg.append("g")
                    .attr("class", "flag2_focus")
                    // .attr("transform", "translate(" + 329 + "," + 92 + ")")
                    .attr("transform", "translate(" + (x_2 + 10) + "," + y_2 + ")")
                    .style("opacity", 0.9)
                    ;

                flag2_focus.append("circle")
                    .attr("r", 4.5)
                    ;

                const covid_2020 = svg.append('g')
                    // .attr("class", "flag1_text")
                    // .attr("transform", "translate(" + (x_1-210) + "," + (y_1-150) + ")")
                    ;
                covid_2020.append('rect')
                    .attr("transform", "translate(" + (x_1 - 65) + "," + (y_1 + 35) + ")")
                    .attr('width', 80)
                    .attr('height', 50)
                    // .attr("id","rect_flag1")
                    .attr("fill", "white")
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.3")
                    .style("opacity", 1)
                    ;
                covid_2020.append("text")
                    .html("Covid-19 Lockdown")
                    // .attr("transform", "translate(" + (x_1+5) + "," + (y_1+75) + ")")
                    .attr("x", x_1 - 25)
                    .attr("y", y_1 + 35)
                    .attr("width", 25)
                    .attr("class", "flags_text")
                    .attr("text-anchor", "middle")
                    .style("font-size", "14px")
                    .style("fill", "grey")
                    // .text("Covid 19 Lockdown")
                    ;
                covid_2020.append('line')
                    .attr('x1', x_1 + 9)
                    .attr('y1', y_1 - 10)
                    .attr('x2', x_1 + 9)
                    .attr('y2', y_1 + 35)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.3")
                    ;
                const covid_2021 = svg.append('g')
                    // .attr("class", "flag2_text")
                    ;
                covid_2021.append('rect')
                    .attr("transform", "translate(" + (x_2 - 75) + "," + (y_2 - 100) + ")")
                    .attr('width', 90)
                    .attr('height', 50)
                    // .attr("id","rect_flag2")
                    .attr("fill", "white")
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.3")
                    .style("opacity", 1)
                    ;
                covid_2021.append("text")
                    .html("Covid-19 Recovery")
                    // .attr("transform", "translate(" + (x_2-35) + "," + (y_2-80) + ")")
                    .attr("x", x_2 - 30)
                    .attr("y", y_2 - 100)
                    .attr("width", 25)
                    .attr("class", "flags_text")
                    .attr("text-anchor", "middle")
                    .style("font-size", "14px")
                    .style("fill", "grey")
                    // .text("Covid 19 Recovery")
                    ;
                covid_2021.append('line')
                    .attr('x1', x_2 + 10)
                    .attr('y1', y_2)
                    .attr('x2', x_2 + 10)
                    .attr('y2', y_2 - 50)
                    .attr('stroke', 'grey')
                    .attr("stroke-width", "0.3")
                    ;
            };

            function wrap(text) {
                text.each(function () {
                    var text = d3.select(this);
                    var words = text.text().split(/\s+/).reverse();
                    var lineHeight = 20;
                    var width = parseFloat(text.attr('width'));
                    var y = parseFloat(text.attr('y'));
                    var x = text.attr('x');
                    var anchor = text.attr('text-anchor');

                    var tspan = text.text(null).append('tspan').attr('x', x).attr('y', y).attr('text-anchor', anchor);
                    var lineNumber = 0;
                    var line = [];
                    var word = words.pop();

                    while (word) {
                        line.push(word);
                        tspan.text(line.join(' '));
                        if (tspan.node().getComputedTextLength() > width) {
                            lineNumber += 1;
                            line.pop();
                            tspan.text(line.join(' '));
                            line = [word];
                            tspan = text.append('tspan').attr('x', x).attr('y', y + lineNumber * lineHeight).attr('anchor', anchor).text(word);
                        }
                        word = words.pop();
                    }
                });
            }

            addFlags();
            d3.selectAll('.flags_text').call(wrap);
            // d3.selectAll('.y-axis-titles').call(wrap);

            const tooltip = d3.select("#my_dataviz_insights")
                .append("div")
                .attr("class", "tooltip-area")
                .style("opacity", 0)
                ;
            const radiation = d3.select("#my_dataviz_insights")
                .append("div")
                .attr("class", "animating_circle")
                .style("opacity", 0)
                ;

            function addTooltip(mousePointer, dataValue, event, flag) {
                // if (flag) {
                //     // focus.style("opacity", 0.9)
                //     //     .attr("transform", "translate(" + mousePointer[0] + "," + mousePointer[1] + ")")
                //     // ;
                //     tooltip
                //         .transition()
                //         .duration(100)
                //         .style("opacity", 0.9);
                //     tooltip
                //         .html(dataValue.value)
                //         .style("left", (event.pageX) + "px")
                //         .style("top", (event.pageY - 30) + "px");
                //     radiation
                //         .transition()
                //         .duration(2000)
                //         .attr('cx', function (d) {
                //             return d;
                //         }).style("opacity", 0.9)
                //     radiation
                //         .html("<span id=\"radiation\" class=\"animating_circle\">" +
                //             "<span class=\"circle_waves circle_one\"></span> " +
                //             "<span class=\"circle_waves circle_two\"></span> " +
                //             "<span class=\"circle_waves circle_three\"></span>" +
                //             "</span>")
                //         .style("left", (mousePointer.x + 83.5) + "px") //(event.pageX) +
                //         .style("top", (mousePointer.y - 391) + "px"); //(event.pageY - 30) +
                // } 
                // else {
                // focus.style("opacity", 0.9)
                //     .attr("transform", "translate(" + (mousePointer.x + 10) + "," + (mousePointer.y) + ")")
                // ;
                tooltip
                    .transition()
                    .duration(100)
                    .style("opacity", 0.9);
                tooltip
                    .html(dataValue.value)
                    .style("left", (mousePointer.x + width) - 740 + "px") //(event.pageX) +
                    .style("top", (mousePointer.y + height) - 115 + "px"); //(event.pageY - 30) +
                ;
                radiation
                    .transition()
                    .duration(2000)
                    .attr('cx', function (d) {
                        return d;
                    }).style("opacity", 0.9)
                radiation
                    .html("<span id=\"radiation\" class=\"animating_circle\">" +
                        "<span class=\"circle_waves circle_one\"></span> " +
                        "<span class=\"circle_waves circle_two\"></span> " +
                        "<span class=\"circle_waves circle_three\"></span>" +
                        "</span>")
                    .style("left", (mousePointer.x - 1136) + "px") //(event.pageX) +
                    .style("top", (mousePointer.y - 204) + "px"); //(event.pageY - 30) +
                // }
            }

            function formatYaxisForText(d) {
                // const data = d3.format(".2"); // returns decimal format
                if (d == 0.25) {
                    return "Substantial Contraction";
                } else if (d == 0.45) {
                    return "Significant";
                } else if (d == 0.50) {
                    return "Moderate";
                } else if (d == 0.52) {
                    return "Mild";
                } else if (d == 0.54) {
                    return "Marginal";
                } else if (d == 0.60) {
                    return "Mild";
                } else if (d == 0.65) {
                    return "Moderate";
                } else if (d == 0.75) {
                    return "Significant";
                } else if (d == 1.00) {
                    return "Substantial Expansion";
                }
                return '';
            }

            function formatYaxisForYvalue(d, i) {
                if (d == 0.25) {
                    return "5em";
                } else if (d == 0.45) {
                    return "4.0em";
                } else if (d == 0.50) {
                    return "0.7em";
                } else if (d == 0.52) {
                    return "0.40em";
                } else if (d == 0.54) {
                    return "-0.5em";
                } else if (d == 0.60) {
                    return "0.8em";
                } else if (d == 0.65) {
                    return "0.6em";
                } else if (d == 0.75) {
                    return "0.6em";
                } else if (d == 1.00) {
                    return "0.8em";
                }
                return '';
            }

            function formatYaxisForXvalue(d, i) {
                if (d == 0.25) {
                    return "1.5em";
                } else if (d == 0.45) {
                    return "1.5em";
                } else if (d == 0.50) {
                    return "1.5em";
                } else if (d == 0.52) {
                    return "6em";
                } else if (d == 0.54) {
                    return "6em";
                } else if (d == 0.60) {
                    return "1.5em";
                } else if (d == 0.65) {
                    return "1.5em";
                } else if (d == 0.75) {
                    return "1.5em";
                } else if (d == 1.00) {
                    return "1.5em";
                }
                return '';
            }

            function getYaxisValuesForLines(d) {
                let hAndyValues = { y1: 0, x2: width+170 };
                    if (d == 0.00) {
                        hAndyValues.y1 = height;
                        hAndyValues.x2 = width+110;
                    } else if (d == 0.25) {
                        hAndyValues.y1 = 225;
                        hAndyValues.x2 = width+110;
                    } else if (d == 0.45) {
                        hAndyValues.y1 = 165;
                        hAndyValues.x2 = width+110;
                    } else if (d == 0.50) {
                        hAndyValues.y1 = 150;
                        hAndyValues.x2 = width+60;
                    } else if (d == 0.52) {
                        hAndyValues.y1 = 144.7;
                        hAndyValues.x2 = width+60;
                    } else if (d == 0.54) {
                        hAndyValues.y1 = 138.7;
                        hAndyValues.x2 = width+60;
                    } else if (d == 0.60) {
                        hAndyValues.y1 = 120;
                        hAndyValues.x2 = width+110;
                    } else if (d == 0.65) {
                        hAndyValues.y1 = 105;
                        hAndyValues.x2 = width+110;
                    } else if (d == 0.75) {
                        hAndyValues.y1 = 75;
                        hAndyValues.x2 = width+110;
                    } else if (d == 1.00) {
                        hAndyValues.y1 = 0;
                        hAndyValues.x2 = width+170;
                    }
                    return hAndyValues;
            }
            function formatHandYvaluesYaxis(d, isMouseover) { 
                if (isMouseover) {
                    let hAndyValues = { y: 0, h: 0 };
                    if (d == 0.25) {
                        hAndyValues.y = 225;
                        hAndyValues.h = 75;
                    } else if (d == 0.45) {
                        hAndyValues.y = 165;
                        hAndyValues.h = 60;
                    } else if (d == 0.50) {
                        hAndyValues.y = 150;
                        hAndyValues.h = 15;
                    } else if (d == 0.60) {
                        hAndyValues.y = 120;
                        hAndyValues.h = 19;
                    } else if (d == 0.65) {
                        hAndyValues.y = 105;
                        hAndyValues.h = 15;
                    } else if (d == 0.75) {
                        hAndyValues.y = 75;
                        hAndyValues.h = 30;
                    } else if (d == 1.00) {
                        hAndyValues.y = 0;
                        hAndyValues.h = 75;
                    }
                    return hAndyValues;
                } else {
                    let hAndyValues = { y: 0, h: 0 };
                    if (d == 0.45) {
                        hAndyValues.y = 165;
                        hAndyValues.h = 60;
                    } else if (d == 0.52) {
                        hAndyValues.y = 145;
                        hAndyValues.h = 5;
                    } else if (d == 0.60) {
                        hAndyValues.y = 120;
                        hAndyValues.h = 19;
                    } else if (d == 0.75) {
                        hAndyValues.y = 75;
                        hAndyValues.h = 30;
                    }
                    return hAndyValues;
                }
            }

            function getPointsOnCurve(category, value) {
                let co_ord = { x: 0, y: 0 };
                let x_value = x1(parseDate(category));
                let y_value = y1(value);
                co_ord.x = x_value;
                co_ord.y = y_value;
                return co_ord;
            }

            function renderPointerOnLine(date) {
                d3.selectAll("#rect_xaxis").remove(); // to remove highlighting of already selected xaxis data
                d3.selectAll("#rect_yaxis").remove(); // to remove highlighting of yaxis data
                
                const dataValue = mydata.filter((x) => x.category == date)[0];
                const tooltip_pointer = getPointsOnCurve(dataValue.category, dataValue.value);
                addTooltip(tooltip_pointer, dataValue, "", false);

                svg.append('rect')
                    //.attr('x', event.x-80)
                    .attr('x', tooltip_pointer.x)
                    .attr('y', 0)
                    .attr('width', 19)
                    .attr('height', 340)
                    .attr("id", "rect_xaxis")
                    .attr('stroke', 'black')
                    .style("stroke-dasharray", ("3, 1"))
                    .style("opacity", 0.3)
                    .transition()
                    .duration(1000)
                    //.ease(d3.easeCubicOut)
                    .attr('cx', function (d) {
                        return d;
                    });
                const indexOfObj = mydata.findIndex(x => x.category == dataValue.category);
                d3.select(`.x_month_name_${indexOfObj}`).classed("active", true); // xaxis selection
                d3.selectAll(".y-axis-titles").classed("active", false);
                // d3.selectAll("#commentary_graph").remove();
                checkSpecificPointOnYaxis(indexOfObj);
                setPrevAndNextMonthsSlider(dataValue);
                addCommentary(dataValue);
            }

            function highlightXaxis(dataValue, d) {
                const tooltip_pointer = getPointsOnCurve(dataValue.category, dataValue.value);
                svg.append('rect')
                    //.attr('x', event.x-80)
                    .attr('x', tooltip_pointer.x)
                    .attr('y', 0)
                    .attr('width', 19)
                    .attr('height', 340)
                    .attr("id", "rect_xaxis")
                    .attr('stroke', 'grey')
                    // .style("stroke-dasharray", ("3, 1"))
                    .style("opacity", 0.2)
                    .transition()
                    .duration(1000)
                    //.ease(d3.easeCubicOut)
                    .attr('cx', function (d) {
                        return d;
                    });
                const indexOfObj = mydata.findIndex(x => x.category == dataValue.category);
                // d3.select(`.x_month_name_${indexOfObj}`).classed("active", true ); // yaxis selection
                // d3.select(`.x_month_name_${indexOfObj}`).classed("select", true );
                if (d == 1.00 || d == 0.75 || d == 0.65 || d == 0.6) {
                    d3.select(`.x_month_name_${indexOfObj}`).classed("select_g", true);
                } else {
                    d3.select(`.x_month_name_${indexOfObj}`).classed("select_r", true);
                }
            }

            function checkSpecificPointsOnXaxis(d) {
                let hoverIndex = y_right_coordinates.indexOf(d);
                let beforeIndexValue = y_right_coordinates[hoverIndex - 1];
                let dataValues = mydata.filter((e) => {
                    return (e.value >= beforeIndexValue && e.value <= d);
                });
                // console.log('dv', dataValues);
                d3.selectAll("#rect_xaxis").remove();
                d3.selectAll(".x_month_name").classed("active", false); // yaxis selection
                // d3.selectAll(".x_month_name").classed("select", false);
                d3.selectAll(".x_month_name").classed("select_g", false);
                d3.selectAll(".x_month_name").classed("select_r", false);
                dataValues.forEach((eachValue) => {
                    highlightXaxis(eachValue, d);
                })
            }

            function yAxisMouseOver(event, d) {
                let handyValues = formatHandYvaluesYaxis(d, true);
                d3.select("#rect_yaxis").remove();
                svg.append('rect')
                    .attr('x', 0)
                    .attr('y', handyValues.y) //225, 165, 150, 120, 105, 75, 0
                    .attr('width', width + 110)
                    .attr('height', handyValues.h) //75, 60, 15, 19, 15, 30, 75
                    .attr("id", "rect_yaxis")
                    .attr("class", function () { // color change for different indices
                        if (d == 1.00 || d == 0.75 || d == 0.65 || d == 0.6) {
                            return "rect_yaxis_1";
                        } else {
                            return "rect_yaxis_2";
                        }
                    })
                    .attr('stroke', 'black')
                    .style("stroke-dasharray", ("3, 1"))
                    .style("opacity", "0.1")
                    .transition()
                    .duration(1000)
                    //.ease(d3.easeCubicOut)
                    .attr('cy', function (d) {
                        return d;
                    });
                checkSpecificPointsOnXaxis(d);
            }

            function addDefaultSelYaxis(d) {
                let handyValues = formatHandYvaluesYaxis(d, false);
                svg.append('rect')
                    .attr('x', 0)
                    .attr('y', handyValues.y) //225, 165, 150, 120, 105, 75, 0
                    .attr('width', width + 19)
                    .attr('height', handyValues.h) //75, 60, 15, 19, 15, 30, 75
                    .attr("id", "rect_def_yaxis")
                    .attr('stroke', 'black')
                    .style("stroke-dasharray", ("3, 1"))
                    .style("opacity", "0.1")
                    // .style("z-index", "-1")
                    .transition()
                    .duration(1000)
                    //.ease(d3.easeCubicOut)
                    .attr('cy', function (d) {
                        return d;
                    });

                let handyValues1 = getYaxisValuesForLines(d);
                svg.append("line")
                    .attr("x1", width+22)
                    .attr("x2", handyValues1.x2)
                    //.attr("y1", height+0.5)
                    //.attr("y2", height+0.5)
                    .attr("y1", handyValues1.y1)
                    .attr("y2", handyValues1.y1)
                    .style("opacity", 0.6)
                    .style("stroke", "grey")
                    .attr("stroke-width", 0.5)
                    ;
            }

            function addSelectionYaxis() {
                y_text.selectAll(".tick")._parents.forEach(function (d_child, i) {
                    addDefaultSelYaxis(d_child.__data__, i);
                    d3.select(d_child)
                        .on("mouseover", function (event, d) {
                            if (d != 0.52 && d != 0.54) {
                                d3.selectAll(".y-axis-titles").classed("active", false);
                                d3.select(this).classed("active", true); // should then accept fill from CSS
                                yAxisMouseOver(event, d);
                            }
                        })
                        .on("mouseout", (event, d) => {
                            // d3.select("#rect_yaxis").remove();
                        })
                        ;
                });
            }
            addSelectionYaxis();

            // const findClosest = (array, goal) => {
            //     if (array.length > 0) {
            //         let index = 0;
            //         let error = Math.abs(array[0] - goal);
            //         for (let i = 1; i < array.length; ++i) {
            //             const e = Math.abs(array[i] - goal);
            //             if (e < error) {
            //                 index = i;
            //                 error = e;
            //             }
            //         }
            //         return index;
            //     }
            //     return -1;
            // };

            function findClosestYvalue(goal) {
                if (goal <= 0.25) {
                    return 1;
                } else if (goal > 0.25 && goal <= 0.45) {
                    return 2;
                } else if (goal > 0.45 && goal <= 0.50) {
                    return 3;
                } else if (goal > 0.50 && goal <= 0.52) {
                    return 4;
                } else if (goal > 0.52 && goal <= 0.54) {
                    return 5;
                } else if (goal > 0.54 && goal <= 0.60) {
                    return 6;
                } else if (goal > 0.60 && goal <= 0.65) {
                    return 7;
                } else if (goal > 0.65 && goal <= 0.75) {
                    return 8;
                } else if (goal > 0.75 && goal <= 1.00) {
                    return 9;
                }
                return -1;
            };

            function checkSpecificPointOnYaxis(i) {
                const yOfx = mydata[i].value;
                // const closestIndex = findClosest(y_right_coordinates, yOfx);
                const closestIndex = findClosestYvalue(yOfx);
                if (closestIndex !== -1) {
                    d3.select(`.y-axis-title_${closestIndex}`).classed("active", true);
                }
            }

            function clickXaxis() {
                month_name.selectAll(".tick")._parents.forEach(function (d_child, i) {
                    // var data = d3.select(d_child).data();//get the data asociated with x axis
                    let totalIndex = month_name.selectAll(".tick")._parents.length - 1;
                    if (i == totalIndex) {
                        d3.selectAll(".x_month_name").classed("active", false); // xaxis selection on load
                        // d3.selectAll(".x_month_name").classed("select", false);
                        d3.selectAll(".x_month_name").classed("select_g", false);
                        d3.selectAll(".x_month_name").classed("select_r", false);
                        svg.append('rect')
                            .attr('x', width)
                            .attr('y', 0)
                            .attr('width', 19)
                            .attr('height', 340)
                            .attr("id", "rect_xaxis")
                            .attr('stroke', 'black')
                            .style("stroke-dasharray", ("3, 1"))
                            .style("opacity", 0.3)
                            .transition()
                            .duration(1000)
                            //.ease(d3.easeCubicOut)
                            .attr('cx', function (d) {
                                return d;
                            });

                        const tooltip_pointer = getPointsOnCurve(mydata[i].category, mydata[i].value);
                        addTooltip(tooltip_pointer, mydata[i], event, false);
                        d3.select(`.x_month_name_${i}`).classed("active", true);
                        // highlight yaxis text
                        d3.selectAll(".y-axis-titles").classed("active", false);
                        checkSpecificPointOnYaxis(i);
                        setPrevAndNextMonthsSlider(mydata[i]);
                        addCommentary(mydata[i]);
                    }
                    d3.select(d_child)
                        .on("click", function (event, d) {
                            d3.selectAll(".x_month_name").classed("active", false); // xaxis selection on click
                            // d3.selectAll(".x_month_name").classed("select", false);
                            d3.selectAll(".x_month_name").classed("select_g", false);
                            d3.selectAll(".x_month_name").classed("select_r", false);
                            const formattedDate = d3.timeFormat("%m-%Y")(d);
                            renderPointerOnLine(formattedDate);
                        })
                });
            }
            clickXaxis();

            function createGraphForCommentary(graphData) {
                // d3.select(".mc_graph")
                //     .html(`mc_graph`)
                //     ;
                // set the dimensions and margins of the graph
                const margin = { top: 20, right: 10, bottom: 20, left: 40 },
                    width = 250 - margin.left - margin.right,
                    height = 200 - margin.top - margin.bottom;

                // Add X axis --> it is a date format
                const x1 = d3.scaleTime()
                    .domain(d3.extent(graphData, function (d) { return parseDate(d.category); }))
                    .range([0, width]);

                // Add Y axis - left side
                const y1 = d3.scaleLinear()
                    .domain([0, 1.0])
                    .nice()
                    .range([height, 0]);

                // Add Y axis - right side
                const y2 = d3.scaleLinear()
                    // .domain([0, d3.max(mydata, function (d) { return +d.value; })])
                    .domain([0, 1.0])
                    .range([height, 0]);

                const xa = d3.axisBottom(x1)
                    .tickSize(-height)
                    // .ticks(width/12)
                    .tickFormat(d3.timeFormat('%b'));

                const ya = d3.axisLeft(y1)
                    .tickSize([-width])
                    .tickValues(y_com_coordinates)
                    ;

                const ya_right = d3.axisRight(y2)
                    .tickSize([-width])
                    .tickValues(y_right_coordinates)
                    .tickFormat("")
                    ;

                // append the svg object to the body of the page
                d3.select('#monthly_commentary_chart').remove();
                const svg = d3.select("#commentary_graph")
                    .append("svg")
                    .attr('id', 'monthly_commentary_chart')
                    .attr("width", width + margin.left + margin.right)
                    .attr("height", height + margin.top + margin.bottom)
                    .append("g")
                    .attr("transform", `translate(${margin.left},${margin.top})`);
                svg.append("g")
                    .attr("transform", `translate(0, ${height})`)
                    // .attr("stroke", "grey")
                    .attr("stroke-dasharray", "1")
                    .attr("stroke-width", "0.5")
                    .attr("opacity", ".6")
                    .attr("class", "x_month_value")
                    .call(xa)
                    .append("text")      // text label for the x axis
                    .attr("x", 100)
                    .attr("y", 100)
                    .style("text-anchor", "middle")
                    .text("Date")
                    // .text(x1(parseDate(d.category)))
                    ;
                svg.append("g")
                    .attr("stroke", "grey")
                    .attr("stroke-width", "0")
                    .attr("opacity", ".6")
                    .attr("class", "y_month_value")
                    .call(ya)
                    .append("text")
                    .attr("class", "axis-title")
                    .attr("x", "-6em")
                    .attr("y", "-3.5em")
                    .style("text-anchor", "end")
                    .attr("fill", "#2FB36B")
                    .attr("transform", "rotate(-90)")
                    .style("font-size", "8px")
                    .text("Jocata Sumpoorn")
                    ;
                const yaright_text = svg.append("g")
                    .attr("stroke", "grey")
                    .attr("stroke-width", "0.1")
                    .attr("opacity", "1")
                    .attr("transform", `translate(${width},0)`) //+20
                    .call(ya_right)
                    ;
                yaright_text.selectAll(".tick")._groups[0].forEach(function (d_child, i) {
                    let handyValues = gethAndYValuesCommentary(d_child.__data__);
                    svg.append('rect')
                        .attr('x', 0)
                        .attr('y', handyValues.y) //225, 165, 150, 120, 105, 75, 0
                        .attr('width', width)
                        .attr('height', handyValues.h) //75, 60, 15, 19, 15, 30, 75
                        .attr("id", "rect_def_yaxis")
                        .attr('stroke', 'grey')
                        // .style("stroke-dasharray", ("3, 1"))
                        .style("opacity", "0.1")
                        .transition()
                        .duration(1000)
                        //.ease(d3.easeCubicOut)
                        .attr('cy', function (d) {
                            return d;
                        });
                });
                d3.selectAll("#infoIcon_2").remove();
                addInfoIcon(width + 10, height - 80, "#commentary_graph", "infoIcon_2");
                // Add the line
                svg.append("path")
                    .datum(graphData)
                    .attr("fill", "none")
                    .attr("stroke", "#69b3a2")
                    .attr("stroke-width", 1)
                    .attr("d", d3.line()
                        .x(d => x1(parseDate(d.category)))
                        .y(d => y1(d.value))
                    )
                // Add the points
                svg.append("g")
                    .selectAll("dot")
                    .data(graphData)
                    .join("circle")
                    .attr("cx", d => x1(parseDate(d.category)))
                    .attr("cy", d => y1(d.value))
                    .attr("r", 2)
                    .attr("fill", "#69b3a2")
                    ;
            }

            function gethAndYValuesCommentary(d) {
                // console.log('gethAndYValuesCommentary ', d);
                let hAndyValues = { y: 0, h: 0 };
                if (d == 0.45) {
                    hAndyValues.y = 89;
                    hAndyValues.h = 31;
                } else if (d == 0.52) {
                    hAndyValues.y = 78;
                    hAndyValues.h = 2;
                } else if (d == 0.60) {
                    hAndyValues.y = 65;
                    hAndyValues.h = 9;
                } else if (d == 0.75) {
                    hAndyValues.y = 41;
                    hAndyValues.h = 15;
                }
                return hAndyValues;
            }

            function addCommentary(dataValue) {
                let indexValue = dataValue.value;
                let expertData = (indexData.ExpertCommentary).filter((e) => {
                    return (e.Month == dataValue.category); // '06-2023'
                });
                let monthlyData = (indexData.MonthlyCommentary).filter((m) => {
                    return (m.Month == dataValue.category); // '06-2023'
                });
                let graphData = (indexData.MonthlyCommentaryGraph).filter((m) => {
                    return (m.Month == dataValue.category); // '06-2023'
                });

                if ((expertData.length > 0) && (monthlyData.length > 0) && (graphData.length > 0)) {
                    let monthlyC = monthlyData[0];
                    let expertC = expertData[0];
                    let graphC = graphData[0].monthList;
                    let current_month = d3.timeFormat('%b')(parseDate(expertC.Month));
                    let current_year = d3.timeFormat('%Y')(parseDate(expertC.Month));
                    // Left data
                    d3.select(".mc_title")
                        .html(`Jocata Sumpoorn`)
                        ;
                    d3.select(".mc_rating")
                        .html(`${indexValue}`)
                        ;
                    d3.select(".mc_body")
                        .html(`${monthlyC.comment}`)
                        ;
                    // Right data
                    d3.select('.prev_month')
                        .html(`May 2023`)
                        ;
                    d3.select(".ec_month_title") //.ec_month
                        .html(`${current_month} ${current_year}`)
                        ;
                    // d3.select(".ec_month_title")
                    //     .html(`${expertC.Title}`)
                    //     ;
                    d3.select('.next_month')
                        .html(`Jul 2023`)
                        ;
                    d3.select(".ec_title")
                        .html(`Expert Commentary`)
                        ;
                    d3.select(".ec_author")
                        .html(`${expertC.ExpertName}`)
                        ;
                    d3.select(".ec_author_designation")
                        .html(`${expertC.ExpertDetails}`)
                        ;
                    d3.select(".ec_message")
                        .html(`${expertC.ExpertCommentary}`)
                        ;
                    // Add graph here - MonthlyCommentaryGraph
                    createGraphForCommentary(graphC);
                }
            }

            function setPrevAndNextMonthsSlider(dataValue) {
                // console.log('setPrevAndNextMonthsSlider', dataValue);
                let expertData = (indexData.ExpertCommentary).filter((e) => {
                    return (e.Month == dataValue.category);
                });
                if (expertData.length > 0) {
                    let expertC = expertData[0];
                    let prev_month = d3.timeFormat('%b')(parseDate(expertC.previousMonth));
                    let next_month = d3.timeFormat('%b')(parseDate(expertC.nextMonth));
                    document.getElementById("prev_month").innerHTML = prev_month;
                    document.getElementById("next_month").innerHTML = next_month;
                    addSliderData(expertC.previousMonth, expertC.nextMonth);
                }
            }

            const clickPoint = (event, d) => {
                const mousePointer = d3.pointer(event);
                const x_orig = x1.invert(mousePointer[0]);
                const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
                const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
                d3.selectAll(".x_month_name").classed("active", false); // xaxis selection on curve selection
                // d3.selectAll(".x_month_name").classed("select", false);
                d3.selectAll(".x_month_name").classed("select_g", false);
                d3.selectAll(".x_month_name").classed("select_r", false);
                renderPointerOnLine(formattedDate);
            };

            function addInfoIcon(icon_w, icon_h, graph_id, icon_id) {
                let icon = d3.select(graph_id)
                    .append("div")
                    .attr("class", "infoIcon")
                    .attr("id", icon_id)
                    .style("position", "relative")
                    .style("cursor", "pointer")
                    .style("opacity", 0.5)
                    // .style("left", (-(width - 820)) + "px")
                    .style("left", icon_w + "px") //(event.pageX) +
                    // .style("top", (-(height + 135)) + "px")
                    .style("top", -(icon_h) + "px") //(event.pageY - 30) +
                    .on("click", function (evt, d) {
                        // console.log('comm ', evt);
                        // Position:
                        // top: 280px; left: 360px; // 531, 154
                        if (graph_id == "#my_dataviz_insights") {
                            const absX = evt.clientX + window.scrollX;
                            const absY = evt.clientY + window.scrollY;
                            document.getElementById("contextMenu").setAttribute('style', 'top: ' + (absY + 10) + 'px; left:' + (absX - 50) + 'px;');
                            document.getElementById("contextMenu").style.display = 'block'
                        } else {
                            const absX = evt.clientX + window.scrollX - 100;
                            const absY = evt.clientY + window.scrollY + 15;
                            document.getElementById("contextMenu").setAttribute('style', 'top: ' + (absY) + 'px; left:' + (absX) + 'px;');
                            document.getElementById("contextMenu").style.display = 'block';
                        }

                        let indexData = [];
                        let startYaxisPoint = ""
                        y_right_coordinates.forEach(function (index) {
                            let value = formatYaxisForText(index);
                            let da = new Object();
                            da.index = startYaxisPoint + "-" + index;
                            da.value = value;
                            indexData.push(da);
                            startYaxisPoint = index;
                        });
                        // console.log(indexData)
                        let infodata = ""
                        for (let i = indexData.length - 1; i >= 0; i--) {
                            if (i <= 3) {
                                if (i == 3)
                                    infodata += "<div style=\"padding: 2px;padding-bottom: 10px;padding-top: 10px;color:#960000\"><b>&#8595; Contraction</b></div><div style=\"padding: 2px;color:#960000\">" + indexData[i].value + " <span style=\"float:right;color:#960000\"> <span style=\"font-size: 10px;\">&#8594;</span> " + indexData[i].index + "</span></div>";
                                else
                                    infodata += "<div style=\"padding: 2px;color:#960000\">" + indexData[i].value + " <span style=\"float:right;color:#960000\"><span style=\"font-size: 10px;\">&#8594;</span>  " + indexData[i].index + "</span></div>";
                            } else {
                                if (i == indexData.length - 1)
                                    infodata += "<div style=\"padding: 2px;padding-bottom: 10px;color:green\"><b>&#8593; Expansion</b></div><div style=\"padding: 2px;color:green\">" + indexData[i].value + " <span style=\"float:right;color:green\"><span style=\"font-size: 10px;\">&#8594;</span>  " + indexData[i].index + "</span></div>";
                                else
                                    infodata += "<div style=\"padding: 2px;color:green\">" + indexData[i].value + " <span style=\"float:right;color:green\"><span style=\"font-size: 10px;\">&#8594;</span>  " + indexData[i].index + "</span></div>";
                            }
                        }
                        document.getElementById("yaxisContentInfo").innerHTML = infodata;
                    });

                document.getElementById("closeInfo").addEventListener("click", function (e) {
                    document.getElementById("contextMenu").style.display = 'none';
                });
            }
            addInfoIcon(width + 280, height + 140, "#my_dataviz_insights", "infoIcon_1");

            function addTextAfterYaxis() {
                d3.select("#my_dataviz_insights")
                    .append("div")
                    .style("position", "relative")
                    //.style("opacity", 0.5)
                    .style("width", 10 + "px")
                    .style("height", 100)
                    .style("left", (width + 360) + "px")
                    .style("top", -(height + 120) + "px")
                    .attr("class", "yAxisExpansionColor")
                    .text("Expansion")
                    .style("transform", "rotate(-90deg)")

                d3.select("#my_dataviz_insights")
                    .append("div")
                    .style("position", "relative")
                    //.style("opacity", 0.5)
                    .style("width", 10 + "px")
                    .style("height", 80)
                    .style("left", (width + 360) + "px")
                    .style("top", -(height - 90) + "px")
                    .attr("class", "yAxisContractorColor")
                    .text("Contraction")
                    .style("transform", "rotate(-90deg)")

                svg.append("svg:defs")
                    .append("svg:marker")
                    .attr("id", "expansionArrow")
                    .attr("viewBox", "0 0 10 10")
                    .attr("refX", 2)
                    .attr("refY", 5)
                    .attr("markerUnits", "strokeWidth")
                    .attr("markerWidth", 4)
                    .attr("markerHeight", 5)
                    .attr("orient", "auto")
                    .style("stroke", "green")
                    .attr("fill", "green")
                    .append("svg:path")
                    .attr("d", "M 0 0 L 10 5 L 0 10 z");

                svg.append("svg:defs")
                    .append("svg:marker")
                    .attr("id", "contractorArrow")
                    .attr("viewBox", "0 0 10 10")
                    .attr("refX", 2)
                    .attr("refY", 5)
                    .attr("markerUnits", "strokeWidth")
                    .attr("markerWidth", 4)
                    .attr("markerHeight", 5)
                    .attr("orient", "auto")
                    .style("stroke", "#960000")
                    .attr("fill", "#960000")
                    .append("svg:path")
                    .attr("d", "M 0 0 L 10 5 L 0 10 z");

                svg.append("line")
                    .attr("x1", width + 190)
                    .attr("x2", width + 190)
                    .attr("y1", 105)
                    .attr("y2", 80)
                    .style("opacity", 0.5)
                    .style("stroke", "green")
                    .attr("stroke-width", 2)
                    .attr("marker-end", "url(#expansionArrow)");

                svg.append("line")
                    .attr("x1", width + 190)
                    .attr("x2", width + 190)
                    .attr("y1", 185)
                    .attr("y2", 210)
                    .style("opacity", 0.5)
                    .style("stroke", "#960000")
                    .attr("stroke-width", 2)
                    .attr("marker-end", "url(#contractorArrow)");

                svg.append("svg:defs")
                    .append("svg:marker")
                    .attr("id", "yaxisMarginalArrow")
                    .attr("viewBox", "0 0 10 10")
                    .attr("refX", 2)
                    .attr("refY", 5)
                    .attr("markerUnits", "strokeWidth")
                    .attr("markerWidth", 4)
                    .attr("markerHeight", 5)
                    .attr("orient", "auto")
                    .attr("fill","green")
                    .append("svg:path")
                    .attr("d", "M 0 0 L 10 5 L 0 10 z");

                svg.append("line")
                    .attr("x1", width + 90)
                    .attr("x2", width + 75)
                    .attr("y1", 132)
                    .attr("y2", 141)
                    .style("opacity", 0.5)
                    .style("stroke", "green")
                    .attr("stroke-width", 1)

                svg.append("line")
                    .attr("x1", width + 75)
                    .attr("x2", width + 60)
                    .attr("y1", 141)
                    .attr("y2", 141)
                    .style("opacity", 0.5)
                    .style("stroke", "green")
                    .attr("stroke-width", 1)
                    .attr("marker-end", "url(#yaxisMarginalArrow)")

                svg.append("svg:defs")
                    .append("svg:marker")
                    .attr("id", "yaxisMildArrow")
                    .attr("viewBox", "0 0 10 10")
                    .attr("refX", 2)
                    .attr("refY", 5)
                    .attr("markerUnits", "strokeWidth")
                    .attr("markerWidth", 4)
                    .attr("markerHeight", 5)
                    .attr("orient", "auto")
                    .attr("fill","#960000")
                    .append("svg:path")
                    .attr("d", "M 0 0 L 10 5 L 0 10 z");

                svg.append("line")
                    .attr("x1", width + 90)
                    .attr("x2", width + 60)
                    .attr("y1", 147.5)
                    .attr("y2", 147.5)
                    .style("opacity", 0.5)
                    .style("stroke", "#960000")
                    .attr("stroke-width", 1)
                    .attr("marker-end", "url(#yaxisMildArrow)")

                //top line of graph
                svg.append("line")
                    .attr("x1", width+20)
                    .attr("x2", 0)
                    .attr("y1", 0)
                    .attr("y2", 0)
                    .style("opacity", 0.6)
                    .style("stroke", "grey")
                    .attr("stroke-width", 0.5)
                    ;                        
                //bottom line of graph
                svg.append("line")
                    .attr("x1", width+170)
                    .attr("x2", 0)
                    .attr("y1", height+60)
                    .attr("y2", height+60)
                    .style("opacity", 0.6)
                    .style("stroke", "grey")
                    .attr("stroke-width", 0.5)
                    ;

                
            }
            addTextAfterYaxis();

            function addSliderData(prev_month_ec, next_month_ec) {
                prev_month_data = prev_month_ec;
                next_month_data = next_month_ec;
            }

            document.getElementById('#slide_prev').addEventListener('click', function () {
                // console.log('on click prev slider', prev_month_data);
                const prevCommentaryData = mydata.filter((x) => x.category == prev_month_data)[0];
                const checkIfMonthlyCommentary = (indexData.ExpertCommentary).filter((x) => x.Month == prev_month_data)[0]; 
                if (prevCommentaryData && checkIfMonthlyCommentary) {
                    setPrevAndNextMonthsSlider(prevCommentaryData);
                    addCommentary(prevCommentaryData);
                    // need to avoid for month not having commentary data
                    d3.selectAll(".x_month_name").classed("active", false); // xaxis selection on click
                    d3.selectAll(".x_month_name").classed("select_g", false);
                    d3.selectAll(".x_month_name").classed("select_r", false);
                    renderPointerOnLine(prevCommentaryData.category);
                }
            });
            document.getElementById('#slide_next').addEventListener('click', function () {
                // console.log('on click next slider', next_month_data);
                const nextCommentaryData = mydata.filter((x) => x.category == next_month_data)[0];
                const checkIfMonthlyCommentary = (indexData.ExpertCommentary).filter((x) => x.Month == next_month_data)[0]; 
                if (nextCommentaryData && checkIfMonthlyCommentary) {
                    setPrevAndNextMonthsSlider(nextCommentaryData);
                    addCommentary(nextCommentaryData);
                    d3.selectAll(".x_month_name").classed("active", false); // xaxis selection on click
                    d3.selectAll(".x_month_name").classed("select_g", false);
                    d3.selectAll(".x_month_name").classed("select_r", false);
                    renderPointerOnLine(nextCommentaryData.category);
                }
            });


            // Add the line
            const path = svg.append("path")
                .datum(mydata)
                .attr("class", "curve_path")
                .attr("fill", "none")
                .attr("stroke", "#2FB36B")
                .attr("stroke-width", "2.5")
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
                    .y(function (d) { return y1(d.value) })
                    .y(function (d) { return y2(d.value) })
                    .curve(d3.curveCatmullRom.alpha(0.9))
                )
                ;
            path.style("cursor", "pointer")
                .on("click", clickPoint);
        }
    );
