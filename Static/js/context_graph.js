
const myJsonUrl="/SumpoornJSON/"

d3.json(myJsonUrl+"sumpoorn_test_json1.json?date="+new Date(),
    // When reading the json, I must format variables:
    function (d) {
        return { category: parseDate(d.category), value: d.value }
    }).then(
        // Now I can use this dataset:
        function (data) {
            var mydata = data.IndexGeneration;
            d3.json(myJsonUrl+"IIP_json_test.json?date="+new Date(),
                // When reading the json, I must format variables:
                function (d) {
                    return { category: parseDate(d.category), value: d.value }
                }).then(
                    // Now I can use this dataset:
                    function (dataForIIP) {
                        var dataForIIP = dataForIIP.iipValues;
                        d3.json(myJsonUrl+"PMI_json_test.json?date="+new Date(),
                            // When reading the json, I must format variables:
                            function (d) {
                                return { category: parseDate(d.category), value: d.value }
                            }).then(
                                // Now I can use this dataset:
                                function (dataForPMI) {
                                    var dataForPMI = dataForPMI.pmiValues;
                                    d3.json(myJsonUrl+"GVA_json_test.json?date="+new Date(),
                                        // When reading the json, I must format variables:
                                        function (d) {
                                            return { category: parseDate(d.category), value: d.value }
                                        }).then(
                                            function (dataForGVA) {
                                                var dataForGVA = dataForGVA.gvaValues;

                                                // set the dimensions and margins of the graph
                                                const margin = {
                                                    top: 10,
                                                    right: 10,
                                                    bottom: 60,
                                                    left: 65
                                                },
                                                //1366
                                                width = 1060 - margin.left - margin.right,
                                                height = 450 - margin.top - margin.bottom;
                                                const iipColorCode = '#2E8DFF';
                                                const pmiColorCode = '#E1861B';
                                                const gvaColorCode = '#5451FF';

                                                const parseDate = d3.timeParse("%m-%Y");
                                                const y_left_coordinates = ['0.00', '0.10', '0.20', '0.30', '0.40', '0.50', '0.60', '0.70', '0.80', '0.90', '1.00'];
                                                
                                                // Scales
                                                // Add X axis 1 --> it is a month format
                                                const x1 = d3.scaleTime()
                                                    .domain(d3.extent(mydata, function (d) { return d3.timeParse("%m-%Y")(d.category); }))
                                                    .range([0, width]);

                                                // Add X axis 2 --> it is a year format
                                                const x2 = d3.scaleTime()
                                                    .domain(d3.extent(mydata, function (d) { return d3.timeParse("%m-%Y")(d.category); }))
                                                    .range([0, width]);

                                                // Add X axis 3 --> it is a month number format
                                                const x3 = d3.scaleTime()
                                                    .domain(d3.extent(mydata, function (d) { return d3.timeParse("%m-%Y")(d.category); }))
                                                    .range([10, width + 10]);

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
                                                    .range([height, 0])
                                                ;

                                                //Axes
                                                const xAxis_month_name = d3.axisBottom(x1)
                                                    .tickSize([-(height)])
                                                    .ticks(width / 12)
                                                    .tickFormat(function (date) {
                                                        return d3.timeFormat('%b')(date);
                                                    })
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

                                                var xAxis_month_number = d3.axisBottom(x3)
                                                    .tickFormat(d3.timeFormat('%m'))
                                                    .tickSize((height))
                                                    .ticks(width / 12)
                                                    ;

                                                const yAxis_left = d3.axisLeft(y1)
                                                    .tickSize([-width - 21])
                                                    .tickValues(y_left_coordinates)
                                                    ;

                                                const yAxis_right_for_iip = d3.axisRight(y2)
                                                    .tickSize(0)
                                                    ;
                                                const yAxis_right_for_pmi = d3.axisRight(y3)
                                                    ;

                                                const yAxis_right_for_gva = d3.axisRight(y4)
                                                    ;

                                                const svg = d3.select("#my_dataviz_context")
                                                    .append("svg") //append svg element inside #chart
                                                    .attr("width", width + margin.left + margin.right + 100) //set width
                                                    .attr("height", height + margin.top + margin.bottom + 30) //set height
                                                    .append("g")
                                                    .attr("transform", `translate(${margin.left},${margin.top})`);

                                                svg.append("g")
                                                    .attr("transform", `translate(0, ${height})`)
                                                    .attr("stroke-width", "0") 
                                                    .attr("class", "x_month_num")                                                                                                     
                                                    .call(xAxis_month_number)
                                                    .selectAll("text")
                                                    .attr("x", "0em")
                                                    .attr("y", "-1.3em")
                                                    ;

                                                const x_axis_months = svg.append("g")
                                                    .attr("transform", `translate(0, ${height})`)
                                                    .attr("stroke-width", "0.1")
                                                    .attr("class", "x_month_name_context")
                                                    .call(xAxis_month_name)
                                                    .selectAll(".tick text") // select all the y tick texts
                                                    .call(function(t){     
                                                        t.each(function(d){ // for each one
                                                        var self = d3.select(this);
                                                        if(self.text() == 'May'){
                                                            var s = self.text()
                                                            self.text(''); 
                                                            self.append("tspan")
                                                                .attr("fill","currentColor")
                                                                .attr("x", '-1.7em')
                                                                .text(s);
                                                        } else if(self.text() == 'Oct'){
                                                            var s = self.text()
                                                            self.text(''); 
                                                            self.append("tspan")
                                                                .attr("fill","currentColor")
                                                                .attr("x", '-1.9em')
                                                                .text(s);
                                                        } else if(self.text() == 'Jul'){
                                                            var s = self.text()
                                                            self.text(''); 
                                                            self.append("tspan")
                                                                .attr("fill","currentColor")
                                                                .attr("x", '-2em')
                                                                .text(s);
                                                        }
                                                        })
                                                    })
                                                    .attr("id", "xaxisMonths")
                                                    .attr("x", "-1.8em")
                                                    .attr("y", "0.5em")
                                                    .attr("transform", function (d) {
                                                        return "rotate(-90)"
                                                    })
                                                    .attr("class", function (d, i) { return `x_month_name_context x_month_name_context_${i}`; })
                                                    .style("cursor", "pointer")
                                                    ;

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
	                                                .style("font-size", "16px")
	                                                ;

                                                svg.append("g")
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
                                                    .text("Jocata Sumpoorn")
                                                    ;

                                                var yAxisTickSpace = [width+45,width+70,width+100];
                                                var yAxisTickNameSpace = [width+47,width+77,width+107];
                                                var yAxis_right_for_iip_tick;
                                                var yAxis_right_for_pmi_tick;
                                                var yAxis_right_for_gva_tick;
                                                refreshYaxisTicks('iip',yAxisTickSpace[0],yAxisTickNameSpace[0])

                                                const tooltip = d3.select("#my_dataviz_context") // can be body
                                                    .append("div")
                                                    .attr("class", "tooltip-area")
                                                    .style("opacity", 0)
                                                    ;
                                                const radiation = d3.select("#my_dataviz_context") // can be body
                                                    .append("div")
                                                    .attr("class", "animating_circle")
                                                    .style("opacity", 0)
                                                    ;

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
                                                    .attr("d", line)
                                                    ;

                                                const clickPoint = (event, d) => {
                                                    const mousePointer = d3.pointer(event);
                                                    const x_orig = x1.invert(mousePointer[0]);
                                                    const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
                                                    const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
                                                    d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on curve selection
                                                    renderPointerOnLine(event, x_orig);
                                                };

                                                path.on("click", clickPoint);

                                                var IIPLine;
                                                var PMILine;
                                                var GVALine;
                                                
                                                addIIPLine(dataForIIP,width + yAxisTickSpace[0]);

                                                var isIipCheckBoxEnabled = document.getElementById("IIPCheckbox").checked,
                                                isPmiCheckBoxEnabled = document.getElementById("PMICheckbox").checked ,
                                                isGvaCheckBoxEnabled = document.getElementById("GVACheckbox").checked;
                                                d3.selectAll(".context_checkboxes").on("change", function () {
                                                    if (this.value == 'IIP' && this.checked) {
                                                        isIipCheckBoxEnabled = true;
                                                        refreshYaxisTicks('iip',yAxisTickSpace[0],yAxisTickNameSpace[0])
                                                        addIIPLine(dataForIIP,width + yAxisTickSpace[0]);                                
                                                        if(isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == true){
                                                            yAxis_right_for_pmi_tick.remove()
                                                            refreshYaxisTicks('pmi',yAxisTickSpace[1],yAxisTickNameSpace[1])   
                                                            yAxis_right_for_gva_tick.remove()
                                                            refreshYaxisTicks('gva',yAxisTickSpace[2],yAxisTickNameSpace[2])                                    
                                                        } else if(isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                                                            yAxis_right_for_pmi_tick.remove()
                                                            refreshYaxisTicks('pmi',yAxisTickSpace[1],yAxisTickNameSpace[1])                                    
                                                        } else if(isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                                                            yAxis_right_for_gva_tick.remove()
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1])                 
                                                        }
                                                    } else if (this.value == 'IIP' && !this.checked) {
                                                        isIipCheckBoxEnabled = false;
                                                        removeIIPLine();
                                                        if(isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == true){
                                                            yAxis_right_for_pmi_tick.remove()
                                                            refreshYaxisTicks('pmi',yAxisTickSpace[0],yAxisTickNameSpace[0])                                                         
                                                            yAxis_right_for_gva_tick.remove()
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1])                                    
                                                        } else if(isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                                                            yAxis_right_for_gva_tick.remove()
                                                            refreshYaxisTicks('gva',yAxisTickSpace[0],yAxisTickNameSpace[0])                                    
                                                        } else if(isPmiCheckBoxEnabled == true && isGvaCheckBoxEnabled == false) {
                                                            yAxis_right_for_pmi_tick.remove()
                                                            refreshYaxisTicks('pmi',yAxisTickSpace[0],yAxisTickNameSpace[0])   
                                                        }
                                                        d3.select("#iipYaxisTxt").remove();
                                                    }
                                                    if (this.value == 'PMI' && this.checked) { 
                                                        isPmiCheckBoxEnabled = true;
                                                        addPMILine(dataForPMI,width + yAxisTickSpace[1]);
                                                        if(isIipCheckBoxEnabled == true){
                                                            refreshYaxisTicks('pmi',yAxisTickSpace[1],yAxisTickNameSpace[1])
                                                            if(isGvaCheckBoxEnabled == true) {
                                                                yAxis_right_for_gva_tick.remove()
                                                                refreshYaxisTicks('gva',yAxisTickSpace[2],yAxisTickNameSpace[2])                                    
                                                            }
                                                        } else {
                                                            refreshYaxisTicks('pmi',yAxisTickSpace[0],yAxisTickNameSpace[0])
                                                            if(isGvaCheckBoxEnabled == true) {
                                                                yAxis_right_for_gva_tick.remove()
                                                                refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1])                                    
                                                            }
                                                        }
                                                    } else if (this.value == 'PMI' && !this.checked) {
                                                        isPmiCheckBoxEnabled = false;
                                                        removePMILine();
                                                        if(isIipCheckBoxEnabled == true && isGvaCheckBoxEnabled == true){
                                                            yAxis_right_for_gva_tick.remove();
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1]);
                                                        } else if(isIipCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                                                            yAxis_right_for_gva_tick.remove();
                                                            refreshYaxisTicks('gva',yAxisTickSpace[0],yAxisTickNameSpace[0]);
                                                        }
                                                        d3.select("#pmiYaxisTxt").remove();
                                                    }
                                                    if (this.value == 'GVA' && this.checked) {
                                                        isGvaCheckBoxEnabled = true;
                                                        if(isIipCheckBoxEnabled ==true && isPmiCheckBoxEnabled == true){                                                             
                                                            refreshYaxisTicks('gva',yAxisTickSpace[2],yAxisTickNameSpace[2]);                                                        
                                                        } else if (isIipCheckBoxEnabled ==true && isPmiCheckBoxEnabled == false){
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1]);                                                        
                                                        } else if(isIipCheckBoxEnabled == false && isPmiCheckBoxEnabled == true){
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1]);                                                        
                                                        } else if(isIipCheckBoxEnabled == false && isPmiCheckBoxEnabled == false)  {
                                                            refreshYaxisTicks('gva',yAxisTickSpace[0],yAxisTickNameSpace[0])
                                                        }
                                                        addGVALine(dataForGVA,width + yAxisTickSpace[2]);
                                                    } else if (this.value == 'GVA' && !this.checked) {
                                                        isGvaCheckBoxEnabled = false;
                                                        removeGVALine();
                                                        d3.select("#gvaYaxisTxt").remove();
                                                    }

                                                });

                                                function refreshYaxisTicks(tickName,tickWidth,yAxisTickNameSpace){
                                                    if(tickName == 'iip'){
                                                        yAxis_right_for_iip_tick = svg.append("g")
                                                            .attr("stroke-width", "0")
                                                            .attr("transform", `translate(`+tickWidth+`,0)`) //+20
                                                            .call(yAxis_right_for_iip)
                                                            .selectAll("text")
                                                            .attr("text-anchor", "end")
                                                            .style("color", iipColorCode)
                                                            ;
                                                        
                                                        d3.select("#iipYaxisTxt").remove();
                                                        svg.append("text")
                                                            .attr("x", -(height + 12))
                                                            .attr("y", yAxisTickNameSpace)
                                                            .attr("id", "iipYaxisTxt")
                                                            .style("text-anchor", "end")
                                                            .style('fill', iipColorCode)
                                                            .attr("transform", "rotate(-90)")
                                                            .text("IIP")
                                                            ;
                                                    } else if(tickName == 'pmi'){
                                                        yAxis_right_for_pmi_tick = svg.append("g")
                                                            .attr("stroke-width", "0")
                                                            .attr("transform", `translate(`+tickWidth+`,00)`) //+20
                                                            .call(yAxis_right_for_pmi)
                                                            .selectAll("text")
                                                            .attr("text-anchor", "end")
                                                            .style("fill", pmiColorCode)
                                                            ;
                                                        
                                                        d3.select("#pmiYaxisTxt").remove();
                                                        svg.append("text").attr("opacity", "1")
                                                            .attr("x", -(height + 12))
                                                            .attr("y", yAxisTickNameSpace)
                                                            .attr("id", "pmiYaxisTxt")
                                                            .style("text-anchor", "end")
                                                            .style('fill', pmiColorCode)
                                                            .attr("transform", "rotate(-90)")
                                                            .text("PMI");

                                               
                                                    } else if(tickName == 'gva') {
                                                        yAxis_right_for_gva_tick = svg.append("g")
                                                            .attr("stroke-width", "0")
                                                            .attr("transform", `translate(`+tickWidth+`,00)`) //+20
                                                            .call(yAxis_right_for_gva)
                                                            .selectAll("text")
                                                            .attr("text-anchor", "end")
                                                            .style("fill", gvaColorCode)
                                                            ;
                                                        
                                                        d3.select("#gvaYaxisTxt").remove();
                                                        let gvaText = svg.append("text")
                                                            .attr("x", -(height + 12))
                                                            .attr("y", yAxisTickNameSpace)
                                                            .attr("id", "gvaYaxisTxt")
                                                            .style("text-anchor", "end")
                                                            .style('fill', gvaColorCode)
                                                            .attr("transform", "rotate(-90)")
                                                            .text("GVA Growth %")
                                                            .call(function(t){     
                                                                var self = d3.select(this);
                                                                var s = t.text().split(' ');
                                                                t.text(''); 
                                                                t.append("tspan") 
                                                                    .attr("fill","currentColor")
                                                                    .attr("x", t._groups[0][0].x['animVal'][0]['value'])
                                                                    .attr("y", t._groups[0][0].y['animVal'][0]['value']-12)
                                                                    .attr("dy","1em")
                                                                    .style('fill', gvaColorCode)
                                                                    .text(s[0]);
                                                                t.append("tspan")
                                                                    .attr("fill","currentColor")
                                                                    .attr("x", t._groups[0][0].x['animVal'][0]['value'])
                                                                    .attr("y", t._groups[0][0].y['animVal'][0]['value'])
                                                                    .attr("dy","1em")
                                                                    .style('fill', gvaColorCode)
                                                                    .text(s[1]+' '+s[2]);
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
                                                        )
                                                        ;

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
                                                                .attr('x', width)
                                                                .attr('y', 0)
                                                                .attr('width', 21)
                                                                .attr('height', height+40)
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
                                                            renderPointerOnLine(event, d)
                                                        })
                                                        ;
                                                    });
                                                }
                                                monthNameClickEvent();

                                                let bisectDate = d3.bisector(function (d) {
                                                    return new Date(Number(d.category.split("-")[1]), (Number(d.category.split("-")[0]) - 1));
                                                }).left

                                                function renderPointerOnLine(event, d) {
                                                    const mousePointer = d3.pointer(event);
                                                    const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
                                                    const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
                                                    var x0 = d,
                                                        i = bisectDate(mydata, x0, 1),
                                                        d0 = mydata[i - 1],
                                                        d1 = mydata[i],
                                                        d = x0 - new Date(Number(d0.category.split("-")[1]), (Number(d0.category.split("-")[0]) - 1)) > new Date(Number(d1.category.split("-")[1]), (Number(d1.category.split("-")[0]) - 1)) - x0 ? d1 : d0;

                                                    const tooltip_pointer = getPointsOnCurve(d.category, d.value);
                                                    // addTooltip(tooltip_pointer, d, "");
                                                    const lastIndex = x_axis_months.selectAll(".tick")._parents.length - 1;
                                                    const indexOfPoint = mydata.findIndex(x => x.category == d.category);
                                                    if(lastIndex == indexOfPoint) {
                                                        // To apply circles animation on last index
                                                        addTooltip(tooltip_pointer, d, true);
                                                    } else {
                                                        // Not to apply circles animation on other points on curve
                                                        addTooltip(tooltip_pointer, d, false);
                                                    }
                                                    //updating x value data & re-rendering
                                                    d3.select("#rect_xaxis_context").remove();
                                                    svg.append('rect')
                                                        .attr('x', tooltip_pointer.x + 0.8)
                                                        .attr('y', 0)
                                                        .attr('width', 21)
                                                        .attr('height', height+40)
                                                        .attr("id", "rect_xaxis_context")
                                                        .attr('stroke', 'black')
                                                        .style("stroke-dasharray", ("3, 1"))
                                                        .style("opacity", 0.3)
                                                        .transition()
                                                        .duration(1000)
                                                        .attr('cx', function (d) {
                                                            return d;
                                                        })

                                                    const indexOfObj = mydata.findIndex(x => x.category == d.category);
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
                                                        .style("left", (mousePointer.x + 45)  + "px")
                                                        .style("top", (mousePointer.y-35) + "px");
                                                    radiation
                                                        .transition()
                                                        .duration(100)
                                                        .attr('cx', function (d) {
                                                            return d;
                                                        })
                                                        .style("opacity", 0.9);
                                                    if(isLatestIdx) {
                                                        radiation
                                                            .html("<span id=\"radiation\" class=\"animating_circle\">" +
                                                                "<span class=\"circle_waves circle_one\"></span> " +
                                                                "<span class=\"circle_waves circle_two\"></span> " +
                                                                "<span class=\"circle_waves circle_three\"></span>" +
                                                                "</span>")
                                                            .style("left",(mousePointer.x-width-96)+"px")
                                                            .style("top", (mousePointer.y-233) + "px");
                                                    } else {
                                                        radiation
                                                            .html("<span id=\"radiation\" class=\"animating_circle\">" +
                                                                "<span class=\"circle_waves circle_three\"></span>" +
                                                                "</span>")
                                                            .style("left",(mousePointer.x-width-96)+"px")
                                                            .style("top", (mousePointer.y-233) + "px");
                                                    }
                                                }

                                                function addLinesForYears() {
                                                    let xValue = 66.5,diffInTwoLine = 263;
                                                    const year_1 = svg.append("g"); //2019
                                                    year_1.append('line')
                                                        .attr('x1', 0)
                                                        .attr('y1', 0)
                                                        .attr('x2', 0)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#E1E1E1')
                                                        .attr("stroke-width", "1")
                                                        ;
                                                    const year_2 = svg.append("g"); //2020
                                                    year_2.append('line')
                                                        .attr('x1', xValue)
                                                        .attr('y1', 0)
                                                        .attr('x2', xValue)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#959595')
									                    .attr("stroke-width", "1")
									                    .attr("stroke-dasharray", "2")
                                                        ;
                                                    xValue = xValue + diffInTwoLine;
                                                    const year_3 = svg.append("g"); //2021
                                                    year_3.append('line')
                                                        .attr('x1', xValue)
                                                        .attr('y1', 0)
                                                        .attr('x2', xValue)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#959595')
                                                        .attr("stroke-width", "1")
                                                        .attr("stroke-dasharray", "2")
                                                        ;
                                                    xValue = xValue + diffInTwoLine;
                                                    const year_4 = svg.append("g"); //2022
                                                    year_4.append('line')
                                                        .attr('x1', xValue)
                                                        .attr('y1', 0)
                                                        .attr('x2', xValue)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#959595')
                                                        .attr("stroke-width", "1")
                                                        .attr("stroke-dasharray", "2")
                                                        ;
                                                    xValue = xValue + diffInTwoLine;
                                                    const year_5 = svg.append("g"); //2023
                                                    year_5.append('line')
                                                        .attr('x1', xValue)
                                                        .attr('y1', 0)
                                                        .attr('x2', xValue)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#959595')
                                                        .attr("stroke-width", "1")
                                                        .attr("stroke-dasharray", "2")
                                                        ;
                                                    const year_6 = svg.append("g"); //2023
                                                    year_6.append('line')
                                                        .attr('x1', width + 21)
                                                        .attr('y1', 0)
                                                        .attr('x2', width + 21)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#E1E1E1')
                                                        .attr("stroke-width", "1")
                                                        ;
                                                    //top line of graph
                                                    svg.append("line")
                                                        .attr("x1", width+20)
                                                        .attr("x2", 0)
                                                        .attr("y1", 0)
                                                        .attr("y2", 0)
                                                        .style("stroke", "#E1E1E1")
                                                        .attr("stroke-width", 1)
                                                        ;                        
                                                    //bottom line of graph
                                                    svg.append("line")
                                                        .attr("x1", width+20)
                                                        .attr("x2", 0)
                                                        .attr("y1", height+60)
                                                        .attr("y2", height+60)
                                                        .style("stroke", "#E1E1E1")
                                                        .attr("stroke-width", 1)
                                                        ;
                                                }
                                                addLinesForYears();
                                                
                                              
                                            });
                                });
                    });
        });
