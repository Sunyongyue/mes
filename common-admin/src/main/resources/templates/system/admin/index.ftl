<!DOCTYPE html>
<html>
<head>
  <#include "../macro/base.ftl"/>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>TianHe后台</title>
  <@style/>
</head>
<body class="sidebar-mini ajax-template skin-blue fixed">
	<div class="wrapper">
		<@header/>
		<@menu/>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header-navtabs">
			<div  class="tabs-page" style="margin-left: -13px">
				<ul class="tabs-list clearfix" id="navTabs">
					<li class="active" ><span>主页</span></li>
				</ul>
				<a href="javascript:void(0);" class="prev fa fa-step-backward"></a>
				<a href="javascript:void(0);" class="next fa fa-step-forward"></a>
			</div>
			<!--邮件按钮-->
			<div class="context-menu" id="contextMenu">
				<ul class="ct-nav">
					<li rel="reload">刷新标签页</li>
					<li rel="closeCurrent">关闭标签页</li>
					<li rel="closeOther">关闭其他标签页</li>
					<li rel="closeAll">关闭全部标签页</li>
				</ul>
			</div>
		</section>
		<!-- Main content -->
		<section class="content" id="content">
			<div class="tabs-panel">
				<div id="main" style="width: 600px;height:400px;"></div>
			</div>
		</section>
		</div>
		<@footer/>
		<@setting/>
	</div>
	<@jsFile/>
	<script>
		$('#navTabs li').click(function (e) {
			e.preventDefault();
			$(this).tab('show');
			setInterval(function(){
				refresh(true)
			}, 1);
		})
	</script>
	<#--<script src="adminlte/layui/echarts.min.js"></script>
	<script type="text/javascript">
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));
		// 指定图表的配置项和数据
		$.ajax({
			//几个参数需要注意一下
			type: "POST",//方法类型
			dataType: "json",//预期服务器返回的数据类型
			url: "/dataList" ,//url
			success: function (result) {
					// 使用刚指定的配置项和数据显示图表。
				console.log(result[1].dataname+result[1].title)
				var option = {
					title: {
						text: 'TEST'
					},
					tooltip: {},
					legend: {
						data:['TEST']
					},
					xAxis: {
						data:result[1].dataname
					},
					yAxis: {},
					series: [{
						name: 'TEST',
						type: 'bar',
						data:result[1].title
					}]
				};
					myChart.setOption(option);

			},
			error : function() {
				alert("异常！");
			}
		});

	</script>-->
</body>
</html>
