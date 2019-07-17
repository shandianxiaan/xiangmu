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
		<style>
		
		</style>
	<body>
		<div class="dvcontent">

			<div>
				<!--tab start-->
				<div class="tabs">
					<div class="hd" >
						<ul id="menu">
							<li style="box-sizing: initial;-webkit-box-sizing: initial;" class="on">查看分类</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加分类</li>
							<li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">修改分类</li>
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
												<th>分类编号</th>
												<th>分类名称</th>
												<th>编辑</th>
												<th>删除</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${pageInfo.list}" var="item" varStatus="st">
											<tr>
												<td class="td_center">${st.count}</td>
												<td>${item.typeName}</td>
												<td class="edit"><button onclick="btn_edit('${item.id}')"><i class="icon-edit bigger-120"></i>编辑</button></td>
												<td class="delete"><button onclick="btn_delete('${item.id}')"><i class="icon-trash bigger-120"></i>删除</button></td>
											</tr>
											</c:forEach>
										</tbody>
								
									
									</table>
									<div style="font-size:12px">
									<span>以上记录共:${pageInfo.total}条，打印本页</span>
									<div style="position: relative;left:450px">
									<span>本页显示:${pageInfo.size}条</span>
									<span>${pageInfo.pageSize}条/页</span>
									
									<a href="<%=Const.ROOT%>/goodsType/goodsTypeList?currentPageNo=${pageInfo.firstPage}" aria-label="Next">首页</a>	
									<c:if test="${pageInfo.pageNum==1}">
							<a href="javascript:void(0)" aria-label="Previous">上一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum>1}">
							<a href="<%=Const.ROOT%>/goodsType/goodsTypeList?currentPageNo=${pageInfo.prePage}" aria-label="Previous">上一页</a>
									</c:if>
									
									<c:if test="${pageInfo.pageNum==pageInfo.pages}">
							<a href="javascript:void(0)" aria-label="Next">下一页</a>
									</c:if>
									<c:if test="${pageInfo.pageNum<pageInfo.pages}">
							<a href="<%=Const.ROOT%>/goodsType/goodsTypeList?currentPageNo=${pageInfo.nextPage}" aria-label="Next">下一页</a>
									</c:if>
								<a href="<%=Const.ROOT%>/goodsType/goodsTypeList?currentPageNo=${pageInfo.lastPage}" aria-label="Next">尾页</a>	
								
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
						<form class="am-form am-form-horizontal" action="<%=Const.ROOT%>/goodsType/add" method="post">
						
								<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									分类名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="user-name" required
										placeholder="分类名称" name="typeName">
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" class="am-btn am-btn-success" value="添加分类" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
		<!-- content end -->
	</div>
	
	
							<!-- end-->
						</ul>
						
						
						
						
						<!-- 修改-->
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
						<form class="am-form am-form-horizontal" action="<%=Const.ROOT%>/goodsType/update" method="post">
								<input type="hidden" id="ids" name="id"/>
								<input type="hidden" id="n2" name="tname"/>
								<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
									分类名称</label>
								<div class="am-u-sm-9">
									<input type="text" id="n1" required
										placeholder="分类名称" name="typeName">
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" id="btn" class="am-btn am-btn-success" value="添加分类" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		
		</div>
		<!-- content end -->
	</div>
	
	
							<!-- end-->
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
								url: "<%=Const.ROOT%>/goodsType/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/goodsType/goodsTypeList";
									}
								}
							});
						}
					});
				}
				
				
				
				$("#haha").click(function(){
					$("#ff input").val("");
					if($("#ids").val()==""){
					alert("请选择您要修改的类别")
					location.href="<%=Const.ROOT%>/goodsType/goodsTypeList";
					}
				
				})
				
				
				
				function btn_edit(id){
					//加载数据
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/goodsType/toupdate",
								data: { id: id },
								success: function(data) {
								
									$("#ff input").val("")
									$("#btn").val("修改类别")
									$("#ids").val(data.id);
									$("#n1").val(data.typeName);
									$("#n2").val(data.typeName);
									
								}
							});
						
					$("#menu li:eq(2)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(2)").show().siblings().hide();
				}
				
				
				
				
			</script>

		</div>
	</body>

</html>