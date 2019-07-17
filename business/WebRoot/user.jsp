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
							<li class="on" style="box-sizing: initial;-webkit-box-sizing: initial;">普通管理员</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;">添加管理员</li>
							 <li class="" style="box-sizing: initial;-webkit-box-sizing: initial;" id="haha">修改普通管理员密码</li>
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
												<th>编号</th>
												<th>管理员名称</th>
												<th>密码</th>
												<th>编辑</th>
												<th>删除</th>
												
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${managerList}" var="item" varStatus="st">
											<tr>
												<td>${st.count}</td>
												<td>${item.username}</td>
												<td>${item.password}</td>
												<td class="edit"><button onclick="btn_edit(${item.id})"><i class="icon-edit bigger-120"></i>修改</button></td>
												<td class="delete"><button onclick="btn_delete(${item.id})"><i class="icon-trash bigger-120"></i>删除</button></td>
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
							action="<%=Const.ROOT%>/manager/add" method="post">
							
							
						
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									管理员账号</label>
								<div class="am-u-sm-9">
									<input type="text" id="username" required
										placeholder="管理员账号" name="username">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									密码</label>
								<div class="am-u-sm-9">
									<input type="password" id="password" required
										placeholder="密码" name="password">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									确认密码</label>
								<div class="am-u-sm-9">
									<input type="password" id="checkpassword" required
										placeholder="确认密码" >
								</div>
							</div>
								

							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" id="bn" class="am-btn am-btn-success" value="添加管理员" />
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
							action="<%=Const.ROOT%>/manager/update" method="post">
									<input type="hidden" id="ids" name="id"/>
						
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									密码</label>
								<div class="am-u-sm-9">
									<input type="password" id="password1" required
										placeholder="密码" name="password">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="name" class="am-u-sm-3 am-form-label">
									确认密码</label>
								<div class="am-u-sm-9">
									<input type="password" id="checkpassword1" required
										placeholder="确认密码" >
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

	
	
	 $(function(){
        $("#bn").click(function(){
            var repwd=$("#checkpassword").get(0);
            if($("#checkpassword").val()!=$("#password").val()){
                repwd.setCustomValidity("两次密码要一致");
            }else{
                repwd.setCustomValidity("");
            }

        });
    });
	
	
	 $(function(){
        $("#btn").click(function(){
            var repwd=$("#checkpassword1").get(0);
            if($("#checkpassword1").val()!=$("#password1").val()){
                repwd.setCustomValidity("两次密码要一致");
            }else{
                repwd.setCustomValidity("");
            }

        });
    });
	
	
	var btn_delete = function(id) {
					$.jq_Confirm({
						message: "您确定要删除吗?",
						btnOkClick: function() {
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/manager/delete",
								data: { id: id },
								success: function(data) {
								//alert(data)
									if(data > 0) {
								
										location.href="<%=Const.ROOT%>/manager/managerList";
									}
								}
							});
						}
					});
				}
				
				
				
				$("#haha").click(function(){

					if($("#ids").val()==""){
					alert("请选择您要修改的管理员")
					location.href="<%=Const.ROOT%>/manager/managerList";
					}
				
				})
				
				
				
				function btn_edit(id){
					//加载数据
					
							$.ajax({
								type: "post",
								url: "<%=Const.ROOT%>/manager/toupdate",
								data: { id: id },
								success: function(data) {
									$("#ff input").val("");
									$("#btn").val("修改管理员密码");
									$("#ids").val(data.id);
									
								}
							});
						
					$("#menu li:eq(2)").addClass("on").siblings().removeClass("on");
					$(".bd ul:eq(2)").show().siblings().hide();
				}
				
				
				
				
				
			</script>


		</div>
	</body>

</html>