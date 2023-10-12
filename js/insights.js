
const url = "/SumpoornJSON/sumpoorn_test_json1.json?date="+new Date();

//Read the data
d3.json(url,
    // When reading the json, I must format variables:
    function (d) {
        return { category: parseDate(d.category), value: d.value }
    }).then(
        // Now I can use this dataset:
        function (data) {
            const jsondata = data;
            const mydata = jsondata.IndexGeneration;
            const indexData = jsondata.Commentary;

            const y_left_coordinates = ['0.00', '0.10', '0.20', '0.30', '0.40', '0.50', '0.60', '0.70', '0.80', '0.90', '1.00'];
            const y_right_coordinates = ['0.00', '0.25', '0.45', '0.50', '0.52', '0.54', '0.60', '0.65', '0.75', '1.00']; //'0.00',
            const y_com_coordinates = ['0.0', '0.2', '0.4', '0.6', '0.8', '1.0'];

            let prev_month_data;
            let next_month_data;

            let tooltip, radiation, selectedPoint;

            // set the dimensions and margins of the graph
            const margin = {
                top: 10,
                right: 80,
                bottom: 115,
                left: 80,
            },
            default_width = 1150,
            default_height = 500,
            width = default_width - margin.left - margin.right,
            height = default_height - margin.top - margin.bottom;

            const parseDate = d3.timeParse("%m-%Y");

            // Coordinates on axes
            // Add X axis 1 --> it is a month format
            const x1 = d3.scaleTime()
                .domain(d3.extent(mydata, function (d) { return parseDate(d.category); }))
                .range([0, width])
                ;

            // Add X axis 2 --> it is a year format
            const x2 = d3.scaleTime()
                .domain(d3.extent(mydata, function (d) { return parseDate(d.category); }))
                .range([0, width])
                ;

            // Add X axis 3 --> it is a month number format
            const x3 = d3.scaleTime()
                .domain(d3.extent(mydata, function (d) { return parseDate(d.category); }))
                .range([10, width + 10])
                ;

            // Add Y axis - left side
            const y1 = d3.scaleLinear()
                .domain([0, 1.0])
                .nice()
                .range([height, 0])
                ;

            // Add Y axis - right side
            const y2 = d3.scaleLinear()
                .domain([0, 1.0])
                .range([height, 0])
                ;

            // Customize text values on axes
            const xAxis_month_number = d3.axisBottom(x3)
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
                .tickSize([35]) // sets line for month
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
                .tickSize([-width - 21]) // sets last xaxis index align
                .tickValues(y_right_coordinates)
                .tickFormat(
                    function (d) {
                        return formatYaxisForText(d, "axis");
                    }
                )
                ;

            // Creating svg with dimensions to chart
            const svg = d3.select("#my_dataviz_insights")
                .append("svg") //append svg element inside #chart
                .attr("width", default_width + (margin.left + margin.right)) //set width
                .attr("height", default_height) //set height
                .append("g")
                .attr("transform", `translate(${margin.left},${margin.top})`)
                ;

            // Adding axes to svg
            const month_number = svg.append("g")
                .attr("transform", `translate(0, ${height})`)
                .attr("stroke-width", "0")
                .attr("class", "x_month_num")
                .call(xAxis_month_number)
                .selectAll(".tick text")
                .attr("x", "0em") 
                .attr("y", "-1.3em") 
                ;

            const month_name = svg.append("g")
                .attr("transform", `translate(0, ${height})`)
                .attr("stroke-width", "0.1")
                .attr("class", "x_month_name")
                .call(xAxis_month_name)
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
                .attr("y", "0.5em") 
                .attr("transform", function (d) {
                    return "rotate(-90)"
                })
                .attr("text-anchor", "middle")
                .attr("class", function (d, i) { return `x_month_name x_month_name_${i}`; })
                .style("cursor", "pointer")
                ;

            const month_year = svg.append("g")
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
                .style("font-size", "16px")
                ;

            const y_points = svg.append("g")
                .attr("stroke-width", "0.1")
                .attr("class", "y_left_points")
                .call(yAxis_left)
                .append("text")
                .attr("class", "axis-title")
                .attr("x", "-9.5em") 
                .attr("y", "-2.3em") 
                .style("text-anchor", "end")
                .attr("fill", "#2FB36B")
                .attr("transform", "rotate(-90)")
                .text("Jocata Sumpoorn")
                ;

            const y_text = svg.append("g")
                .attr("stroke-width", "0.1")
                .attr("transform", `translate(${width + 21},0)`) // sets last xaxis index align
                .call(yAxis_right)
                .selectAll('.tick text') // select all the y tick texts
                .call(function (t) {
                    t.each(function (d) { // for each one
                        var self = d3.select(this);
                        if (self.text().indexOf(' ') >= 0) {
                            var s = self.text().split(' ');  // get the text and split it
                            self.text(''); // clear it out
                            self.append("tspan") // insert two tspans
                                .attr("fill", "currentColor")
                                .attr("x", "0.75em") 
                                .attr("y", function (d, i) {
                                    if (s[1] == "Contraction") return "3em"; 
                                    else return "0.2em"; 
                                })
                                .attr("dy", "1em")
                                .text(s[0]);
                            self.append("tspan")
                                .attr("fill", "currentColor")
                                .attr("x", "0.75em") 
                                .attr("y", function (d, i) {
                                    if (s[1] == "Contraction") return "4em"; 
                                    else return "1.2em"; 
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

            function formatYaxisForText(d, fromWhere) {
                if (d == 0.25) {
                    if(fromWhere == "info") {
                        return "Substantial";
                    } else {
                        return "Substantial Contraction";
                    }
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
                    if(fromWhere == "info") {
                        return "Substantial";
                    } else {
                        return "Substantial Expansion";
                    }
                }
                return '';
            }

            function formatYaxisForXvalue(d, i) {
                if(d == 0.25 || d == 1.00 || d == 0.45 || d == 0.50 || d == 0.60 || d == 0.65 || d == 0.75) {
                    return "1em";
                } 
                // else if(d == 0.45 || d == 0.50 || d == 0.60 || d == 0.65 || d == 0.75) {
                //     return "0.8em";
                // } 
                else if(d == 0.52 || d == 0.54) {
                    return "6.69em";
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

            function addLinesForGraph() {
                const year_1 = svg.append("g"); // first line
                year_1.append('line')
                    .attr('x1', 0.2)
                    .attr('y1', 0)
                    .attr('x2', 0.2)
                    .attr('y2', height + 60)
                    .attr('stroke', '#E1E1E1')
                    .attr("stroke-width", "1")
                    ;
                const year_2 = svg.append("g"); //2020
                year_2.append('line')
                    .attr('x1', 67)
                    .attr('y1', 0)
                    .attr('x2', 67)
                    .attr('y2', height + 60)
                    .attr('stroke', '#959595')
                    .attr("stroke-width", "1")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_3 = svg.append("g"); //2021
                year_3.append('line')
                    .attr('x1', 331.7)
                    .attr('y1', 0)
                    .attr('x2', 331.7)
                    .attr('y2', height + 60)
                    .attr('stroke', '#959595')
                    .attr("stroke-width", "1")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_4 = svg.append("g"); //2022
                year_4.append('line')
                    .attr('x1', 595.7)
                    .attr('y1', 0)
                    .attr('x2', 595.7)
                    .attr('y2', height + 60)
                    .attr('stroke', '#959595')
                    .attr("stroke-width", "1")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_5 = svg.append("g"); //2023
                year_5.append('line')
                    .attr('x1', 859.7)
                    .attr('y1', 0)
                    .attr('x2', 859.7)
                    .attr('y2', height + 60)
                    .attr('stroke', '#959595')
                    .attr("stroke-width", "1")
                    .attr("stroke-dasharray", "2")
                    ;
                const year_6 = svg.append("g"); // last line
                year_6.append('line')
                    .attr('x1', width + 20.5)
                    .attr('y1', 0)
                    .attr('x2', width + 20.5)
                    .attr('y2', height + 60)
                    .attr('stroke', '#E1E1E1')
                    .attr("stroke-width", "1")
                    ;
                //top line of graph
                const top_line = svg.append("g");
                top_line.append("line")
                    .attr("x1", width + 200)
                    .attr("x2", 0)
                    .attr("y1", 0)
                    .attr("y2", 0)
                    .style("stroke", "#E1E1E1")
                    .attr("stroke-width", "0.7")
                    ;                        
                //bottom line of graph
                const bottom_line = svg.append("g");
                bottom_line.append("line")
                    .attr("x1", width + 200)
                    .attr("x2", 0)
                    .attr("y1", height + 62)
                    .attr("y2", height + 62)
                    .style("stroke", "#E1E1E1")
                    .attr("stroke-width", "0.7")
                    ;
            }

            function addFlags() {
                let flag1_values = getPointsOnCurve("03-2020", 0.37);
                let flag2_values = getPointsOnCurve("02-2021", 0.63);
                let x_1 = flag1_values.x;
                let y_1 = flag1_values.y;
                let x_2 = flag2_values.x;
                let y_2 = flag2_values.y;
                const flag1_focus = svg.append("g")
                    .attr("class", "flag1_focus")
                    .attr("transform", "translate(" + (x_1 + 10) + "," + y_1 + ")")
                    ;

                flag1_focus.append("circle")
                    .attr("r", 4.5)
                    ;
                const flag2_focus = svg.append("g")
                    .attr("class", "flag2_focus")
                    .attr("transform", "translate(" + (x_2 + 10) + "," + y_2 + ")")
                    ;

                flag2_focus.append("circle")
                    .attr("r", 4.5)
                    ;

                const covid_2020 = svg.append('g');
                covid_2020.append('rect')
                    .attr("transform", "translate(" + (x_1 - 65) + "," + (y_1 + 55) + ")")
                    .attr('width', 80)
                    .attr('height', 50)
                    .attr("fill", "white")
                    .attr("opacity", "0.7")
                    .attr('stroke', '#A0A0A0')
                    .attr("stroke-width", "1")
                    ;
                covid_2020.append("text")
                    .html("COVID-19 Lockdown")
                    .attr("x", x_1 - 25)
                    .attr("y", y_1 + 55)
                    .attr("width", 25)
                    .attr("class", "flags_text")
                    .attr("text-anchor", "middle")
                    .style("font-size", "14px")
                    .style("fill", "#767676")
                    .style("font-weight", 500)
                    ;
                covid_2020.append('line')
                    .attr('x1', x_1 + 9)
                    .attr('y1', y_1 - 10)
                    .attr('x2', x_1 + 9)
                    .attr('y2', y_1 + 55)
                    .attr('stroke', '#A0A0A0')
                    .attr("stroke-width", "1")
                    ;
                const covid_2021 = svg.append('g');
                covid_2021.append('rect')
                    .attr("transform", "translate(" + (x_2 - 75) + "," + (y_2 - 105) + ")")
                    .attr('width', 90)
                    .attr('height', 50)
                    .attr("fill", "white")
                    .attr("opacity", "0.7")
                    .attr('stroke', '#A0A0A0')
                    .attr("stroke-width", "1")
                    ;
                covid_2021.append("text")
                    .html("COVID-19 Recovery")
                    .attr("x", x_2 - 30)
                    .attr("y", y_2 - 105)
                    .attr("width", 25)
                    .attr("class", "flags_text")
                    .attr("text-anchor", "middle")
                    .style("font-size", "14px")
                    .style("fill", "#767676")
                    .style("font-weight", 500)
                    ;
                covid_2021.append('line')
                    .attr('x1', x_2 + 10)
                    .attr('y1', y_2)
                    .attr('x2', x_2 + 10)
                    .attr('y2', y_2 - 55)
                    .attr('stroke', '#A0A0A0')
                    .attr("stroke-width", "1")
                    ;
            }

            function getPointsOnCurve(category, value) {
                let co_ord = { x: 0, y: 0 };
                let x_value = x1(parseDate(category));
                let y_value = y1(value);
                co_ord.x = x_value;
                co_ord.y = y_value;
                return co_ord;
            }

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

            function addSelectionYaxis() {
                y_text.selectAll(".tick")._parents.forEach(function (d_child, i) {
                    addDefaultSelYaxis(d_child.__data__, i);
                    d3.select(d_child)
                        .on("mouseover", function (event, d) {
                            if (d != 0.52 && d != 0.54) {
                                d3.selectAll(".y-axis-titles").classed("select", false);
                                d3.select(this).classed("select", true);
                                yAxisMouseOver(event, d);
                            }
                        })
                        ;
                });
            }

            function removeXaxisTitleSelection() {
                d3.selectAll(".x_month_name").classed("select_g", false);
                d3.selectAll(".x_month_name").classed("select_r", false);
            };
            function removeRectsSelection() {
                d3.selectAll("#rect_yaxis").remove();
                d3.selectAll("#rect_xaxis_sel").remove();
                d3.selectAll(".y-axis-titles").classed("select", false);
            };

            d3.select("#my_dataviz_insights") //.insights_graph, .app_index_chart_con
                .on("mouseleave", (event) => {
                    removeRectsSelection();
                    removeXaxisTitleSelection();
                });

            function yAxisMouseOver(event, d) {
                let handyValues = formatHandYvaluesYaxis(d, true);
                d3.selectAll("#rect_yaxis").remove();
                svg.append('rect')
                    .attr('x', 0)
                    .attr('y', handyValues.y)
                    .attr('width', width + 119)
                    .attr('height', handyValues.h)
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
                    .style("opacity", 0.3)
                    .transition()
                    .duration(1000)
                    //.ease(d3.easeCubicOut)
                    .attr('cy', function (d) {
                        return d;
                    });
                checkSpecificPointsOnXaxis(d);
            }

            function checkSpecificPointsOnXaxis(d) {
                let hoverIndex = y_right_coordinates.indexOf(d);
                let beforeIndexValue = y_right_coordinates[hoverIndex - 1];
                let dataValues = mydata.filter((e) => {
                    return (e.value >= beforeIndexValue && e.value <= d);
                });
                // d3.selectAll("#rect_xaxis").remove();
                d3.selectAll("#rect_xaxis_sel").remove();
                // yaxis selection
                removeXaxisTitleSelection();
                // d3.selectAll(".x_month_name").classed("active", false);
                dataValues.forEach((eachValue) => {
                    highlightXaxis(eachValue, d);
                })
            }

            function highlightXaxis(dataValue, d) {
                const tooltip_pointer = getPointsOnCurve(dataValue.category, dataValue.value);
                svg.append('rect')
                    .attr('x', tooltip_pointer.x)
                    .attr('y', 0)
                    .attr('width', 22)
                    .attr('height', height + 40)
                    .attr("id", "rect_xaxis_sel")
                    .attr("opacity", "0.7")
                    .transition()
                    .duration(1000)
                    //.ease(d3.easeCubicOut)
                    .attr('cx', function (d) {
                        return d;
                    });
                const indexOfObj = mydata.findIndex(x => x.category == dataValue.category);
                if (d == 1.00 || d == 0.75 || d == 0.65 || d == 0.6) {
                    d3.select(`.x_month_name_${indexOfObj}`).classed("select_g", true);
                } else {
                    d3.select(`.x_month_name_${indexOfObj}`).classed("select_r", true);
                }
            }

            function addDefaultSelYaxis(d) {
                let handyValues = formatHandYvaluesYaxis(d, false);
                svg.append('rect')
                    .attr('x', 0)
                    .attr('y', handyValues.y)
                    .attr('width', width + 19)
                    .attr('height', handyValues.h)
                    .attr("id", "rect_def_yaxis")
                    .attr("opacity", "0.5")
                    .attr('stroke', '#E2E2E280')
                    .transition()
                    .duration(1000)
                    .attr('cy', function (d) {
                        return d;
                    });

                let handyValues_line = getYaxisValuesForLines(d);
                svg.append("line")
                    .attr("x1", width+35)
                    .attr("x2", handyValues_line.x2)
                    .attr("y1", handyValues_line.y1)
                    .attr("y2", handyValues_line.y1)
                    .style("stroke", "#E2E2E2")
                    .attr("stroke-width", 1)
                    ;
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
                    } else if (d == 0.50) {
                        hAndyValues.y = 188;
                        hAndyValues.h = 20;
                    } else if (d == 0.60) {
                        hAndyValues.y = 151;
                        hAndyValues.h = 23;
                    } else if (d == 0.65) {
                        hAndyValues.y = 132;
                        hAndyValues.h = 18;
                    } else if (d == 0.75) {
                        hAndyValues.y = 94;
                        hAndyValues.h = 37;
                    } else if (d == 1.00) {
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
                    } else if (d == 0.60) {
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
                let hAndyValues = { y1: 0, x2: 0 };
                    if (d == 0.00) {
                        hAndyValues.y1 = height;
                        hAndyValues.x2 = width+112;
                    } else if (d == 0.25) {
                        hAndyValues.y1 = 282;
                        hAndyValues.x2 = width+112;
                    } else if (d == 0.45) {
                        hAndyValues.y1 = 207;
                        hAndyValues.x2 = width+112;
                    } else if (d == 0.50) {
                        hAndyValues.y1 = 187.5;
                        hAndyValues.x2 = width+70;
                    } else if (d == 0.52) {
                        hAndyValues.y1 = 180.5;
                        hAndyValues.x2 = width+70;
                    } else if (d == 0.54) {
                        hAndyValues.y1 = 173;
                        hAndyValues.x2 = width+70;
                    } else if (d == 0.60) {
                        hAndyValues.y1 = 150.5;
                        hAndyValues.x2 = width+112;
                    } else if (d == 0.65) {
                        hAndyValues.y1 = 131.5;
                        hAndyValues.x2 = width+112;
                    } else if (d == 0.75) {
                        hAndyValues.y1 = 94;
                        hAndyValues.x2 = width+112;
                    } 
                    return hAndyValues;
            }
            addSelectionYaxis();

            function selectionOfXaxis() {
                month_name.selectAll(".tick")._parents.forEach(function (d_child, i) {
                    let totalIndex = month_name.selectAll(".tick")._parents.length - 1;
                    if (i == totalIndex) {
                        // xaxis selection on load
                        removeXaxisTitleSelection();
                        d3.selectAll(".x_month_name").classed("active", false);
                        svg.append('rect')
                            .attr('x', width)
                            .attr('y', 0)
                            .attr('width', 22)
                            .attr('height', height + 40)
                            .attr("id", "rect_xaxis")
                            .attr('stroke', 'black')
                            .style("stroke-dasharray", ("3, 1"))
                            .style("opacity", "0.5")
                            .transition()
                            .duration(1000)
                            .attr('cx', function (d) {
                                return d;
                            });

                        const tooltip_pointer = getPointsOnCurve(mydata[i].category, mydata[i].value);
                        // To apply circles animation on last index
                        addTooltip(tooltip_pointer, mydata[i], true);
                        d3.select(`.x_month_name_${i}`).classed("active", true);
                        // de highlight yaxis text
                        d3.selectAll(".y-axis-titles").classed("active", false);
                        d3.selectAll(".y-axis-titles").classed("select", false);
                        checkSpecificPointOnYaxis(i);
                        setPrevAndNextMonthsSlider(mydata[i]);
                        addCommentary(mydata[i]);
                    }
                    d3.select(d_child)
                        .on("click", function (event, d) {
                            // xaxis selection on click
                           removeXaxisTitleSelection();
                           d3.selectAll(".x_month_name").classed("active", false);
                            const formattedDate = d3.timeFormat("%m-%Y")(d);
                            renderPointerOnLine(formattedDate);
                        })
                });
            }

            function renderPointerOnLine(date) {
                d3.selectAll("#rect_xaxis").remove(); 
                d3.selectAll("#rect_yaxis").remove(); // to remove highlighting of yaxis data
                d3.selectAll("#rect_xaxis_sel").remove(); // to remove highlighting of already selected xaxis data

                const dataValue = mydata.filter((x) => x.category == date)[0];
                const tooltip_pointer = getPointsOnCurve(dataValue.category, dataValue.value);
                const lastIndex = month_name.selectAll(".tick")._parents.length - 1;
                const indexOfPoint = mydata.findIndex(x => x.category == dataValue.category);
                if(lastIndex == indexOfPoint) {
                    // To apply circles animation on last index
                    addTooltip(tooltip_pointer, dataValue, true);
                } else {
                    // Not to apply circles animation on other points on curve
                    addTooltip(tooltip_pointer, dataValue, false);
                }
                svg.append('rect')
                    .attr('x', tooltip_pointer.x)
                    .attr('y', 0)
                    .attr('width', 22)
                    .attr('height', height + 40)
                    .attr("id", "rect_xaxis")
                    .attr('stroke', 'black')
                    .style("stroke-dasharray", ("3, 1"))
                    .style("opacity", "0.5")
                    .transition()
                    .duration(1000)
                    .attr('cx', function (d) {
                        return d;
                    });
                const indexOfObj = mydata.findIndex(x => x.category == dataValue.category);
                d3.select(`.x_month_name_${indexOfObj}`).classed("active", true); // xaxis selection
                d3.selectAll(".y-axis-titles").classed("select", false);
                d3.selectAll(".y-axis-titles").classed("active", false);
                checkSpecificPointOnYaxis(indexOfObj);
                setPrevAndNextMonthsSlider(dataValue);
                addCommentary(dataValue);
            }

            function initializeTooltip() {
                tooltip = d3.select("#my_dataviz_insights")
                .append("div")
                .attr("class", "tooltip-area")
                .style("opacity", 0)
                ;

                selectedPoint = d3.select("#my_dataviz_insights")
                    .append("div")
                    .attr("class", "focus_circle")
                    .style("opacity", 0)
                    ;    

                radiation = d3.select("#my_dataviz_insights")
                    .append("div")
                    .attr("class", "animating_circle")
                    .style("opacity", 0)
                    ;
            }

            initializeTooltip();

            function addTooltip(mousePointer, dataValue, isLatestIdx) {
                tooltip
                    .transition()
                    .duration(100)
                    .style("opacity", 0.9);
                tooltip
                    .html(dataValue.value)
                    .style("left", (mousePointer.x + 60)  + "px")
                    .style("top", (mousePointer.y-35) + "px");
                ;
                radiation
                    .transition()
                    .duration(100)
                    .attr('cx', function (d) {
                        return d;
                    })
                    .style("opacity", 0.9)
                ;
                if(isLatestIdx) {
                    radiation
                        .html("<span id=\"radiation\" class=\"animating_circle\">" +
                            "<span class=\"circle_waves circle_one\"></span> " +
                            "<span class=\"circle_waves circle_two\"></span> " +
                            "<span class=\"circle_waves circle_three\"></span>" +
                            "</span>")
                        .style("left", (mousePointer.x - width - 225) + "px")
                        .style("top", (mousePointer.y - 243) + "px");
                } else {
                    radiation
                        .html("<span id=\"radiation\" class=\"animating_circle\">" +
                            "<span class=\"circle_waves circle_three\"></span>" +
                            "</span>")
                        .style("left", (mousePointer.x - width - 225) + "px")
                        .style("top", (mousePointer.y - 243) + "px");
                }
            }
            
            function checkSpecificPointOnYaxis(i) {
                const yOfx = mydata[i].value;
                const closestIndex = findClosestYvalue(yOfx);
                if (closestIndex !== -1) {
                    d3.select(`.y-axis-title_${closestIndex}`).classed("active", true);
                }
            }

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
            }

            function setPrevAndNextMonthsSlider(dataValue) {
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

            function addSliderData(prev_month_ec, next_month_ec) {
                prev_month_data = prev_month_ec;
                next_month_data = next_month_ec;
                checkIfCommentaryDataAvailable(prev_month_data, next_month_data);
            }

            function checkIfCommentaryDataAvailable(prev_month_data, next_month_data) {
                const prevCommentaryData = mydata.filter((x) => x.category == prev_month_data)[0];
                const nextCommentaryData = mydata.filter((x) => x.category == next_month_data)[0];
                const checkForPrevCommentary = (indexData.ExpertCommentary).filter((x) => x.Month == prev_month_data)[0]; 
                const checkForNextCommentary = (indexData.ExpertCommentary).filter((x) => x.Month == next_month_data)[0]; 
                document.getElementById('#slide_prev').classList.remove("disable_arrows");
                document.getElementById('#slide_next').classList.remove("disable_arrows");
                if(!prevCommentaryData || (prevCommentaryData && !checkForPrevCommentary)) {
                    document.getElementById('#slide_prev').classList.add("disable_arrows");
                } else if(!nextCommentaryData || (nextCommentaryData && !checkForNextCommentary)) {
                    document.getElementById('#slide_next').classList.add("disable_arrows");
                } 
                // else {
                //     document.getElementById('#slide_prev').classList.remove("disable_arrows");
                //     document.getElementById('#slide_next').classList.remove("disable_arrows");
                // }
            }

            document.getElementById('#slide_prev').addEventListener('click', function () {
                const prevCommentaryData = mydata.filter((x) => x.category == prev_month_data)[0];
                const checkIfMonthlyCommentary = (indexData.ExpertCommentary).filter((x) => x.Month == prev_month_data)[0]; 
                if (prevCommentaryData && checkIfMonthlyCommentary) {
                    setPrevAndNextMonthsSlider(prevCommentaryData);
                    addCommentary(prevCommentaryData);
                    // need to avoid for month not having commentary data
                    // xaxis selection on click
                    removeXaxisTitleSelection();
                    d3.selectAll(".x_month_name").classed("active", false);
                    renderPointerOnLine(prevCommentaryData.category);
                }
            });
            document.getElementById('#slide_next').addEventListener('click', function () {
                const nextCommentaryData = mydata.filter((x) => x.category == next_month_data)[0];
                const checkIfMonthlyCommentary = (indexData.ExpertCommentary).filter((x) => x.Month == next_month_data)[0]; 
                if (nextCommentaryData && checkIfMonthlyCommentary) {
                    setPrevAndNextMonthsSlider(nextCommentaryData);
                    addCommentary(nextCommentaryData);
                    // xaxis selection on click
                    removeXaxisTitleSelection();
                    d3.selectAll(".x_month_name").classed("active", false);
                    renderPointerOnLine(nextCommentaryData.category);
                }
            });

            function addCommentary(dataValue) {
                let indexValue = dataValue.value;
                let expertData = (indexData.ExpertCommentary).filter((e) => {
                    return (e.Month == dataValue.category);
                });
                let monthlyData = (indexData.MonthlyCommentary).filter((m) => {
                    return (m.Month == dataValue.category);
                });
                let graphData = (indexData.MonthlyCommentaryGraph).filter((m) => {
                    return (m.Month == dataValue.category);
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

                    const indexOfPoint = mydata.findIndex(x => x.category == dataValue.category);
                    if((mydata.length - 1) == indexOfPoint) {
                        d3.select(".isLatestIdx").style("display", "inherit");
                    } else {
                        d3.select(".isLatestIdx").style("display", "none");
                    }

                    d3.select(".mc_body")
                        .html(`${monthlyC.comment}`)
                        ;
                    // Right data
                    d3.select(".ec_month_title")
                        .html(`${current_month} ${current_year}`)
                        ;
                    d3.select(".ec_title")
                        .html(`Expert Commentary`)
                        ;
                    if(expertC.ExpertImageDetails != "" && expertC.ExpertName != "" && expertC.ExpertDetails != "") {
                        // commentary member details
                        d3.select('#commentary_mem_details')
                            .html(`<img src="assets/images/${expertC.ExpertImageDetails}" alt="expert image" class="img-fluid me-3" />
                                <div class="member_details">
                                <p class="member_name mb-0 ec_author">${expertC.ExpertName}</p>
                                <p class="member_title mb-0 ec_author_designation">${expertC.ExpertDetails}</p>
                                </div>`)
                            .style("margin-bottom", "15px")
                        ;
                    } else {
                        d3.select('#commentary_mem_details').html("").style("margin-bottom", "0px");
                    }
                    d3.select(".ec_message")
                        .html(`${expertC.ExpertCommentary}`)
                        ;
                    // Add graph here - MonthlyCommentaryGraph
                    createGraphForCommentary(graphC);
                }
            }

            function createGraphForCommentary(graphData) {
                // set the dimensions and margins of the graph
                const margin_c = { top: 20, right: 15, bottom: 25, left: 45 },
                    default_width_c = 270;
                    default_height_c = 257;
                    width_c = default_width_c - margin_c.left - margin_c.right,
                    height_c = default_height_c - margin_c.top - margin_c.bottom;

                // Add X axis --> it is a date format
                const x1 = d3.scaleTime()
                    .domain(d3.extent(graphData, function (d) { return parseDate(d.category); }))
                    .range([0, width_c]);

                // Add Y axis - left side
                const y1 = d3.scaleLinear()
                    .domain([0, 1.0])
                    .nice()
                    .range([height_c, 0]);

                // Add Y axis - right side
                const y2 = d3.scaleLinear()
                    .domain([0, 1.0])
                    .range([height_c, 0]);

                const xa = d3.axisBottom(x1)
                    .tickSize(-height_c)
                    .tickFormat(d3.timeFormat('%b'));

                const ya = d3.axisLeft(y1)
                    .tickSize([-width_c])
                    .tickValues(y_com_coordinates)
                    ;

                const ya_right = d3.axisRight(y2)
                    .tickSize([-width_c])
                    .tickValues(y_right_coordinates)
                    .tickFormat("")
                    ;

                // append the svg object to the body of the page
                d3.select('#monthly_commentary_chart').remove();
                const svg_c = d3.select("#commentary_graph")
                    .append("svg")
                    .attr('id', 'monthly_commentary_chart')
                    .attr("width", width_c + margin_c.left + margin_c.right)
                    .attr("height", height_c + margin_c.top + margin_c.bottom + 40)
                    .append("g")
                    .attr("transform", `translate(${margin_c.left},${margin_c.top})`);
                
                const x_axis = svg_c.append("g")
                    .attr("transform", `translate(0, ${height_c})`)
                    .attr("stroke-width", "1")
                    .attr("class", "x_month_value")
                    .call(xa);
                
                x_axis.append("text")      // text label for the x axis
                    .attr("x", "7em")
                    .attr("y", "3.5em")
                    .attr("class", "axis-title")
                    .style("text-anchor", "middle")
                    .attr("fill", "#959595")
                    .text("Trailing 6 months");

                x_axis.selectAll(".tick text")
                    .attr("y", "0.7em")
                    ;

                svg_c.append("g")
                    .attr("stroke", "#A3A3A3")
                    .attr("stroke-width", "0")
                    .attr("opacity", ".6")
                    .attr("class", "y_month_value")
                    .call(ya)
                    .append("text")
                    .attr("class", "axis-title")
                    .attr("x", "-3.5em")
                    .attr("y", "-2.5em")
                    .style("text-anchor", "end")
                    .attr("fill", "#2FB36B")
                    .attr("transform", "rotate(-90)")
                    .text("Jocata Sumpoorn")
                    ;
                const yaright_text = svg_c.append("g")
                    .attr("stroke", "#A3A3A3")
                    .attr("stroke-width", "0.1")
                    .attr("opacity", "1")
                    .attr("transform", `translate(${width_c},0)`) //+20
                    .call(ya_right)
                    ;
                yaright_text.selectAll(".tick")._groups[0].forEach(function (d_child, i) {
                    let handyValues = gethAndYValuesCommentary(d_child.__data__);
                    svg_c.append('rect')
                        .attr('x', 0)
                        .attr('y', handyValues.y)
                        .attr('width', width_c)
                        .attr('height', handyValues.h)
                        .attr("id", "rect_def_yaxis")
                        .attr('stroke', '#E2E2E280')
                        .transition()
                        .duration(1000)
                        //.ease(d3.easeCubicOut)
                        .attr('cy', function (d) {
                            return d;
                        });
                });
                d3.selectAll("#infoIcon_2").remove();
                addInfoIcon(default_width_c - 85, default_height_c - 120, "#commentary_graph", "infoIcon_2", svg_c);
                // Add the line
                svg_c.append("path")
                    .datum(graphData)
                    .attr("fill", "none")
                    .attr("stroke", "#2FB36B")
                    .attr("stroke-width", 1)
                    .attr("d", d3.line()
                        .x(d => x1(parseDate(d.category)))
                        .y(d => y1(d.value))
                    )
                // Add the points
                svg_c.append("g")
                    .selectAll("dot")
                    .data(graphData)
                    .join("circle")
                    .attr("cx", d => x1(parseDate(d.category)))
                    .attr("cy", d => y1(d.value))
                    .attr("r", 2)
                    .attr("fill", "#2FB36B")
                    ;
            }

            function gethAndYValuesCommentary(d) {
                let hAndyValues = { y: 0, h: 0 };
                if (d == 0.45) {
                    hAndyValues.y = 117.5;
                    hAndyValues.h = 42;
                } else if (d == 0.52) {
                    hAndyValues.y = 102.5;
                    hAndyValues.h = 3.5;
                } else if (d == 0.60) {
                    hAndyValues.y = 85.5;
                    hAndyValues.h = 11.5;
                } else if (d == 0.75) {
                    hAndyValues.y = 53.5;
                    hAndyValues.h = 20.5;
                }
                return hAndyValues;
            }

            function addInfoIcon(icon_x, icon_y, graph_id, icon_id, selectedSvg) {
                let icon = selectedSvg.append("g")
                    .attr("transform", `translate(${icon_x},${icon_y})`)
                    .append("svg:image")
                    .attr("xlink:href", "assets/icons/info.svg")
                    .attr('width', 15)
                    .attr('height', 15)
                    .attr("id", icon_id)
                    .style("cursor", "pointer")
                    .on("click", function (evt, d) {
                        // Position:
                        if (graph_id == "#my_dataviz_insights") {
                            const absX = evt.clientX + window.scrollX;
                            const absY = evt.clientY + window.scrollY;
                            document.getElementById("contextMenu").setAttribute('style', 'top: ' + (absY + 20) + 'px; left:' + (absX - 150) + 'px;');
                            document.getElementById("contextMenu").style.display = 'block'
                        } else {
                            const absX = evt.clientX + window.scrollX + 20;
                            const absY = evt.clientY + window.scrollY - 35;
                            document.getElementById("contextMenu").setAttribute('style', 'top: ' + (absY) + 'px; left:' + (absX) + 'px;');
                            document.getElementById("contextMenu").style.display = 'block';
                        }

                        let indexData = [];
                        let startYaxisPoint = ""
                        y_right_coordinates.forEach(function (index) {
                            if(startYaxisPoint == "" || startYaxisPoint.length == 0){
                                startYaxisPoint = index;
                            } else {
                                let value = formatYaxisForText(index, "info");
                                let da = new Object();
                                da.index = startYaxisPoint + "-" + index;
                                da.value = value;
                                indexData.push(da);
                                startYaxisPoint = index;
                            }
                        });
                        let infodata = ""
                        for (let i = indexData.length - 1; i >= 0; i--) {
                            if (i <= 3) {
                                if (i == 3)
                                    infodata += "<div style=\"padding-bottom: 10px;padding-top: 10px;color:#960000\"><b>&#8595; Contraction</b></div><div style=\"color:#960000;padding-left: 13px;padding-bottom: 3px;\">" + indexData[i].value + " <span style=\"float:right;color:#960000;\"> <span>&#8594;</span> " + indexData[i].index + "</span></div>";
                                else
                                    infodata += "<div style=\"color:#960000;padding-left: 13px;padding-bottom: 3px;\">" + indexData[i].value + " <span style=\"float:right;color:#960000\"><span>&#8594;</span>  " + indexData[i].index + "</span></div>";
                            } else {
                                if (i == indexData.length - 1)
                                    infodata += "<div style=\"padding-bottom: 10px;color:#1E7400\"><b>&#8593; Expansion</b></div><div style=\"color:#1E7400;padding-left: 13px;padding-bottom: 3px;\">" + indexData[i].value + " <span style=\"float:right;color:#1E7400\"><span>&#8594;</span>  " + indexData[i].index + "</span></div>";
                                else
                                    infodata += "<div style=\"color:#1E7400;padding-left: 13px;padding-bottom: 3px;\">" + indexData[i].value + " <span style=\"float:right;color:#1E7400\"><span>&#8594;</span>  " + indexData[i].index + "</span></div>";
                            }
                        }
                        document.getElementById("yaxisContentInfo").innerHTML = infodata;
                    });

                document.getElementById("closeInfo").addEventListener("click", function (e) {
                    document.getElementById("contextMenu").style.display = 'none';
                });
            }
            addInfoIcon(default_width-35, 9, "#my_dataviz_insights", "infoIcon_1", svg);

            selectionOfXaxis();

            function addArrowsAfterYaxis() {
                svg.append("g")
                    .attr("transform", `translate(${width + 195}, ${height-294})`)
                    .append("text")
                    .attr("fill", "#759B67")
                    .attr("font-size", "14px")
                    .html("Expansion")
                    .style("transform", "rotate(-90deg)")

                svg.append("g")
                    .attr("transform", `translate(${width + 195}, ${height-20})`)
                    .append("text")
                    .attr("fill", "#AC5D5D")
                    .attr("font-size", "14px")
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
                    .style("stroke", "#1E7400")
                    .attr("fill", "#1E7400")
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
                    .attr("x1", width + 192)
                    .attr("x2", width + 192)
                    .attr("y1", 135)
                    .attr("y2", 100)
                    .style("opacity", 0.5)
                    .style("stroke", "#1E7400")
                    .attr("stroke-width", 1)
                    .attr("marker-end", "url(#expansionArrow)");

                svg.append("line")
                    .attr("x1", width + 192)
                    .attr("x2", width + 192)
                    .attr("y1", 220)
                    .attr("y2", 260)
                    .style("opacity", 0.5)
                    .style("stroke", "#960000")
                    .attr("stroke-width", 1)
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
                    .attr("fill","#1E7400")
                    .append("svg:path")
                    .attr("d", "M 0 0 L 10 5 L 0 10 z");

                svg.append("line")
                    .attr("x1", width + 120)
                    .attr("x2", width + 110)
                    .attr("y1", 167)
                    .attr("y2", 177)
                    .style("opacity", 0.5)
                    .style("stroke", "#1E7400")
                    .attr("stroke-width", 1)

                svg.append("line")
                    .attr("x1", width + 110)
                    .attr("x2", width + 60)
                    .attr("y1", 177)
                    .attr("y2", 177)
                    .style("opacity", 0.5)
                    .style("stroke", "#1E7400")
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
                    .attr("x1", width + 110)
                    .attr("x2", width + 60)
                    .attr("y1", 185)
                    .attr("y2", 185)
                    .style("opacity", 0.5)
                    .style("stroke", "#960000")
                    .attr("stroke-width", 1)
                    .attr("marker-end", "url(#yaxisMildArrow)")
            }
            addArrowsAfterYaxis();

            addLinesForGraph();
            
            addFlags();
            d3.selectAll('.flags_text').call(wrap);

            const clickPoint = (event, d) => {
                const mousePointer = d3.pointer(event);
                const x_orig = x1.invert(mousePointer[0]);
                const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
                const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
                 // xaxis selection on curve selection
                removeXaxisTitleSelection();
                d3.selectAll(".x_month_name").classed("active", false);
                renderPointerOnLine(formattedDate);
            };

            // Add the line
            const path = svg.append("path")
                .datum(mydata)
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
                    .curve(d3.curveCatmullRom.alpha(0))
                )
                .style("cursor", "pointer")
                ;
            path.on("click", clickPoint);
        }
    );