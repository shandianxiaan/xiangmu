
<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
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
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">库存管理</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">短缺查询</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">超储查询</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">修改/添加库存及预警</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord">
										<thead>
											<tr>
												<th>编号</th>
												<th>商品名称</th>
												<th>商品分类</th>
												<th>产地</th>
												<th>数量</th>
												<th>价格</th>
												
												<th>预警</th>
												<th>修改/添加预警</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${goodsList}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.goodsName}</td>
												<td>${item.tname}</td>
												<td>${item.productAddress}</td>
												<td class="xixi">${item.number}</td>
												<td>${item. price}</td>
												
												<td>
												<c:if test="${item.number<=item.warnshort}"><h4 style="color:#F00">短缺</h4></c:if>
												<c:if test="${item.number>=item.warnhight}"><h4 style="color:#00F">超储</h4></c:if>
												 <c:if test="${item.number<item.warnhight && item.number>item.warnshort}"><h4 style="color:#0F0">正常</h4></c:if> 
												</td>
												<td class="edit"><button onclick="btn_edit(${item.id})"><i class="icon-edit bigger-120"></i>编辑</button></td>
											</tr>
											</c:forEach>
										</tbody>

									</table>
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						
						<ul style="display: none;;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord">
										<thead>
											<tr>
												<th>编号</th>
												<th>商品名称</th>
												<th>商品分类</th>
												<th>产地</th>
												<th>库存数量</th>
												<th>短缺预警数量</th>
												<th>价格</th>
												<th>规格</th>
												<th>包装</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${shortList}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.goodsName}</td>
												<td>${item.tname}</td>
												<td>${item.productAddress}</td>
												<td class="xixi">${item.number}</td>
												<td>${item.warnshort}</td>
												<td>${item. price}</td>
												<td>${item.goodSize}</td>
												<td>${item.packaging}</td>
											
											</tr>
											</c:forEach>
										</tbody>

									</table>
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						
						<ul style="display: none;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord">
										<thead>
											<tr>
												<th>编号</th>
												<th>商品名称</th>
												<th>商品分类</th>
												<th>产地</th>
												<th>库存数量</th>
												<th>超储预警数量</th>
												<th>价格</th>
												<th>规格</th>
												<th>包装</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${hightList}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.goodsName}</td>
												<td>${item.tname}</td>
												<td>${item.productAddress}</td>
												<td class="xixi">${item.number}</td>
												<td>${item.warnhight}</td>
												<td>${item. price}</td>
												<td>${item.goodSize}</td>
												<td>${item.packaging}</td>
												
											</tr>
											</c:forEach>
										</tbody>

									</table>
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						
						
						
								
						<ul class="theme-popbod dform" style="display: none;">
								<div class="am-cf admin-main" style="padding-top: 0px;">
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;" id="ff">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						
								<form class="am-form am-form-horizontal"
							action="<%=Const.ROOT%>/goods/warn" method="post">
									<input type="hidden" id="ids" name="id"/>
						
						
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="n1" required
										placeholder="商品名称" disabled="disabled">
								</div>
							</div>
						
						<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									库存数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="number1" required
										placeholder="库存数量" name="number">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									商品价格</label>
								<div class="am-u-sm-9">
									<input type="text" id="price1" required
										placeholder="商品价格" name="price">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									短缺预警数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="warnshort1" required
										placeholder="短缺预警数量" name="warnshort">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									超储预警数量</label>
								<div class="am-u-sm-9">
									<input type="text" id="warnhight1" required
										placeholder="超储预警数量" name="warnhight" >
								</div>
							</div>
								
								
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" id="btn" value="修改" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
		<!-- content end -->
	</div>
							<!--添加 end-->
						</ul>
						
						
						
						
						
						</div>
					</div>
					<!--tab end-->

				</div>

				<script src="<%=Const.ROOT%>/js/jquery-1.7.2.min.js" type="text/javascript"></script>
				<script src="<%=Const.ROOT%>/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
				<script src="<%=Const.ROOT%>/js/_layout.js"></script>
				<script src="<%=Const.ROOT%>/js/plugs/jquery.SuperSlide.source.js"></script>
				<script>
					var num = 1;
				$(function(){
					$("#menu li").each(function(index,li){
						$(li).click(function(){
							$(this).addClass("on").siblings().removeClass("on");
							$(".bd ul").eq(index).show().siblings().hide();
						});
					});
				});

				
				
				$("#haha").click(function(){

					if($("#ids").val()==""){
					alert("请选择您要修改或添加预警数量的商品")
					location.href="<%=Const.ROOT%>/goods/List";
					}
				
				})
				
				$("#haha").click(function(){
					$("#ff input").val("");
					
				});
				
				
				function btn_edit(id){
					//加载数据
					
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/goods/hehe",
								data: { id: id },
								success: function(data) {
									
									$("#warnshort1").val("");
									$("#warnhight1").val("");
									$("#btn").val("修改/添加库存及预警")
									$("#ids").val(data.id);
									$("#n1").val(data.goodsName);
									$("#number1").val(data.number);
									$("#price1").val(data.price);
									$("#warnshort1").val(data.warnshort);
									$("#warnshort1").val(data.warnshort);
									$("#warnhight1").val(data.warnhight);
									
									
								}
							});
						
					$("#menu li:eq(3)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(3)").show().siblings().hide();
				}

					
				</script>

			</div>
	</body>

</html>