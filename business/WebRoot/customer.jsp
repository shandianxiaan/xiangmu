<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">客户管理</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加客户</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">修改客户</li>
						</ul>
					</div>
					<div class="bd">
						<ul style="display: block;padding: 20px;">
							<li>
								<!--分页显示角色信息 start-->
								<div id="dv1">
									<table class="table" id="tbRecord"">
										<thead>							
											<tr style="font-size:8px">
												<th width="5%">编号</th>
												<th width="10%">客户名称</th>
												<th width="10%">客户地址</th>
												<th width="10%">客户电话</th>
												<th width="10%">联系人姓名</th>
												<th width="10%">联系人手机号</th>
												<th width="10%">身份证号</th>
												<th width="10%">联系人邮箱</th>
												<th width="5%">银行名称</th>
												<th width="8%">银行账号</th>
												<th width="8%">编辑</th>
												<th width="8%">删除</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${pageInfo.list}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.customerName}</td>
												<td>${item.customerAddress}</td>
												<td>${item.customerTele}</td>
												<td>${item.cname}</td>
												<td>${item.cphone}</td>
												<td>${item.identity}</td>
												<td>${item.cmail}</td>
												<td>${item.cbank}</td>
												<td>${item.caccount}</td>
												<td class="edit"><button onclick="btn_edit(${item.id})"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete(${item.id})"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
										</c:forEach>
										</tbody>
									
									</table>
									<div style="font-size:12px">
									<span>以上记录共:${pageInfo.total}条，打印本页</span>
									<div style="position: relative;left:450px">
									<span>本页显示:${pageInfo.size}条</span>
									<span>${pageInfo.pageSize}条/页</span>
									
									<a href="<%=Const.ROOT%>/customer/customerList?currentPageNo=${pageInfo.firstPage}" aria-label="Next">首页</a>	
									<c:if test="${pageInfo.pageNum==1}">
							<a href="javascript:void(0)" aria-label="Previous">上一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum>1}">
							<a href="<%=Const.ROOT%>/customer/customerList?currentPageNo=${pageInfo.prePage}" aria-label="Previous">上一页</a>
									</c:if>
									
									<c:if test="${pageInfo.pageNum==pageInfo.pages}">
							<a href="javascript:void(0)" aria-label="Next">下一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum<pageInfo.pages}">
							<a href="<%=Const.ROOT%>/customer/customerList?currentPageNo=${pageInfo.nextPage}" aria-label="Next">下一页</a>
									</c:if>
								<a href="<%=Const.ROOT%>/customer/customerList?currentPageNo=${pageInfo.lastPage}" aria-label="Next">尾页</a>	
								
								<span>当前页：${pageInfo.pageNum}/共${pageInfo.pages}页</span>	
								</div>
								</div>
								</div>
								<!--分页显示角色信息 end-->
							</li>
						</ul>
						<ul class="theme-popbod dform" style="display: none;">
								<div class="am-cf admin-main" style="padding-top: 0px;">
			<!-- content start -->
			
	<div class="am-cf admin-main" style="padding-top: 0px;">
		<!-- content start -->
		<div class="admin-content">
			<div class="admin-content-body">
				
				<div class="am-g">
					<div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">
						
					</div>
					<div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4"
						style="padding-top: 30px;">
						<form class="am-form am-form-horizontal"
							action="<%=Const.ROOT%>/customer/add" method="post">
						
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									客户名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerName" required
										placeholder="客户名称" name="customerName">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									客户地址</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerAddress" required
										placeholder="客户地址" name="customerAddress">
								</div>
							</div>
							
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									客户电话</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerTele" required
										placeholder="客户电话" name="customerTele">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人姓名</label>
								<div class="am-u-sm-9">
									<input type="text" id="cname" required
										placeholder="联系人姓名" name="cname">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人手机号</label>
								<div class="am-u-sm-9">
									<input type="text" id="cphone" required
										placeholder="联系人手机号" name="cphone">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									身份证号</label>
								<div class="am-u-sm-9">
									<input type="text" id="identity" required
										placeholder="身份证号" name="identity">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人邮箱</label>
								<div class="am-u-sm-9">
									<input type="text" id="cmail" required
										placeholder="联系人邮箱" name="cmail">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="cbank" required
										placeholder="银行名称" name="cbank">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行账号</label>
								<div class="am-u-sm-9">
									<input type="text" id="caccount" required
										placeholder="银行账号" name="caccount">
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加客户" />
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
							action="<%=Const.ROOT%>/customer/update" method="post">
							<input type="hidden" id="ids" name="id"/>
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									客户名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerName1" required
										placeholder="客户名称" name="customerName">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									客户地址</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerAddress1" required
										placeholder="客户地址" name="customerAddress">
								</div>
							</div>
							
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									客户电话</label>
								<div class="am-u-sm-9">
									<input type="text" id="customerTele1" required
										placeholder="客户电话" name="customerTele">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人姓名</label>
								<div class="am-u-sm-9">
									<input type="text" id="cname1" required
										placeholder="联系人姓名" name="cname">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人手机号</label>
								<div class="am-u-sm-9">
									<input type="text" id="cphone1" required
										placeholder="联系人手机号" name="cphone">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									身份证号</label>
								<div class="am-u-sm-9">
									<input type="text" id="identity1" required
										placeholder="身份证号" name="identity">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人邮箱</label>
								<div class="am-u-sm-9">
									<input type="text" id="cmail1" required
										placeholder="联系人邮箱" name="cmail">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="cbank1" required
										placeholder="银行名称" name="cbank">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行账号</label>
								<div class="am-u-sm-9">
									<input type="text" id="caccount1" required
										placeholder="银行账号" name="caccount">
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" id="btn" value="修改客户" />
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


	
	var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/customer/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/customer/customerList";
									}
								}
							});
						}
					});
				}
				
				$("#haha").click(function(){
					$("#ff input").val("");
					if($("#ids").val()==""){
					alert("请选择您要修改的客户")
					location.href="<%=Const.ROOT%>/customer/customerList";
					}
				
				})
			
				
				function btn_edit(id){
					//加载数据
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/customer/toupdate",
								data: { id: id },
								success: function(data) {

									$("#ff input").val("")
									$("#btn").val("修改类别")
									$("#ids").val(data.id);
									$("#customerName1").val(data.customerName);
									$("#customerAddress1").val(data.customerAddress);
									$("#customerTele1").val(data.customerTele);
									$("#cname1").val(data.cname);
									$("#cphone1").val(data.cphone);
									$("#identity1").val(data.identity);
									$("#cmail1").val(data.cmail);
									$("#cbank1").val(data.cbank);
									$("#caccount1").val(data.caccount);
									
								}
							});
						
					$("#menu li:eq(2)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(2)").show().siblings().hide();
				}
				
				
				
			</script>

		</div>
	</body>

</html>