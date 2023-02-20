<!DOCTYPE html>
<html>
//hi，我是person1
<head>
	<meta charset="utf-8">
	<title>词云图案例</title>
	<script type="text/javascript" src='js/echarts.js'></script>
	<script type="text/javascript" src='js/echarts-wordcloud.min.js'></script>
</head>

<body>
	<div id="main" style="width:80%;height: 500px;border: 1px solid black"></div>
	<script type="text/javascript">
		//基于准备好的dom，初始化ECharts图表
		var myChart = echarts.init(document.getElementById("main"));
		var option = {  //指定图表的配置项和数据
			backgroundColor: 'rgba(128, 128, 128, 0.1)',  //rgba设置透明度0.1
			title: {  //配置标题组件
				text: '全球编程语言的TIOBE排名',
				x: 'center', y: 15,
				textStyle: {
					color: 'green', fontSize: 22,
				}
			},
			tooltip: { show: true },  //配置提示框组件
			series: [{  //数据系列及其配置
				name: '全球编程语言的TIOBE排名',  //设置名称
				type: 'wordCloud',  //设置图表类型为字云图
				sizeRange: [15, 100],  //设置数据大小范围
				size: ['80%', '80%'],  //设置显示的字云图的大小
				textRotation: [0, 45, 90, 135, -45, -90],  //设置文字倾斜角度
				textPadding: 3,  //设置文字之间的间距
				autoSize: { enable: true, minSize: 5 },  //设置文字的自动大小
				textStyle: {
					normal: {
						color: function () {
							return 'rgb(' + [
								Math.round(Math.random() * 255),
								Math.round(Math.random() * 255),
								Math.round(Math.random() * 255)
							].join(',') + ')';
						}
					},
					emphasis: {
						shadowBlur: 26,
						color: '#333',
						shadowColor: '#ccc',
						fontSize: 20
					}
				},
				data: [  //设置具体的数据
					{ name: "Java", value: 16884 }, { name: "C", value: 16180 },
					{ name: "Python", value: 9089 }, { name: "C++", value: 6229 },
					{ name: "C#", value: 3860 }, { name: "VB.NET", value: 3745 },
					{ name: "Ruby", value: 1318 }, { name: "Assembly", value: 1307 },
					{ name: "R", value: 1261 }, { name: "Delphi", value: 1046 },
					{ name: "VB", value: 1234 }, { name: "Go", value: 1100 },
					{ name: "Delphi", value: 1046 }, { name: "SAS", value: 915 },
					{ name: "Perl", value: 1023 }, { name: "Matlab", value: 924 },
					{ name: "PL/SQL", value: 822 }, { name: "D", value: 814 },
					{ name: "Scheme", value: 193 }, { name: "COBEL", value: 447 },
					{ name: "Scratch", value: 524 }, { name: "Dart", value: 448 },
					{ name: "ABAP", value: 447 }, { name: "Scala", value: 442 },
					{ name: "Fortran", value: 439 }, { name: "LiveCode", value: 169 },
					{ name: "Lisp", value: 409 }, { name: "F#", value: 391 }, ,
					{ name: "Rust", value: 356 }, { name: "Kotlin", value: 319 },
					{ name: "Ada", value: 316 }, { name: "Logo", value: 261 },
					{ name: "SQL", value: 1935 }, { name: "RPG", value: 274 },
					{ name: "PHP", value: 1909 }, { name: "LabVIEW", value: 243 },
					{ name: "Haskell", value: 209 }, { name: "Bash", value: 196 },
					{ name: "ActionScript", value: 182 }, { name: "Transact-SQL", value: 569 },
					{ name: "PowerShell", value: 178 }, { name: "VBScript", value: 203 },
					{ name: "JavaScript", value: 2076 }, { name: "TypeScript", value: 304 },
					{ name: "Objective-C", value: 1501 }, { name: "Prolog", value: 261 },
					{ name: "Groovy", value: 1394 }, { name: "Swift", value: 1362 },
					{ name: "Crystal", value: 168 }, { name: "Lua", value: 379 },
					{ name: "Julia", value: 224 }
				]  //data结束
			}]  //series结束
		};  //option结束
		myChart.setOption(option);  //为echarts对象加载数据 
	</script>
</body>

</html>