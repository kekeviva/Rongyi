<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<meta charset="utf-8"><link rel="icon" href="https://jscdn.com.cn/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* css 代码  */
        </style>
        <script src="https://code.highcharts.com.cn/jquery/jquery-1.8.3.min.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/modules/data.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/modules/series-label.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts/modules/oldie.js"></script>
        <script src="https://code.highcharts.com.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
    </head>
    <body>
        <div class="card" style="width:40px;height:40px; position: absolute;margin-top: 100px;">
        <div id="container" style="width:400px;height:400px;"></div></div>
        <div class="message"></div>
        <script >
        Highcharts.setOptions({
    		global: {
    				useUTC: false
    		}
    });
    function activeLastPointToolip(chart) {
    		var points = chart.series[0].points;
    		chart.tooltip.refresh(points[points.length -1]);
    }
    var chart = Highcharts.chart('container', {
    		chart: {
    				type: 'spline',
    				marginRight: 10,
    				events: {
    						load: function () {
    								var series = this.series[0],
    										chart = this;
    								activeLastPointToolip(chart);
    								setInterval(function () {
    										var x = (new Date()).getTime(), // 当前时间
    												y = Math.random();          // 随机值
    										series.addPoint([x, y], true, true);
    										activeLastPointToolip(chart);
    								}, 1000);
    						}
    				}
    		},
    		title: {
    				text: '动态模拟实时数据'
    		},
    		xAxis: {
    				type: 'datetime',
    				tickPixelInterval: 150
    		},
    		yAxis: {
    				title: {
    						text: null
    				}
    		},
    		tooltip: {
    				formatter: function () {
    						return '<b>' + this.series.name + '</b><br/>' +
    								Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' +
    								Highcharts.numberFormat(this.y, 2);
    				}
    		},
    		legend: {
    				enabled: false
    		},
    		series: [{
    				name: '随机数据',
    				data: (function () {
    						// 生成随机值
    						var data = [],
    								time = (new Date()).getTime(),
    								i;
    						for (i = -19; i <= 0; i += 1) {
    								data.push({
    										x: time + i * 1000,
    										y: Math.random()
    								});
    						}
    						return data;
    				}())
    		}]
    });
        </script>
