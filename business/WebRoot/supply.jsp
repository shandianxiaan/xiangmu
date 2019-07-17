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
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">供应商管理</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加供应商</li>
							 	<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">修改供应商</li>
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
												<th width="5%">编号</th>
												<th width="10%">供应商名称</th>
												<th width="10%">供应商地址</th>
												<th width="10%">供应商电话</th>
												<th width="10%">联系人姓名</th>
												<th width="10%">联系人手机号</th>
												<th width="10%">联系人邮箱</th>
												<th width="5%">银行名称</th>
												<th width="10%">银行账号</th>
												<th width="8%">编辑</th>
												<th width="8%">删除</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${pageInfo.list}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.companyName}</td>
												<td>${item.supplyAddress}</td>
												<td>${item.supplyTele}</td>
												<td>${item.sname}</td>
												<td>${item.sphone}</td>
												<td>${item.smail}</td>
												<td>${item.sbank}</td>
												<td>${item.saccount}</td>
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
									
									<a href="<%=Const.ROOT%>/supply/supplyList?currentPageNo=${pageInfo.firstPage}" aria-label="Next">首页</a>	
									<c:if test="${pageInfo.pageNum==1}">
							<a href="javascript:void(0)" aria-label="Previous">上一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum>1}">
							<a href="<%=Const.ROOT%>/supply/supplyList?currentPageNo=${pageInfo.prePage}" aria-label="Previous">上一页</a>
									</c:if>
									
									<c:if test="${pageInfo.pageNum==pageInfo.pages}">
							<a href="javascript:void(0)" aria-label="Next">下一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum<pageInfo.pages}">
							<a href="<%=Const.ROOT%>/supply/supplyList?currentPageNo=${pageInfo.nextPage}" aria-label="Next">下一页</a>
									</c:if>
								<a href="<%=Const.ROOT%>/supply/supplyList?currentPageNo=${pageInfo.lastPage}" aria-label="Next">尾页</a>	
								
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
							action="<%=Const.ROOT%>/supply/add" method="post">
						
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									供应商名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="companyName" required
										placeholder="供应商名称" name="companyName">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									供应商地址</label>
								<div class="am-u-sm-9">
									<input type="text" id="supplyAddress" required
										placeholder="供应商地址" name="supplyAddress">
								</div>
							</div>
							
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									供应商电话</label>
								<div class="am-u-sm-9">
									<input type="text" id="supplyTele" required
										placeholder="供应商电话" name="supplyTele">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人姓名</label>
								<div class="am-u-sm-9">
									<input type="text" id="sname" required
										placeholder="联系人姓名" name="sname">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人手机号</label>
								<div class="am-u-sm-9">
									<input type="text" id="sphone" required
										placeholder="联系人手机号" name="sphone">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人邮箱</label>
								<div class="am-u-sm-9">
									<input type="text" id="smail" required
										placeholder="联系人邮箱" name="smail">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="sbank" required
										placeholder="银行名称" name="sbank">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行账号</label>
								<div class="am-u-sm-9">
									<input type="text" id="saccount" required
										placeholder="银行账号" name="saccount">
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加供应商" />
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
							action="<%=Const.ROOT%>/supply/update" method="post">
								<input type="hidden" id="ids" name="id"/>
								<input type="hidden" id="n2" name="hname"/>
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									供应商名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="companyName1" required
										placeholder="供应商名称" name="companyName">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									供应商地址</label>
								<div class="am-u-sm-9">
									<input type="text" id="supplyAddress1" required
										placeholder="供应商地址" name="supplyAddress">
								</div>
							</div>
							
								<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									供应商电话</label>
								<div class="am-u-sm-9">
									<input type="text" id="supplyTele1" required
										placeholder="供应商电话" name="supplyTele">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人姓名</label>
								<div class="am-u-sm-9">
									<input type="text" id="sname1" required
										placeholder="联系人姓名" name="sname">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人手机号</label>
								<div class="am-u-sm-9">
									<input type="text" id="sphone1" required
										placeholder="联系人手机号" name="sphone">
								</div>
							</div>
							
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									联系人邮箱</label>
								<div class="am-u-sm-9">
									<input type="text" id="smail1" required
										placeholder="联系人邮箱" name="smail">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="sbank1" required
										placeholder="银行名称" name="sbank">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									银行账号</label>
								<div class="am-u-sm-9">
									<input type="text" id="saccount1" required
										placeholder="银行账号" name="saccount">
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" id="btn" value="修改供应商" />
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
								url: "<%=Const.ROOT%>/supply/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/supply/supplyList";
									}
								}
							});
						}
					});
				}
				
				
				$("#haha").click(function(){
					$("#ff input").val("");
					if($("#ids").val()==""){
					alert("请选择您要修改的供应商")
					location.href="<%=Const.ROOT%>/supply/supplyList";
					}
				
				})
				
				
				
				function btn_edit(id){
					//加载数据
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/supply/toupdate",
								data: { id: id },
								success: function(data) {

									$("#ff input").val("")
									$("#btn").val("修改供应商")
									$("#ids").val(data.id);
									$("#n2").val(data.companyName);
									$("#companyName1").val(data.companyName);
									$("#supplyAddress1").val(data.supplyAddress);
									$("#supplyTele1").val(data.supplyTele);
									$("#sname1").val(data.sname);
									$("#sphone1").val(data.sphone);
									$("#smail1").val(data.smail);
									$("#sbank1").val(data.sbank);
									$("#saccount1").val(data.saccount);
									
								}
							});
						
					$("#menu li:eq(2)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(2)").show().siblings().hide();
				}
				
				
			</script>

		</div>
	</body>

</html>