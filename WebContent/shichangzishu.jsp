<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
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
<title>主页</title>
<!-- bt框架 -->
<%@ include file="bt.jsp"%>


<style>
body {
	font: 10px "Helvetica Neue", Helvetica, Arial, sans-serif;
}

.axis path, .axis line {
	fill: none;
	stroke: #000;
	shape-rendering: crispEdges;
}

.x.axis path {
	display: none;
}

.line {
	fill: none;
	stroke: steelblue;
	stroke-width: 1.5px;
}

.overlay {
	fill: none;
	pointer-events: all;
}

.focus circle {
	fill: steelblue;
}

.focus text {
	font-size: 14px;
}

.tooltip {
	fill: white;
	stroke: #000;
}

.tooltip-date, .tooltip-likes {
	font-weight: bold;
}
</style>

</head>
<body>
	<div class="container">
		<!-- 导航栏 -->
		<%@ include file="nav.jsp"%>

		<div class="row">
			<!-- left主内容区 -->
			<div class="col-md">
				<div id="vi">
					<div id="tt">
						<div>
							<img src="image/rongyiLOGO.png"
								style="height: 150px; margin-left: 0px;" />买好基金 闪耀未来<br>
						</div>

					</div>
				</div>
				<div class="row" style="margin-top: 10px;">

					<div class="list-group col-4">
						<a href="#" style="background-color: red; border-color: red"
							class="list-group-item list-group-item-action flex-column align-items-start active">
							<div class="d-flex w-100 justify-content-between">
								<h3 class="mb-1">13720.17</h3>

							</div>
							<div class="d-flex w-100 justify-content-between">
								<h4 class="mb-1">深证成指 +1.95%</h4>

							</div>
						</a>
					</div>

					<div class="list-group col-4">
						<a href="#" style="background-color: green; border-color: green"
							class="list-group-item list-group-item-action flex-column align-items-start active">
							<div class="d-flex w-100 justify-content-between">
								<h3 class="mb-1">2681.51</h3>

							</div>
							<div class="d-flex w-100 justify-content-between">
								<h4 class="mb-1">创业板指 -0.53%</h4>

							</div>
						</a>
					</div>

					<div class="list-group col-4">
						<a href="#" style="background-color: green; border-color: green"
							class="list-group-item list-group-item-action flex-column align-items-start active">
							<div class="d-flex w-100 justify-content-between">
								<h3 class="mb-1">3342.20</h3>

							</div>
							<div class="d-flex w-100 justify-content-between">
								<h4 class="mb-1">上证指数 -0.53%</h4>

							</div>
						</a>
					</div>
					
				</div>
                <!-- 中间区 -->
				<div class="card" style="width:850px;height:580px; position: absolute;margin-top: 20px;left:0px;">
        		<div id="container"  style="width:800px;height:600px;"></div>
				<pre id="csv" style="display:none">
	                                 日期	   ,开盘,    最高,    最低,    收盘
				2020/5/6,15.33,15.51,14.6,14.85
				2020/5/7,14.69,14.76,13.86,13.89
				2020/5/8,14.01,14.11,13.8,14.04
				2020/5/11,14.04,14.13,13.7,13.84
				2020/5/12,13.77,14.05,13.63,13.94
				2020/5/13,13.86,13.88,13.68,13.84
				2020/5/14,13.77,13.78,13.49,13.53
				2020/5/15,13.54,13.68,13.52,13.56
				2020/5/18,13.56,14.05,13.38,14.03
				2020/5/19,14.16,15.13,14.16,15.03
				2020/5/20,15.05,15.21,14.75,15.05
				2020/5/21,15.1,15.32,14.76,14.8
				2020/5/22,14.83,14.92,14.54,14.75
				2020/5/25,14.73,15.08,14.41,15.04
				2020/5/26,15.06,15.4,15,15.3
				2020/5/27,15.48,15.62,14.81,14.87
				2020/5/28,15.14,15.51,14.94,15.46
				2020/5/29,15.31,16.45,15.28,16.21
				2020/6/1,16.3,16.99,15.97,16.86
				2020/6/2,16.86,17.28,16.62,16.77
				2020/6/3,16.76,16.89,16.47,16.56
				2020/6/4,16.51,16.51,15.86,16.2
				2020/6/5,16.18,16.76,16.14,16.56
				2020/6/8,16.63,16.76,16.06,16.17
				2020/6/9,16.23,16.5,16.09,16.3
				2020/6/10,16.23,16.36,15.96,16.17
				2020/6/11,16.11,16.26,15.78,15.88
				2020/6/12,15.56,15.88,15.41,15.88
				2020/6/15,15.66,15.74,15.06,15.07
				2020/6/16,15.26,16.03,15.24,15.49
				2020/6/17,15.37,15.7,15.25,15.51
				2020/6/18,15.46,15.85,15.41,15.57
				2020/6/19,15.55,15.77,15.37,15.68
				2020/6/22,15.66,15.7,15.16,15.21
				2020/6/23,15.21,15.21,14.93,15.18
				2020/6/24,15.18,15.37,14.96,15.19
				2020/6/29,15.05,15.1,14.88,14.95
				2020/6/30,15.08,15.35,14.96,15.1
				2020/7/1,15.16,15.36,14.99,15.27
				2020/7/2,15.26,15.75,15.08,15.73
				2020/7/3,15.76,15.8,15.31,15.48
				2020/7/6,15.49,16.28,15.37,16.22
				2020/7/7,16.34,16.63,15.89,15.96
				2020/7/8,15.9,15.95,15.61,15.89
				2020/7/9,15.9,16.14,15.78,16.02
				2020/7/10,16,16.54,15.66,16.43
				2020/7/13,16.34,16.49,15.97,16.27
				2020/7/14,16.16,16.22,15.75,15.86
				2020/7/15,16.03,16.36,15.82,15.91
				2020/7/16,16.08,16.09,14.76,14.91
				2020/7/17,15.04,15.16,14.46,14.7
				2020/7/20,14.73,14.95,14.42,14.88
				2020/7/21,14.9,15.01,14.69,14.77
				2020/7/22,14.85,15.11,14.72,14.79
				2020/7/23,14.73,14.73,14.06,14.45
				2020/7/24,14.32,14.64,13.95,14.05
				2020/7/27,14.05,14.17,13.71,13.8
				2020/7/28,13.92,13.99,13.6,13.68
				2020/7/29,13.68,14.25,13.54,14.19
				2020/7/30,14.27,14.27,13.81,13.9
				2020/7/31,13.91,14.26,13.86,14.06
				2020/8/3,14.12,14.21,13.96,14.11
				2020/8/4,14.16,14.27,14.01,14.14
				2020/8/5,14.09,14.14,13.85,14.03
				2020/8/6,14,14.12,13.85,13.97
				2020/8/7,14,14.27,13.93,14.12
				2020/8/10,14.15,14.4,14,14.37
				2020/8/11,14.37,14.7,14.25,14.35
				2020/8/12,14.39,14.9,14.36,14.79
				2020/8/13,14.85,14.9,14.33,14.43
				2020/8/14,14.41,15.07,14.21,15.04
				2020/8/17,15.14,15.19,14.83,15.03
				2020/8/18,15.04,15.38,14.86,15.1
				2020/8/19,15.08,15.85,14.92,15.46
				2020/8/20,15.37,15.56,14.95,15.04
				2020/8/21,15.2,15.54,14.98,15.36
				2020/8/24,15.47,15.8,15.3,15.65
				2020/8/25,15.59,15.67,15.15,15.42
				2020/8/26,15.42,15.64,15.13,15.27
				2020/8/27,15.27,15.28,14.82,14.9
				2020/8/28,14.97,15.2,14.81,15.19
				2020/8/31,15.15,15.36,15,15.22
				2020/9/1,15.22,15.23,14.87,14.98
				2020/9/2,15.05,15.16,14.78,14.82
				2020/9/3,14.86,15.14,14.52,14.76
				2020/9/4,14.55,14.95,14.29,14.93
				2020/9/7,14.78,15.08,14.71,14.88
				2020/9/8,14.88,15.44,14.88,15.42
				2020/9/9,15.3,15.63,15.14,15.28
				2020/9/10,15.41,15.43,15.06,15.08
				2020/9/11,15.13,15.13,14.25,14.5
				2020/9/14,14.55,14.6,14.15,14.31
				2020/9/15,14.22,14.56,14.1,14.56
				2020/9/16,14.52,14.9,14.48,14.62
				2020/9/17,14.5,14.7,14.34,14.48
				2020/9/18,14.46,14.7,14.35,14.68
				2020/9/21,14.69,14.71,14.37,14.42
				2020/9/22,14.26,14.26,13.9,13.98
				2020/9/23,14,14.09,13.89,13.94
				2020/9/24,13.97,13.98,13.76,13.78
				2020/9/25,13.81,13.85,13.55,13.63
				2020/9/28,13.66,13.84,13.64,13.76
				2020/9/29,13.81,13.84,13.64,13.68
				2020/9/30,13.7,13.73,13.52,13.61
				2020/10/9,13.72,13.82,13.6,13.64
				2020/10/12,13.7,13.92,13.59,13.91
				2020/10/13,13.91,13.92,13.71,13.8
				2020/10/14,13.77,13.78,13.6,13.78
				2020/10/15,13.73,13.77,13.41,13.43
				2020/10/16,13.39,13.49,13.36,13.41
				2020/10/19,13.42,13.52,13.21,13.26
				2020/10/20,13.26,13.26,13.15,13.22
				2020/10/21,13.22,13.42,13.2,13.32
				2020/10/22,13.27,13.3,13.08,13.17
				2020/10/23,13.17,13.23,13.09,13.11
				2020/10/26,13.1,13.1,12.89,12.91
				2020/10/27,12.84,12.92,12.75,12.8
				2020/10/28,12.77,12.8,12.4,12.75
				2020/10/29,12.52,12.63,12.48,12.56
				2020/10/30,12.54,12.74,12.51,12.55
				2020/11/2,12.49,12.59,11.94,11.96
				2020/11/3,12.01,12.25,11.91,12.22
				2020/11/4,12.17,12.59,12.15,12.49
				2020/11/5,12.6,13.12,12.53,12.96
				2020/11/6,12.99,13.11,12.83,12.95
				2020/11/9,13.09,13.39,13.08,13.2
				2020/11/10,14.52,14.52,14.01,14.01
				2020/11/11,14.05,14.4,13.83,14.1
				2020/11/12,13.93,14.33,13.92,14.17
				2020/11/13,14.05,14.57,13.95,14.38
				2020/11/16,14.46,15.09,14.31,14.97
				2020/11/17,15.11,15.8,15.11,15.3
				2020/11/18,15.34,15.84,15.19,15.7
				2020/11/19,15.47,15.64,15.22,15.38
				2020/11/20,15.37,15.49,15.09,15.28
				</pre></div>
					<script >
					var chart = null;
					// 获取 CSV 数据并初始化图表
					    chart = Highcharts.chart('container', {
					        data: {
					            csv: document.getElementById('csv').innerHTML
					        },
					        title: {
					            text: '大盘走势'
					        },
					        subtitle: {
					            text: '数据来源: 通信达'
					        },
					        xAxis: {
					            tickInterval: 7 * 24 * 3600 * 1000, // 坐标轴刻度间隔为一星期
					            tickWidth: 0,
					            gridLineWidth: 1,
					            labels: {
					                align: 'left',
					                x: 0,
					                y: 60
					            },
					            // 时间格式化字符
					            // 默认会根据当前的刻度间隔取对应的值，即当刻度间隔为一周时，取 week 值
					            dateTimeLabelFormats: {
					                week: '%Y-%m-%d'
					            }
					        },
					        yAxis: [
					        	{
					        		tickPixelInterval:1,
					        	},
					        	{ // 第一个 Y 轴，放置在左边（默认在坐标）
					            title: {
					                text: null
					            },
					            labels: {
					                align: 'left',
					                x: 3,
					                y: 16,
					                format: '{value:.,0f}'
					            },
					            showFirstLabel: false
					        }, {    // 第二个坐标轴，放置在右边
					            linkedTo: 0,
					            gridLineWidth:0,
					            opposite: true,  // 通过此参数设置坐标轴显示在对立面
					            title: {
					                text: null
					            },
					            labels: {
					                align: 'right',
					                x: -3,
					                y: 16,
					                format: '{value:.,0f}'
					            },
					            showFirstLabel: false
					        }],
					        legend: {
					            align: 'left',
					            verticalAlign: 'top',
					            y: 20,
					            floating: true,
					            borderWidth: 0
					        },
					        tooltip: {
					            shared: true,
					            crosshairs: true,
					            // 时间格式化字符
					            // 默认会根据当前的数据点间隔取对应的值
					            // 当前图表中数据点间隔为 1天，所以配置 day 值即可
					            dateTimeLabelFormats: {
					                day: '%Y-%m-%d'
					            }
					        },
					        plotOptions: {
					            series: {
					                cursor: 'pointer',
					                point: {
					                    events: {
					                        // 数据点点击事件
					                        // 其中 e 变量为事件对象，this 为当前数据点对象
					                        click: function (e) {
					                            $('.message').html( Highcharts.dateFormat('%Y-%m-%d', this.x) + ':<br/>  访问量：' +this.y );
					                        }
					                    }
					                },
					                marker: {
					                    lineWidth: 1
					                }
					            }
					        }
					    });
	

					</script>
</div>
			

			<!-- 右边个人账户区 -->
			<div class="col-md-3" style="height:1000px">
				<%@ include file="right.jsp"%></div>
		</div>
	</div>
</body>
</html>