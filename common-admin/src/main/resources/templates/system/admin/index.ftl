<!DOCTYPE html>
<html>
<head>
  <#include "../macro/base.ftl"/>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="adminlte/layui/css/layui.css" media="all" />
  <title>天和仪表MES生产管理系统</title>
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
					<div style="padding: 20px; background-color: #F2F2F2 ;">
						<div class="layui-row layui-col-space15">
							<div class="layui-col-md4" >
								<div class="layui-card" style="background-color: #00bbee; color: white; font-family: 黑体; font-size: 19px">
									<div class="layui-card-header" style="color: white;font-size: 19px;font-family: 华文琥珀;">生产订单</div>
									<div class="layui-card-body" style="height:260px;" >
										<table  width="98%" height="98%" >
											<tr>
												<td colspan="2">民用</td>
												<td colspan="2">工业</td>
											</tr>
											<tr>
												<td>当日数量</td>
												<td><span id="civilDayOrder"></span></td>
												<td>当日数量</td>
												<td><span id="industryDayOrder"></span></td>
											</tr>
											<tr>
												<td>上周数量</td>
												<td><span id="civilWeekOrder"></span></td>
												<td>上周数量</td>
												<td><span id="industryWeekOrder"></span></td>
											</tr>
											<tr>
												<td>本月数量</td>
												<td><span id="civilMonthOrder"></span></td>
												<td>本月数量</td>
												<td><span id="industryMonthOrder"></span></td>
											</tr>
											<tr>
												<td>本年数量</td>
												<td><span id="civilYearOrder"></span></td>
												<td>本年数量</td>
												<td><span id="industryYearOrder"></span></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="layui-col-md4">
								<div class="layui-card" style="background-color: #00bbee;color: white; font-family: 黑体 ; font-size: 19px">
									<div class="layui-card-header" style="color: white;font-size: 19px;font-family: 华文琥珀;">销售订单</div>
									<div class="layui-card-body" style="height: 260px;">
										<table  width="98%" height="98%" >
											<tr>
												<td colspan="2">民用</td>
												<td colspan="2">工业</td>
											</tr>
											<tr>
												<td>当日数量</td>
												<td><span id="civilSaleDayOrder"></span></td>
												<td>当日数量</td>
												<td><span id="industrySaleDayOrder"></span></td>
											</tr>
											<tr>
												<td>上周数量</td>
												<td><span id="civilSaleWeekOrder"></span></td>
												<td>上周数量</td>
												<td><span id="industrySaleWeekOrder"></span></td>
											</tr>
											<tr>
												<td>本月数量</td>
												<td><span id="civilSaleMonthOrder"></span></td>
												<td>本月数量</td>
												<td><span id="industrySaleMonthOrder"></span></td>
											</tr>
											<tr>
												<td>本年数量</td>
												<td><span id="civilSaleYearOrder"></span></td>
												<td>本年数量</td>
												<td><span id="industrySaleYearOrder"></span></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="layui-col-md4">
								<div class="layui-card" style="background-color: #00bbee;color: white;font-family: 黑体;font-size: 19px">
									<div class="layui-card-header" style="color: white;font-size: 19px;font-family: 华文琥珀;">发货</div>
									<div class="layui-card-body" style="height: 260px;">
										<table  width="98%" height="98%" >
											<tr>
												<td colspan="2">民用</td>
												<td colspan="2">工业</td>
											</tr>
											<tr>
												<td>当日数量</td>
												<td><span id="dayCivilSendGoods"></span></td>
												<td>当日数量</td>
												<td><span id="dayDustrySendGoods"></span></td>
											</tr>
											<tr>
												<td>上周数量</td>
												<td><span id="weekCivilSendGoods"></span></td>
												<td>上周数量</td>
												<td><span id="weekDustrySendGoods"></span></td>
											</tr>
											<tr>
												<td>本月数量</td>
												<td><span id="monthCivilSendGoods"></span></td>
												<td>本月数量</td>
												<td><span id="monthDustrySendGoods"></span></td>
											</tr>
											<tr>
												<td>本年数量</td>
												<td><span id="yearCivilSendGoods"></span></td>
												<td>本年数量</td>
												<td><span id="yearDustrySendGoods"></span></td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="layui-col-md4"><#--background-image: url(adminlte/layui/images/background/timg.jpg);-->
								<div class="layui-card" style="background-color: #00bbee;color: white;font-family: 黑体;font-size: 19px">
									<div class="layui-card-header" style="color: white; font-size: 19px;font-family: 华文琥珀;">进货</div>
									<div class="layui-card-body" style="height: 260px;">
										<table  width="98%" height="98%" >
											<tr>
												<td >名称</td>
												<td >数量</td>
											</tr>
											<tr>
												<td>阀门</td>
												<td><span id="dayInVavle"></span></td>
											</tr>
											<tr>
												<td>主板</td>
												<td><span id="dayInMainBoard"></span></td>
											</tr>
											<tr>
												<td>皮膜表</td>
												<td><span id="dayInEpidermis"></span></td>
											</tr>
<#--											<tr>-->
<#--												<td>控制盒</td>-->
<#--												<td><span id="dayInControlDiv"></span></td>-->
<#--											</tr>-->
										</table>
									</div>
								</div>
							</div>
							<div class="layui-col-md4">
								<div class="layui-card" style="background-color: #00bbee;color: white;font-family: 黑体;font-size: 19px">
									<div class="layui-card-header" style="color: white;font-size: 19px;font-family: 华文琥珀;">原材料库存</div>
									<div class="layui-card-body" style="height: 260px;">
										<table  width="98%" height="98%" >
											<tr>
												<td >名称</td>
												<td >数量</td>
											</tr>
											<tr>
												<td>阀门</td>
												<td><span id="vavle"></span></td>
											</tr>
											<tr>
												<td>主板</td>
												<td><span id="mainBoard"></span></td>
											</tr>
											<tr>
												<td>皮膜表</td>
												<td><span id="epidermis"></span></td>
											</tr>
											<#--<tr>
												<td>控制盒</td>
												<td><span id="controlDiv"></span></td>
											</tr>-->
										</table>
									</div>
								</div>
							</div>
							<div class="layui-col-md4">
								<div class="layui-card" style="background-color: #00bbee;color: white;font-family: 黑体;font-size: 19px">
									<div class="layui-card-header" style="color: white;font-size: 19px;font-family: 华文琥珀">成品库库存</div>
									<div class="layui-card-body" style="height: 260px;">
										<table  width="98%" height="98%" >
											<tr>
												<td >名称</td>
												<td >数量</td>
											</tr>
											<tr>
												<td >控制器</td>
												<td ><span id="control"></span></td>
											</tr>
											<tr>
												<td>民用表</td>
												<td><span id="civilWatch"></span></td>
											</tr>
											<tr>
												<td>商业皮膜表</td>
												<td><span id="businessWatch"></span></td>
											</tr>
											<#--<tr>
												<td>阀门</td>
												<td>1000000</td>
											</tr>-->

										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
		</section>
		</div>
		<@footer/>
		<@setting/>
	</div>
	<@jsFile/>
	<script>
		$('#navTabs li').click(function (e) {
			/*e.preventDefault();*/
			$(this).tab('show');
			setInterval(function(){
				refresh(true)
			}, 1);
		})
	</script>
	<script type="text/javascript" src="adminlte/layui/layui.js"></script>
	<script>
		layui.use(['element', 'layer'], function() {
			var element = layui.element;
			var layer = layui.layer;
		});
		$(function () {
			$.ajax({
				//几个参数需要注意一下
				type: "POST",//方法类型
				dataType: "json",//预期服务器返回的数据类型
				url: "/myIndexValue" ,//url
				success: function (result) {
					if (result.success>0) {
						$("#civilDayOrder").text(result.civilDayOrder);
						$("#civilMonthOrder").text(result.civilMonthOrder);
						$("#civilYearOrder").text(result.civilYearOrder);
						$("#industryDayOrder").text(result.industryDayOrder);
						$("#industryMonthOrder").text(result.industryMonthOrder);
						$("#industryYearOrder").text(result.industryYearOrder);
						$("#civilSaleDayOrder").text(result.civilSaleDayOrder);
						$("#civilSaleMonthOrder").text(result.civilSaleMonthOrder);
						$("#civilSaleYearOrder").text(result.civilSaleYearOrder);
						$("#industrySaleDayOrder").text(result.industrySaleDayOrder);
						$("#industrySaleMonthOrder").text(result.industrySaleMonthOrder);
						$("#industrySaleYearOrder").text(result.industrySaleYearOrder);
						$("#dayCivilSendGoods").text(result.dayCivilSendGoods);
						$("#monthCivilSendGoods").text(result.monthCivilSendGoods);
						$("#yearCivilSendGoods").text(result.yearCivilSendGoods);
						$("#dayDustrySendGoods").text(result.dayDustrySendGoods);
						$("#monthDustrySendGoods").text(result.monthDustrySendGoods);
						$("#yearDustrySendGoods").text(result.yearDustrySendGoods);
						$("#dayInVavle").text(result.dayInVavle);
						$("#dayInMainBoard").text(result.dayInMainBoard);
						$("#dayInControlDiv").text(result.dayInControlDiv);
						$("#dayInEpidermis").text(result.dayInEpidermis);
						$("#vavle").text(result.vavle);
						$("#mainBoard").text(result.mainBoard);
						$("#controlDiv").text(result.controlDiv);
						$("#epidermis").text(result.epidermis);
						$("#control").text(result.control);
						$("#civilWatch").text(result.civilWatch);
						$("#businessWatch").text(result.businessWatch);
						$("#industryWeekOrder").text(result.industryWeekOrder);
						$("#civilWeekOrder").text(result.civilWeekOrder);
						$("#industrySaleWeekOrder").text(result.industrySaleWeekOrder);
						$("#civilSaleWeekOrder").text(result.civilSaleWeekOrder);
						$("#weekCivilSendGoods").text(result.weekCivilSendGoods);
						$("#weekDustrySendGoods").text(result.weekDustrySendGoods);






					}else{
						/*  alert("系统错误");*/
						layer.msg('操作失败', {
							btnAlign: 'c',
							time: 10000, //20s后自动关闭
							btn: ['确定']
						});
					}
				}
			});
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
