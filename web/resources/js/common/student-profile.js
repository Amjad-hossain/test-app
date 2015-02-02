/**
 * Created by habib on 1/27/15.
 */

$(document).ready(function() {

/*
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

    *//* var hours = new Date().getHours(),
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
     }, 1000);*//*


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
    *//*var source =
     {
     datatype: "csv",
     datafields: [
     { name: 'Browser' },
     { name: 'Share' }
     ],
     url: '../resources/jqwidgets/sampledata/mobile_browsers_share_dec2011.txt'
     };

     var dataAdapter = new $.jqx.dataAdapter(source, { async: false, autoBind: true, loadError: function (xhr, status, error) { alert('Error loading "' + source.url + '" : ' + error); } });
     *//*
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

    } // for*/
});



