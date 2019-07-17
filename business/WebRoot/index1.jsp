<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>@ViewBag.Title</title>
		<link href="<%=Const.ROOT%>/css/Site.css" rel="stylesheet" type="text/css" />
		<link href="<%=Const.ROOT%>/css/zy.layout.css" rel="stylesheet" />
		<link href="<%=Const.ROOT%>/css/zy.form.css" rel="stylesheet" />
		<link href="<%=Const.ROOT%>/css/font-awesome.min.css" rel="stylesheet" />
		<style type="text/css">
			.headerlitooleulsubitem_gray {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #BCD4E5;
				border-right: 1px solid #BCD4E5;
				border-bottom: 1px solid #BCD4E5;
				box-shadow: 0px 0px 5px #BCD4E5;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}
			
			.headerlitooleulsubitem_red {
				background-Color: White;
				position: absolute;
				border-left: 1px solid #E5BCD4;
				border-right: 1px solid #E5BCD4;
				border-bottom: 1px solid #E5BCD4;
				box-shadow: 0px 0px 5px #E5BCD4;
				width: 230px;
				margin-left: -170px;
				color: Black;
				display: none;
			}
			
			.headerlitooleulsubitem_gray>li,
			.headerlitooleulsubitem_red>li {
				height: 45px;
				background-color: White;
				padding: 0px 10px;
				border-bottom: 1px solid #E4ECF3;
				font-size: 14px;
				line-height: 26px;
			}
			
			.headerlitoolelisubitemtitle_gray {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #ECF2F7 !important;
				margin: 0px !important;
				color: #8090A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #BCD4E5 !important;
			}
			
			.headerlitoolelisubitemtitle_red {
				height: 35px !important;
				line-height: 35px !important;
				background-color: #F7ECF2 !important;
				margin: 0px !important;
				color: #B471A0 !important;
				font-size: 14px;
				font-weight: bold;
				border-bottom: 1px solid #E5BCD4 !important;
			}
			
			.headerlitooleulsubitem_gray>li:hover {
				background-Color: #F4F9FC;
			}
			
			.headerlitooleulsubitem_red>li:hover {
				background-color: #FCF4F9;
			}
			
			.ulsubitemitems>li {
				float: left;
				height: 20px;
				font-size: 10px;
				font-weight: normal !important;
				color: #555 !important;
			}
			h4{
			
			}
			.ulsubitemitems>li:last-child {
				clear: both;
				width: 100%;
				height: 10px;
				margin-top: 8px;
				background-color: #DADADA;
			}
			
			.headerlitools_info {
				background-color: #0a318d;
				height: 45px;
				padding: 0px 10px;
				width: 135px;
			}
			
			.headeruserface {
				background-image: url('/content/resources/images/logo.png');
				width: 40px;
				height: 40px;
				background-color: white;
				margin: 2px 10px 2px 2px;
				border-radius: 20px;
				float: left;
			}
			
			.headerlitools_ulinfo {
				background-Color: white;
				border-left: 1px solid #D1D1D1;
				border-right: 1px solid #D1D1D1;
				border-bottom: 1px solid #D1D1D1;
				box-shadow: 0px 0px 5px #D1D1D1;
				width: 160px;
				margin-left: -20px;
				color: Black;
				display: none;
			}
			
			.headerlitools_ulinfo>li {
				height: 35px;
				background-color: White;
				padding: 0px 10px;
				font-size: 14px;
				line-height: 36px;
			}
			
			.headerlitools_ulinfo>li:hover {
				background-Color: #FEE188;
			}
			
			.dvcontent {
				padding: 0px 20px;
				margin: 45px auto 0px auto;
				overflow: auto;
			}
			
			.dvpagerecord {
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				float: left;
				border: 1px solid #D9D9D9;
				text-decoration: underline;
				font-size: 14px;
				cursor: pointer;
			}
			
			.dvpagerecord:hover {
				cursor: pointer;
			}
			
			.dvpagerecord:hover i {
				text-decoration: underline;
			}
			
			.ulpageRecord {
				max-width: 165px;
				float: left;
				white-space: nowrap;
				overflow: hidden;
				margin: 0px;
				padding: 0px;
			}
			
			.ulpageRecord li {
				margin: 0px;
				padding: 6px 12px;
				background-color: #EAEFF2;
				color: #2283C5;
				display: inline-block;
				font-size: 10px;
				border: 1px solid #D9D9D9;
			}
			
			.ulpageRecord li:hover {
				text-decoration: underline;
				cursor: pointer;
			}
			
			.currentPage {
				background-color: #2468a9 !important;
				color: white !important;
			}
			
			#warn {
				width: 300px;
			}
			
			#warn tr {
				width: 300px;
				height: 20px;
			}
			
			#warn tr td {
				width: 90px;
				height: 20px;
				text-align: center;
			}
			
			iframe {
				border: none;
			}
		</style>
		<link href="<%=Const.ROOT%>/css/zy.menu.css" rel="stylesheet" />
	</head>

	<body>
		<div class="dvheader">
			<div class="dvheadertools">
				<span class="headerspantitle">进销存管理系统</span>
				<ul class="headerultools">

					<li class="headerlitools_info headerlitools" style="background-color: #075597">
						<div class="headeruserface" style="text-align: center;"><i class="icon-user" style="color: black;font-size: 19px;"></i></div>
						<i style="font-size: 12px;color:#fff"><a href="<%=Const.ROOT%>/manager/logout"><span style="color:#ff0">${managerSerssion.username}管理员</span></a></i><i style="margin-left: 8px;" class="icon-caret-down"></i>
						<ul class="headerlitools_ulinfo">

							<li style="border-top: 1px solid #E4ECF3;">
								<i class="icon-off" style="margin-right: 10px;"></i>
								<a style="color: black; text-decoration: none;">退出</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="dvcontent">

			<ul class="ulleftmenu" style="border-right: 1px solid #ddd;">

				<li class="limenuitem">
					
					 <h4>基础信息管理</h4>
					<ul class="ulleftsubitems">
						<li class="on"><a href="<%=Const.ROOT%>/goodsType/goodsTypeList" target="right">商品类型管理</a></li>
						<li class="on"><a href="<%=Const.ROOT%>/goods/goodsList" target="right">商品管理</a></li>
						<li class="on"><a href="<%=Const.ROOT%>/customer/customerList" target="right">客户管理</a></li>
						<li class="on"><a href="<%=Const.ROOT%>/supply/supplyList" target="right">供应商管理</a></li>
						</ul>
						 <h4>采购管理</h4>
						<ul class="ulleftsubitems">
						<li class="on"><a href="<%=Const.ROOT%>/purchase/purchaseList" target="right">采购单管理</a></li>
						<li class="on"><a href="<%=Const.ROOT%>/preturn/preturnList" target="right">采购退货单管理</a></li>
						</ul>
						
						<h4>销售管理</h4>
						<ul class="ulleftsubitems">
						<li class="on"><a href="<%=Const.ROOT%>/sales/salesList" target="right">销售单管理</a></li>
						<li class="on"><a href="<%=Const.ROOT%>/sreturn/sreturnList" target="right">销售退货单管理</a></li>
						</ul>
						<h4>库存管理</h4>
						<ul class="ulleftsubitems">
						<li class="on"><a href="<%=Const.ROOT%>/goods/List" target="right">库存及预警管理</a></li>
						</ul>
						
						<h4>统计管理</h4>
						<ul class="ulleftsubitems">
						<li class="on"><a href="<%=Const.ROOT%>/sum.jsp" target="right">统计报表</a></li>
						</ul>
						
						<h4>系统管理</h4>
						<ul class="ulleftsubitems">
						<c:if test="${managerSerssion.role=='2'}">
						<li class="on"><a href="<%=Const.ROOT%>/manager/managerList" target="right">用户管理</a></li>
						</c:if>
						<li class="on"><a href="<%=Const.ROOT%>/manager/updatemima" target="right"><li >修改密码</a></li>
						</ul>
				</li>
			</ul>
			<div style="position: absolute; left: 191px; right: 20px; ">
				<iframe src="<%=Const.ROOT%>/goodsType/goodsTypeList" scrolling="no"  width="100%" height="1200" name="right" border="none"></iframe>
			</div>
		</div>
		<script src="<%=Const.ROOT%>/js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="<%=Const.ROOT%>/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
		<script src="<%=Const.ROOT%>/js/_layout.js"></script>

		

	</body>
<script>
$(function(){
		var flag=true;
		$(".limenuitem ul").slideUp("slow");
		$("h4").click(function(){
			if(flag){
				$(this).next("ul").slideDown("slow");
				$(this).next("ul").siblings("ul").slideUp("slow");
			}else {
				$(this).next("ul").slideUp("slow");
			}
			flag=!flag;
		})
	})
	</script>
</html>