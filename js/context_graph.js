// https://d3js.org v7.8.5 Copyright 2010-2023 Mike Bostock

const myJsonUrl="http://192.168.0.104/SumpoornJSON/"

d3.json(myJsonUrl+"sumpoorn_test_json1.json",
    // When reading the csv, I must format variables:
    function (d) {
        console.log(d)
        return { category: parseDate(d.category), value: d.value }
    }).then(
        // Now I can use this dataset:
        function (data) {
            var mydata = data.IndexGeneration;
            d3.json(myJsonUrl+"IIP_json_test.json",
                // When reading the csv, I must format variables:
                function (d) {
                    console.log(d)
                    return { category: parseDate(d.category), value: d.value }
                }).then(
                    // Now I can use this dataset:
                    function (dataForIIP) {
                        var dataForIIP = dataForIIP.iipValues;
                        d3.json(myJsonUrl+"PMI_json_test.json",
                            // When reading the csv, I must format variables:
                            function (d) {
                                console.log(d)
                                return { category: parseDate(d.category), value: d.value }
                            }).then(
                                // Now I can use this dataset:
                                function (dataForPMI) {
                                    var dataForPMI = dataForPMI.pmiValues;
                                    d3.json(myJsonUrl+"GVA_json_test.json",
                                        // When reading the csv, I must format variables:
                                        function (d) {
                                            console.log(d)
                                            return { category: parseDate(d.category), value: d.value }
                                        }).then(
                                            function (dataForGVA) {
                                                var dataForGVA = dataForGVA.gvaValues;

                                                // set the dimensions and margins of the graph
                                                const margin = {
                                                    top: 10,
                                                    right: 10, //10,
                                                    bottom: 60,
                                                    left: 65 //100
                                                },
                                                //1366
                                                width = 1060 - margin.left - margin.right,

                                                // // set the dimensions and margins of the graph
                                                // const margin = {
                                                //     top: 50,
                                                //     right: 10,
                                                //     bottom: 50,
                                                //     left: 70
                                                // },
                                                // width = 900 - margin.left - margin.right,
                                                height = 450 - margin.top - margin.bottom;
                                                const iipColorCode = '#2E8DFF';
                                                const pmiColorCode = '#E1861B';
                                                const gvaColorCode = '#5451FF';

                                                const parseDate = d3.timeParse("%m-%Y");

                                                const y_left_coordinates = ['0.00', '0.10', '0.20', '0.30', '0.40', '0.50', '0.60', '0.70', '0.80', '0.90', '1.00'];
                                                //const y_right_coordinates = ['0.25','0.45','0.50','0.52','0.54','0.60','0.65','0.75','1.00']; //'0.00',
                                                //const y_right_coordinates = ['0','16','32','48','64','80','96','112','128','144','160']; //'0.00',
                                                //const y_right_coordinates_for_iip = ['10','20','35','55','66','70','80','85','95','100']; //'0.00',
                                                //const y_right_coordinates_for_pmi = [0,7,14,21,28,35,42,49,56,63,70];
                                                //const y_right_coordinates_for_gva = [-30,-23,-16,-9,-2,5,12,19,26,23,40];

                                                //Scales
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
                                                    //.domain([0, d3.max(mydata, function(d) { return +d.value; })])
                                                    .domain([0, 1.0]).nice()
                                                    .range([height, 0]);

                                                // Add Y axis - right side
                                                const y2 = d3.scaleLinear()
                                                    .domain(d3.extent(dataForIIP, d => d.value))
                                                    //.domain([0, d3.max(dataForIIP, function(d) { return d.value; })])
                                                    //.domain([0, 1.0])
                                                    .nice()
                                                    .range([height, 0]);

                                                const y3 = d3.scaleLinear()
                                                    .domain(d3.extent(dataForPMI, d => d.value))
                                                    .nice()
                                                    //.domain([d3.min(dataForPMI, function(d) { return +d.value; }), d3.max(dataForPMI, function(d) { return +d.value; })])
                                                    //.domain([0, 100])
                                                    .range([height, 0]);


                                                const y4 = d3.scaleLinear()
                                                    .domain([d3.min(dataForGVA, function (d) { return d.value; }), d3.max(dataForGVA, function (d) { return d.value; })])
                                                    //.domain([-20,30])
                                                    .nice()
                                                    .range([height, 0])
                                                //.ticks(10);

                                                //Axises
                                                const xAxis_month_name = d3.axisBottom(x1)
                                                    .tickSize([-(height)])
                                                    .ticks(width / 12)
                                                    .tickFormat(function (date) {
                                                        return d3.timeFormat('%b')(date);
                                                    })
                                                    ;

                                                /*const xAxis_year = d3.axisBottom(x2)
                                                    .tickSize([-(height)])
                                                    .ticks(width/12)
                                                    .tickFormat(function(date, i){
                                                        if(i % 12 == 0) {
                                                            return d3.timeFormat('%Y')(date);
                                                        }
                                                    })
                                                    ;
                                                */
                                                const xAxis_year = d3.axisBottom(x2)
                                                    .tickSize([30])
                                                    .ticks(width / 12)
                                                    .tickFormat(function (d, i) {
                                                        // console.log('tfmy ', d3.timeFormat('%Y')(d), d3.timeFormat('%m')(d));
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
                                                    .tickSize([-width - 19])
                                                    .tickValues(y_left_coordinates)
                                                    ;

                                                const yAxis_right_for_iip = d3.axisRight(y2)
                                                    .tickSize(0) // +20
                                                    //.tickValues(y_right_coordinates_iip)
                                                    //.tickFormat(
                                                    //function(data, i) {
                                                    //   return formatTextYaxis(data);
                                                    //}
                                                    //)
                                                    ;
                                                const yAxis_right_for_pmi = d3.axisRight(y3)
                                                    //.tickSize([-(width)]) // +20
                                                    //.tickValues(y_right_coordinates_iip)
                                                    //.tickFormat(
                                                    //function(data, i) {
                                                    //   return formatTextYaxis(data);
                                                    //}
                                                    //)
                                                    ;

                                                const yAxis_right_for_gva = d3.axisRight(y4)
                                                    //.tickSize([-(width)]) // +20
                                                    //.tickValues(dataForGVA.map(a => a.value))
                                                    //.ticks(10)
                                                    //.tickValues(y_right_coordinates_iip)
                                                    //.tickFormat(
                                                    //function(data, i) {
                                                    //   return formatTextYaxis(data);
                                                    //}
                                                    //)
                                                    ;
                                                const svg = d3.select("#my_dataviz_context")
                                                    .append("svg") //append svg element inside #chart
                                                    .attr("width", width + margin.left + margin.right + 100) //set width
                                                    .attr("height", height + margin.top + margin.bottom + 30) //set height
                                                    .append("g")
                                                    .attr("transform", `translate(${margin.left},${margin.top})`);

                                                svg.append("g")
                                                    .attr("transform", `translate(0, ${height})`)
                                                    //.attr("stroke", "grey")
                                                    .attr("stroke-width", "0") 
                                                    .attr("class", "x_month_num")                                                                                                     
                                                    .call(xAxis_month_number)
                                                    .selectAll("text")
                                                    .attr("x", "0em")
                                                    .attr("y", "-1.3em")
                                                    //.style('text-anchor', 'end')
                                                    ;

                                                const x_axis_months = svg.append("g")
                                                    .attr("transform", `translate(0, ${height})`)
                                                    .attr("stroke-width", "0.1")
                                                    // .attr("stroke-dasharray","1")
                                                    //.attr("opacity", ".6")
                                                    .attr("class", "x_month_name_context")
                                                    .call(xAxis_month_name)
                                                    //.selectAll("text")
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
                                                    //.on('click',clickMe)
                                                    .style("cursor", "pointer")
                                                    /*.on("mouseover", function() {
                                                        console.log("working")
                                                    })
                                                    .on("mouseout", function() {
                                                    })
                                                    .on("mousemove", mousemove);
                                                    */
                                                    ;

                                                svg.append("g")
	                                                .attr("transform", `translate(0, ${height})`)
	                                                // .attr("stroke", "grey")
	                                                .attr("stroke-width", "0.1")
	                                                // .attr("stroke-dasharray","1")
	                                                // .attr("opacity", ".6")
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
                                                    //.attr("stroke", "grey")
                                                    .attr("stroke-width", "0.1")
                                                    //.attr("opacity", ".6")
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

                                                var yAxisTickSpace = [width+18,width+45,width+70];
                                                var yAxisTickNameSpace = [width+35,width+62,width+92];
                                                var yAxis_right_for_iip_tick;
                                                var yAxis_right_for_pmi_tick;
                                                var yAxis_right_for_gva_tick;
                                                refreshYaxisTicks('iip',yAxisTickSpace[0],yAxisTickNameSpace[0])
                                                refreshYaxisTicks('pmi',yAxisTickSpace[1],yAxisTickNameSpace[1])
                                                refreshYaxisTicks('gva',yAxisTickSpace[2],yAxisTickNameSpace[2])

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
                                                    //.curve(d3.curveMonotoneY)
                                                    .curve(d3.curveCatmullRom.alpha(0.9));

                                                // Add the line 1
                                                const path = svg.append("path")
                                                    .datum(mydata)
                                                    .attr("fill", "none")
                                                    .attr("stroke", "#2FB36B")
                                                    //.attr("stroke-width", 1)
                                                    .style("stroke-width", "3")
                                                    .attr("d", line)
                                                    ;

                                                /*const focus = svg.append("g")
                                                    .attr("class", "focus")
                                                    .style("opacity", 0)
                                                    ;
                                                    
                                                    focus.append("circle").attr("r", 4.5);
                                                */

                                                const clickPoint = (event, d) => {
                                                    const mousePointer = d3.pointer(event);
                                                    const x_orig = x1.invert(mousePointer[0]);
                                                    // console.log('mousePointer ', mousePointer[0], mousePointer[1]);
                                                    const formattedDate = d3.timeFormat("%m-%Y")(x1.invert(mousePointer[0]));
                                                    const dataValue = mydata.filter((x) => x.category == formattedDate)[0];
                                                    // addTooltip(mousePointer, dataValue, event, true);
                                                    // addCommentary(formattedDate, dataValue);
                                                    d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on curve selection
                                                    renderPointerOnLine(event, x_orig);
                                                };

                                                path.on("click", clickPoint);
                                                /*const focusClick = () => {
                                                    const formattedDate = "07-2023";
                                                    const dataValue = mydata.filter((x)=>x.category == formattedDate)[0];
                                                    const mousePointer = getPointsOnCurve(formattedDate, dataValue.value);
                                                    addTooltip(mousePointer,  dataValue, "", false);
                                                    // addCommentary(formattedDate, dataValue);
                                                };*/
                                                //focus.dispatch("click", focusClick

                                                /*svg.append("input")
                                                .data([11, 22, 33, 44])
                                                .enter()
                                                .append('label')
                                                .attr('for',function(d,i){ return 'a'+i; })
                                                .text(function(d) { return d; })
                                                .append("input")
                                                .attr("checked", true)
                                                .attr("type", "checkbox")
                                                .attr("id", function(d,i) { return 'a'+i; })
                                                .attr("onClick", "change(this)");
                                                */

                                                var IIPLine;
                                                var PMILine;
                                                var GVALine;
                                                
                                                addIIPLine(dataForIIP,width + yAxisTickSpace[0])
                                                addPMILine(dataForPMI,width + yAxisTickSpace[1])
                                                addGVALine(dataForGVA,width + yAxisTickSpace[2])
                                                var isIipCheckBoxEnabled = true,isPmiCheckBoxEnabled = true,isGvaCheckBoxEnabled = true;
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
                                                            yAxis_right_for_gva_tick.remove()
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1])                                    
                                                        } else if(isPmiCheckBoxEnabled == false && isGvaCheckBoxEnabled == true) {
                                                            yAxis_right_for_gva_tick.remove()
                                                            refreshYaxisTicks('gva',yAxisTickSpace[1],yAxisTickNameSpace[1])                 
                                                        }
                                                        document.getElementById("iipDescDiv").style.display = "block";
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

                                                        document.getElementById("iipDescDiv").style.display = "none";
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
                                                        
                                                        document.getElementById("pmiDescDiv").style.display = "block";
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
                                                        document.getElementById("pmiDescDiv").style.display = "none";
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
                                                        document.getElementById("gvaDescDiv").style.display = "block";
                                                    } else if (this.value == 'GVA' && !this.checked) {
                                                        isGvaCheckBoxEnabled = false;
                                                        removeGVALine();
                                                        document.getElementById("gvaDescDiv").style.display = "none";
                                                        d3.select("#gvaYaxisTxt").remove();
                                                    }

                                                });

                                                function refreshYaxisTicks(tickName,tickWidth,yAxisTickNameSpace){
                                                    if(tickName == 'iip'){
                                                        yAxis_right_for_iip_tick = svg.append("g")
                                                            .attr("stroke-width", "0.1")
                                                            //.attr("opacity", "1")
                                                            .attr("transform", `translate(`+tickWidth+`,0)`) //+20
                                                            .call(yAxis_right_for_iip)
                                                            .selectAll("text")
                                                            .style("color", iipColorCode)
                                                            ;
                                                        
                                                        d3.select("#iipYaxisTxt").remove();
                                                        svg.append("text")
                                                            //.attr("opacity", "1")
                                                            .attr("x", -(height + 10))
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
                                                            //.attr("opacity",".6")
                                                            .attr("transform", `translate(`+tickWidth+`,00)`) //+20
                                                            .call(yAxis_right_for_pmi)
                                                            .selectAll("text")
                                                            .style("fill", pmiColorCode)
                                                            ;
                                                        
                                                        d3.select("#pmiYaxisTxt").remove();
                                                        svg.append("text").attr("opacity", "1")
                                                            .attr("x", -(height + 10))
                                                            .attr("y", yAxisTickNameSpace)
                                                            .attr("id", "pmiYaxisTxt")
                                                            .style("text-anchor", "end")
                                                            .style('fill', pmiColorCode)
                                                            .attr("transform", "rotate(-90)")
                                                            .text("PMI");

                                               
                                                    } else if(tickName == 'gva') {
                                                        yAxis_right_for_gva_tick = svg.append("g")
                                                            .attr("stroke-width", "0")
                                                            //.attr("opacity",".6")
                                                            .attr("transform", `translate(`+tickWidth+`,00)`) //+20
                                                            .call(yAxis_right_for_gva)
                                                            .selectAll("text")
                                                            .style("fill", gvaColorCode)
                                                            ;
                                                        
                                                        d3.select("#gvaYaxisTxt").remove();
                                                        let gvaText = svg.append("text")
                                                            //.attr("opacity", "1")
                                                            .attr("x", -(height + 10))
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
                                                            .curve(d3.curveCatmullRom.alpha(0.9))
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
                                                            .curve(d3.curveCatmullRom.alpha(0.9))
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
                                                            .curve(d3.curveCatmullRom.alpha(0.9))
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
                                                                .attr('width', 19)
                                                                .attr('height', height+40)
                                                                .attr("id", "rect_xaxis_context")
                                                                .attr('stroke', 'black')
                                                                .style("stroke-dasharray", ("3, 1"))
                                                                .style("opacity", 0.3)
                                                                .transition()
                                                                .duration(1000)
                                                                //.ease(d3.easeCubicOut)
                                                                .attr('cx', function (d) {
                                                                    return d;
                                                                })

                                                            const tooltip_pointer = getPointsOnCurve(mydata[i].category, mydata[i].value);
                                                            addTooltip(tooltip_pointer, mydata[i], "");
                                                            d3.select(`.x_month_name_context_${i}`).classed("active", true);
                                                        }

                                                        d3.select(d1).on("click", function (event, d) {
                                                            d3.selectAll(".x_month_name_context").classed("active", false); // xaxis selection on load
                                                            renderPointerOnLine(event, d)
                                                        })

                                                            // .on("mouseout", function(d) {  
                                                            //     //on mouse out hide the tooltip
                                                            //     console.log('mouseout', d);
                                                            // })
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
                                                        //d = x0 - d0.category > d1.category - x0 ? d1 : d0;
                                                        d = x0 - new Date(Number(d0.category.split("-")[1]), (Number(d0.category.split("-")[0]) - 1)) > new Date(Number(d1.category.split("-")[1]), (Number(d1.category.split("-")[0]) - 1)) - x0 ? d1 : d0;

                                                    const tooltip_pointer = getPointsOnCurve(d.category, d.value);
                                                    addTooltip(tooltip_pointer, d, "");

                                                    //updating x value data & re-rendering
                                                    d3.select("#rect_xaxis_context").remove();
                                                    svg.append('rect')
                                                        //.attr('x', event.x-80)
                                                        .attr('x', tooltip_pointer.x + 0.8)
                                                        .attr('y', 0)
                                                        .attr('width', 21)
                                                        .attr('height', height+40)
                                                        .attr("id", "rect_xaxis_context")
                                                        // .attr('stroke', '#E2E2E280')
									                    // .style("stroke-dasharray", ("3, 1"))
									                    // .style("opacity", 0.5)
                                                        .attr('stroke', 'black')
                                                        .style("stroke-dasharray", ("3, 1"))
                                                        .style("opacity", 0.3)
                                                        .transition()
                                                        .duration(1000)
                                                        //.ease(d3.easeCubicOut)
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

                                                function addTooltip(mousePointer, dataValue, event) {
                                                    tooltip
                                                        .transition()
                                                        .duration(100)
                                                        .style("opacity", 0.9);
                                                    tooltip
                                                        .html(dataValue.value)
                                                        //.style("left", (mousePointer.x + width) - 880 + "px") //(event.pageX) +
                                                        //.style("top", (mousePointer.y + height) - 225 + "px"); //(event.pageY - 30) +
                                                        .style("left",(mousePointer.x-width-115)+"px")
                                                        .style("top", (mousePointer.y-250) + "px");

                                                    radiation
                                                        .transition()
                                                        .duration(100)
                                                        .attr('cx', function (d) {
                                                            return d;
                                                        }).style("opacity", 0.9)

                                                    radiation
                                                        .html("<span id=\"radiation\" class=\"animating_circle\">" +
                                                            "<span class=\"circle_waves circle_one\"></span> " +
                                                            "<span class=\"circle_waves circle_two\"></span> " +
                                                            "<span class=\"circle_waves circle_three\"></span>" +
                                                            "</span>")
                                                        .style("left",(mousePointer.x-width-127)+"px")
                                                        .style("top", (mousePointer.y-233) + "px"); //(event.pageY - 30) +
                                                    
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
                                                        // .attr("stroke-dasharray", "2")
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
                                                    const year_6 = svg.append("g"); //2019
                                                    year_6.append('line')
                                                        .attr('x1', width + 19)
                                                        .attr('y1', 0)
                                                        .attr('x2', width + 19)
                                                        .attr('y2', height + 58)
                                                        .attr('stroke', '#959595')
                                                        .attr("stroke-width", "1")
                                                        // .attr("stroke-dasharray", "2")
                                                        ;
                                                }
                                                addLinesForYears();
                                                
                                              //top line of graph
                                                svg.append("line")
                                                    .attr("x1", width+20)
                                                    .attr("x2", 0)
                                                    .attr("y1", 0)
                                                    .attr("y2", 0)
                                                    // .style("opacity", 0.6)
                                                    .style("stroke", "#E1E1E1")
                                                    .attr("stroke-width", 1)
                                                    ;                        
                                                //bottom line of graph
                                                svg.append("line")
                                                    .attr("x1", width+20)
                                                    .attr("x2", 0)
                                                    .attr("y1", height+60)
                                                    .attr("y2", height+60)
                                                    // .style("opacity", 0.6)
                                                    .style("stroke", "#E1E1E1")
                                                    .attr("stroke-width", 1)
                                                    ;
                                            });

                                });

                    });
        });
