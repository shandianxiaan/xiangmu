<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/Site.css" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/zy.all.css" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/font-awesome.min.css" />
		<link rel="stylesheet" href="<%=Const.ROOT%>/css/amazeui.min.css" />
	  <link rel="stylesheet" href="<%=Const.ROOT%>/css/admin.css" />
	</head>

	<body>
		<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd">
						<ul id="menu">
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">按时间查询</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">按时间段查询</li>
							
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<h2>按时间查</h2>
				<h3>销售额查询</h3>
				<div>
						年份：<input type="text" name="year"  id="year"/>  月份:<input type="text"  name="month" id="month"/> 	<input type="button" onclick="showdiv1()" class="am-btn am-btn-success" value="查询" />
					</div>
					<h3>销量查询</h3>
					<div>
						年份：<input type="text" name="year1"  id="year1"/>  月份:<input type="text"  name="month1" id="month1"/> 	<input type="button" onclick="showdiv2()" class="am-btn am-btn-success" value="查询" />
							</div>	
								<div class="am-u-sm-12 am-u-md-6"
						style="padding-top: 50px;">
						<div id="div1" style="width:450px;height:300px;"></div>
					</div>
					<div class="am-u-sm-12 am-u-md-6"
						style="padding-top: 50px;">
						<div id="div2" style="width:450px;height:300px;"></div>
					</div>
								
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						
						<ul style="display: none;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<h3>销售额查询:<span style="font-size: 13px;color:#808080">YYYY-MM-DD格式输入</span></h3>
						开始时间：<input type="text" name="times1" id="times1"/>  结束时间:<input type="text"  name="times2" id="times2"/> 	<input type="button" onclick="showdiv3()" class="am-btn am-btn-success" value="查询" />
								<h3>采购额查询:<span style="font-size: 13px;color:#808080">YYYY-MM-DD格式输入</span></h3>
						开始时间：<input type="text" name="times3"  id="times3"/>  结束时间:<input type="text"  name="times4" id="times4"/> 	<input type="button" onclick="showdiv4()" class="am-btn am-btn-success" value="查询" />
								<div class="am-u-sm-12 am-u-md-6"
									style="padding-top: 50px;">
									<div id="div3" style="width:450px;height:300px;"></div>
								</div>
								<div class="am-u-sm-12 am-u-md-6"
									style="padding-top: 50px;">
									<div id="div4" style="width:450px;height:300px;"></div>
								</div>
								
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						
						
					</div>
				</div>
				<!--tab end-->

			</div>

			
			 <script src="<%=Const.ROOT%>/js/jquery-1.7.2.min.js" type="text/javascript"></script>
              <script src="<%=Const.ROOT%>/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
              <script src="<%=Const.ROOT%>/js/_layout.js"></script>
             <script src="<%=Const.ROOT%>/js/plugs/jquery.SuperSlide.source.js"></script>
             <script src="<%=Const.ROOT%>/js/echarts.common.min.js"></script>
			<script>
				var num = 1;
				$(function() {

				 $(".tabs").slide({ trigger: "click" });

				});
				
				function showdiv1(){
       	 // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('div1'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '销售额统计'
            },
            tooltip: {},
            legend: {
                data:['销售额/元']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '销售额/元',
                type: 'bar',
                data: []
            }]
        };
       var year=$("#year").val();
       var month=$("#month").val();
       var yearreg=/^\d{4}$/;
       var monthreg=/^\d{2}$/;
       var s="";
       if(!yearreg.test(year)){
       		alert("年份格式不正确");
       		return false;
       }else{
       		s=year;
       }
       if(month!=""){
       		if(!monthreg.test(month)){
	       		alert("月份格式不正确");
	       		return false;
       	}else{
       		s=year+"-"+month;
       	}
       }
        $.getJSON("<%=Const.ROOT%>/goods/sum",{"hehe":s},function(data){
        	for(i=0;i<data.length;i++){
        	var d=data[i];
        	option.xAxis.data.push(d.goodsName);
        	option.series[0].data.push(d.totaldis);
        	}
        	 // 使用刚指定的配置项和数据显示图表。
       	 myChart.setOption(option);
        });
       	
       }
       
       
       function showdiv2(){
       	 // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('div2'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '销量统计'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',
                data: []
            }]
        };
       var year=$("#year1").val();
       var month=$("#month1").val();
       var yearreg=/^\d{4}$/;
       var monthreg=/^\d{2}$/;
       var s="";
       if(!yearreg.test(year)){
       		alert("年份格式不正确");
       		return false;
       }else{
       		s=year;
       }
       if(month!=""){
       		if(!monthreg.test(month)){
	       		alert("月份格式不正确");
	       		return false;
       	}else{
       		s=year+"-"+month;
       	}
       }
        $.getJSON("<%=Const.ROOT%>/goods/total",{"hehe":s},function(data){
        	for(i=0;i<data.length;i++){
        	var d=data[i];
        	option.xAxis.data.push(d.goodsName);
        	option.series[0].data.push(d.numberdis);
        	}
        	 // 使用刚指定的配置项和数据显示图表。
       	 myChart.setOption(option);
        });
       	
       }
       
       function showdiv3(){
       	 // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('div3'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '销售额统计'
            },
            tooltip: {},
            legend: {
                data:['销售额/元']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '销售额/元',
                type: 'bar',
                data: []
            }]
        };
       var year=$("#times1").val();
       var month=$("#times2").val();
       
        $.getJSON("<%=Const.ROOT%>/goods/xiaoshou",{"hehe":year,"xixi":month},function(data){
        	for(i=0;i<data.length;i++){
        	var d=data[i];
        	option.xAxis.data.push(d.goodsName);
        	option.series[0].data.push(d.totaldis);
        	}
        	 // 使用刚指定的配置项和数据显示图表。
       	 myChart.setOption(option);
        });
       	
       }
       
       function showdiv4(){
       	 // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('div4'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: '采购额统计'
            },
            tooltip: {},
            legend: {
                data:['采购额/元']
            },
            xAxis: {
                data: []
            },
            yAxis: {},
            series: [{
                name: '采购额/元',
                type: 'bar',
                data: []
            }]
        };
       var year=$("#times3").val();
       var month=$("#times4").val();
       
        $.getJSON("<%=Const.ROOT%>/goods/caigou",{"hehe":year,"xixi":month},function(data){
        	for(i=0;i<data.length;i++){
        	var d=data[i];
        	option.xAxis.data.push(d.goodsName);
        	option.series[0].data.push(d.totaldis);
        	}
        	 // 使用刚指定的配置项和数据显示图表。
       	 myChart.setOption(option);
        });
       	
       }
				
				
				
			</script>


		</div>
	</body>

</html>