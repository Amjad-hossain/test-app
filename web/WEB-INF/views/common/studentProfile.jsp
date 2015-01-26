<%@ page import="com.dsoft.entity.Role" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%
    final String contextPath = request.getContextPath();
%>

<title id='Description'>jqxChart Pie Series Example</title>
<link rel="stylesheet" href="<%= contextPath %>/resources/jqwidgets/styles/jqx.base.css" type="text/css" />
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxdraw.js"></script>
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxchart.core.js"></script>
<%--<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxgauge.js"></script>--%>
<script type="text/javascript" src="<%= contextPath %>/resources/jqwidgets/jqxdata.js"></script>

<title><spring:message code="student.profile.view" /></title>

        <!-- ==================== COMMON ELEMENTS ROW ==================== -->
        <div class="row-fluid">

            <div class="span12">
                <!-- ==================== ACTIVITIES HEADLINE ==================== -->
                <div class="containerHeadline">
                    <i class="icon-reorder"></i><h2>XYZ's <spring:message code="profile" /></h2>
                    <div class="controlButton pull-right"><i class="icon-remove removeElement"></i></div>
                    <div class="controlButton pull-right"><i class="icon-caret-down minimizeElement"></i></div>
                </div>
                <!-- ==================== END OF ACTIVITIES HEADLINE ==================== -->

                <!-- ==================== ACTIVITIES FLOATING BOX ==================== -->
                <div class="floatingBox">
                    <div class="container-fluid">
                        <!-- ==================== ACTIVITIES MENU ==================== -->
                        <div class="floatingBoxMenu">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#stdInfo"><spring:message code="student.info" /></a></li>
                                <li class=""><a href="#stdAttendence"><spring:message code="student.attendances" /></a></li>
                                <li class=""><a href="#stdResults"><spring:message code="student.results" /></a></li>
                                <li class=""><a href="#recentTasks">Recent tasks</a></li>
                            </ul>
                        </div>
                        <!-- ==================== END OF ACTIVITIES MENU ==================== -->

                        <div class="container-fluid">
                            <!-- ==================== ALL ACTIVITIES CONTENT ==================== -->
                            <ul id="stdInfo" class="floatingBoxContainers" style="display: none;">
                                <div id='chartContainer' style="width: 850px; height: 500px;">
                                </div>
                            </ul>
                            <!-- ==================== END OF ALL ACTIVITIES CONTENT ==================== -->

                            <!-- ==================== RECENT COMMENTS CONTENT ==================== -->
                            <ul style="display: block;" id="stdAttendence" class="floatingBoxContainers">
                                <div id='chartContainer2' style="width: 850px; height: 500px;">
                                </div>
                             <div id='chartContainer3' style="width: 400px; height: 250px;">
                                </div>
                             <div id='chartContainer4' style="width: 400px; height: 250px;">
                                </div>
                             <div id='chartContainer5' style="width: 400px; height: 250px;">
                                </div>
                             <div id='chartContainer6' style="width: 400px; height: 250px;">
                                </div>
                            </ul>
                            <!-- ==================== END OF RECENT COMMENTS CONTENT ==================== -->

                            <!-- ==================== RECENT ORDERS CONTENT ==================== -->
                            <ul style="display: none;" id="stdResults" class="floatingBoxContainers">
                                <div style="position: relative; height: 370px;">
                                    <div style="position: absolute; left: 0px; top: 0px;" id='seconds'></div>
                                    <div style="position: absolute; left: 0px; top: 0px;" id='hours'></div>
                                    <div style="position: absolute; left: 0px; top: 0px;" id='minutes'></div>
                                </div>
                            </ul>
                            <!-- ==================== END OF RECENT ORDERS CONTENT ==================== -->

                            <!-- ==================== RECENT TASKS CONTENT ==================== -->
                            <ul style="display: none;" id="recentTasks" class="floatingBoxContainers">
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/zoidberg-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">George McCain</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>1 day ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/rimmer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Arnold Karlsberg</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>3 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/peter-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Peter Kay</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>5 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/homer-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">John Doe</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>5 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                                <li>
                                    <div class="circleAvatar"><img alt="" src="img/peter-avatar.jpg"></div>
                                    <p class="headLine">
                                        <span class="author">Peter Kay</span>
                                        <i class="icon-circle"></i>
                                        <span>created a <span class="redText">new task</span></span>
                                        <i class="icon-circle"></i>
                                        <span>7 days ago</span>
                                        <i class="icon-play-circle moreOptions pull-right" data-original-title="" title=""></i>
                                    </p>
                                    <p>"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco..."</p>
                                </li>
                            </ul>
                            <!-- ==================== END OF RECENT TASKS CONTENT ==================== -->
                        </div>
                    </div>
                </div>
                <!-- ==================== END OF ACTIVITIES FLOATING BOX ==================== -->
            </div>


        </div>
        <!-- ==================== END OF COMMON ELEMENTS ROW ==================== -->

<script type="text/javascript">
    $(document).ready(function () {

        // prepare chart data as an array
        var sampleData = [
            { Day: 'Monday', Running: 30, Swimming: 0, Cycling: 25, Goal: 40 },
            { Day: 'Tuesday', Running: 25, Swimming: 25, Cycling: 0, Goal: 50 },
            { Day: 'Wednesday', Running: 30, Swimming: 0, Cycling: 25, Goal: 60 },
            { Day: 'Thursday', Running: 20, Swimming: 20, Cycling: 25, Goal: 40 },
            { Day: 'Friday', Running: 0, Swimming: 20, Cycling: 25, Goal: 50 },
            { Day: 'Saturday', Running: 30, Swimming: 0, Cycling: 30, Goal: 60 },
            { Day: 'Sunday', Running: 20, Swimming: 40, Cycling: 0, Goal: 90 }
        ];

        // prepare jqxChart settings
        var settings = {
            title: "Fitness & exercise weekly scorecard",
            description: "Time spent in vigorous exercise by activity",
            enableAnimations: true,
            showLegend: true,
            padding: { left: 5, top: 5, right: 5, bottom: 5 },
            titlePadding: { left: 40, top: 0, right: 0, bottom: 10 },
            source: sampleData,
            rtl: true,
            xAxis:
            {
                dataField: 'Day',
                showTickMarks: true,
                tickMarksInterval: 1,
                tickMarksColor: '#888888',
                unitInterval: 1,
                showGridLines: false,
                gridLinesInterval: 1,
                gridLinesColor: '#888888',
                axisSize: 'auto'
            },
            colorScheme: 'scheme01',
            seriesGroups:
                    [
                        {
                            type: 'stackedcolumn',
                            columnsGapPercent: 100,
                            seriesGapPercent: 5,
                            valueAxis:
                            {
                                unitInterval: 10,
                                minValue: 0,
                                maxValue: 100,
                                displayValueAxis: true,
                                description: 'Time in minutes',
                                axisSize: 'auto',
                                tickMarksColor: '#888888',
                                gridLinesColor: '#777777'
                            },
                            series: [
                                { dataField: 'Running', displayText: 'Running' },
                                { dataField: 'Swimming', displayText: 'Swimming' },
                                { dataField: 'Cycling', displayText: 'Cycling' }
                            ]
                        }
                    ]
        };

        // setup the chart
        $('#chartContainer').jqxChart(settings);

       /* var hours = new Date().getHours(),
                minutes = new Date().getMinutes(),
                seconds = new Date().getSeconds(),
                digits = {
                    1: 'I',
                    2: 'II',
                    3: 'III',
                    4: 'IV',
                    5: 'V',
                    6: 'VI',
                    7: 'VII',
                    8: 'VIII',
                    9: 'IX',
                    10: 'X',
                    11: 'XI',
                    12: 'XII'
                };

        $('#minutes').jqxGauge({
            ticksMinor: { visible: false },
            ticksMajor: { visible: false },
            labels: { visible: false },
            animationDuration: 0,
            min: 0, max: 12,
            border: { style: { fill: 'none', stroke: 'none'}, showGradient: false },
            caption: { value: '' },
            colorScheme: 'scheme05',
            style: { fill: 'none', stroke: 'none' },
            pointer: { length: '70%', width: '2%' },
            cap: { style: { fill: '#249dd6', stroke: '#249dd6'} },
            startAngle: -90,
            endAngle: 270,
            value: (minutes / 60) * 12
        });

        $('#hours').jqxGauge({
            ticksMinor: { visible: false },
            ticksMajor: { visible: false },
            labels: { visible: false },
            animationDuration: 0,
            min: 0, max: 12,
            caption: { value: '' },
            border: { style: { fill: 'none', stroke: 'none' }, showGradient: false },
            colorScheme: 'scheme05',
            pointer: { length: '50%', width: '3%' },
            style: { fill: 'none', stroke: 'none' },
            value: hours % 12 + (minutes / 60 * 11) / 12,
            startAngle: -90,
            endAngle: 270
        });

        $('#seconds').jqxGauge({
            ticksMinor: {
                interval: 0.2,
                size: '3%',
                style: {
                    fill: '#aaaaaa',
                    stroke: '#aaaaaa',
                    'stroke-width': '2px'
                }
            },
            ticksMajor: {
                interval: 1,
                size: '8%',
                style: {
                    fill: '#aaaaaa',
                    stroke: '#aaaaaa',
                    'stroke-width': '2px'
                }
            },
            ticksDistance: '10%',
            startAngle: -90,
            endAngle: 270,
            labels: {
                distance: '28%',
                interval: 1,
                formatValue: function (val) {
                    if (val == 0) {
                        return '';
                    }
                    return digits[val];
                }
            },
            pointer: { length: '80%', width: '1.7%' },
            ranges: [],
            caption: { value: 'CASIO', offset: [0, -30] },
            animationDuration: 0, min: 0, max: 12,
            border: { fill: 'none', stroke: 'none' },
            colorScheme: 'scheme05',
            style: { fill: '#ffffff', stroke: '#cccccc' },
            value: (seconds / 60) * 12
        });

        setInterval(function () {
            var seconds = $('#seconds').jqxGauge('value'),
                    minutes = $('#minutes').jqxGauge('value'),
                    hours = $('#hours').jqxGauge('value'),
                    ratio = 12 / 60;
            seconds += ratio;
            if (seconds > 12) {
                seconds = ratio;
            }
            $('#seconds').jqxGauge('value', seconds);
            if (seconds === ratio) {
                minutes += ratio;
                if (minutes >= 12) {
                    minutes = ratio;
                }
                $('#minutes').jqxGauge('value', minutes);
                hours += 1 / 60;
                if (hours > 12) {
                    hours = 1 / 60;
                }
                $('#hours').jqxGauge('value', hours);
            }
        }, 1000);*/


        // prepare chart data as an array

        var source =
        [{
            Browser: "Internet Explorer",Share:33.3
        },{
            Browser: "Firefox",Share:26.5
        },{
            Browser: "Chrome",Share:25.4
        },{
            Browser: "Safari",Share:7.0
        },{
            Browser: "Sumon",Share:2.3
        },{
            Browser: "Opera",Share:2.3
        },{
            Browser: "Other",Share:3.2
        }];

        //resources/jqwidgets
        // prepare chart data as an array
        /*var source =
        {
            datatype: "csv",
            datafields: [
                { name: 'Browser' },
                { name: 'Share' }
            ],
            url: '../resources/jqwidgets/sampledata/mobile_browsers_share_dec2011.txt'
        };

        var dataAdapter = new $.jqx.dataAdapter(source, { async: false, autoBind: true, loadError: function (xhr, status, error) { alert('Error loading "' + source.url + '" : ' + error); } });
*/
        // prepare jqxChart settings
        var settings = {
            title: "Mobile browsers share",
            description: "(source: wikipedia.org)",
            enableAnimations: true,
            showLegend: true,
            showBorderLine: true,
            legendLayout: { left: 700, top: 160, width: 300, height: 200, flow: 'vertical' },
            padding: { left: 5, top: 5, right: 5, bottom: 5 },
            titlePadding: { left: 0, top: 0, right: 0, bottom: 10 },
            source: source,
            colorScheme: 'scheme03',
            seriesGroups:
                    [
                        {
                            type: 'pie',
                            showLabels: true,
                            series:
                                    [
                                        {
                                            dataField: 'Share',
                                            displayText: 'Browser',
                                            labelRadius: 170,
                                            initialAngle: 15,
                                            radius: 145,
                                            centerOffset: 0,
                                            formatFunction: function (value) {
                                                if (isNaN(value))
                                                    return value;
                                                return parseFloat(value) + '%';
                                            }
                                        }
                                    ]
                        }
                    ]
        };

        // setup the chart
        $('#chartContainer2').jqxChart(settings);

        var dataStatCounter =
                [
                    { Browser: 'Chrome', Share: 45.6 },
                    { Browser: 'IE', Share: 24.6 },
                    { Browser: 'Firefox', Share: 20.4 },
                    { Browser: 'Safari', Share: 5.1 },
                    { Browser: 'Opera', Share: 1.3 },
                    { Browser: 'Other', Share: 3.0 }
                ];

        var dataW3CCounter =
                [
                    { Browser: 'Chrome', Share: 34.1 },
                    { Browser: 'IE', Share: 20.3 },
                    { Browser: 'Firefox', Share: 18.3 },
                    { Browser: 'Safari', Share: 17.8 },
                    { Browser: 'Opera', Share: 2.7 },
                    { Browser: 'Other', Share: 6.8 }
                ];

        var dataWikimedia =
                [
                    { Browser: 'Chrome', Share: 42.7 },
                    { Browser: 'IE', Share: 18.0 },
                    { Browser: 'Firefox', Share: 15.3 },
                    { Browser: 'Safari', Share: 6.1 },
                    { Browser: 'Opera', Share: 2.4 },
                    { Browser: 'Other', Share: 15.6 }
                ];

        var dataNetApplications =
                [
                    { Browser: 'Chrome', Share: 16.4 },
                    { Browser: 'IE', Share: 55.2 },
                    { Browser: 'Firefox', Share: 18.0 },
                    { Browser: 'Safari', Share: 5.8 },
                    { Browser: 'Opera', Share: 1.3 },
                    { Browser: 'Other', Share: 3.4 }
                ];

        var charts = [
            { title: 'Stat counter', label: 'Stat', dataSource: dataStatCounter },
            { title: 'W3C counter', label: 'W3C', dataSource: dataW3CCounter },
            { title: 'Wikimedia', label: 'Wikimedia', dataSource: dataWikimedia },
            { title: 'Net Applications', label: 'NetApp', dataSource: dataNetApplications }
        ];

        for (var i = 0; i < charts.length; i++) {
            var chartSettings = {
                source: charts[i].dataSource,
                title: '',
                description: charts[i].title,
                enableAnimations: false,
                showLegend: true,
                showBorderLine: true,
                padding: { left: 5, top: 5, right: 5, bottom: 5 },
                titlePadding: { left: 0, top: 0, right: 0, bottom: 10 },
                colorScheme: 'scheme03',
                seriesGroups: [
                    {
                        type: 'pie',
                        showLegend: true,
                        enableSeriesToggle: true,
                        series:
                                [
                                    {
                                        dataField: 'Share',
                                        displayText: 'Browser',
                                        showLabels: true,
                                        labelRadius: 160,
                                        labelLinesEnabled: true,
                                        labelLinesAngles: true,
                                        labelsAutoRotate: false,
                                        initialAngle: 0,
                                        radius: 125,
                                        minAngle: 0,
                                        maxAngle: 180,
                                        centerOffset: 0,
                                        offsetY: 170,
                                        formatFunction: function (value, itemIdx, serieIndex, groupIndex) {
                                            if (isNaN(value))
                                                return value;

                                            return value + '%';
                                        }
                                    }
                                ]
                    }
                ]
            };

            // select container and apply settings
            var selector = '#chartContainer' + (i + 3);
            $(selector).jqxChart(chartSettings);

        } // for

    });
</script>