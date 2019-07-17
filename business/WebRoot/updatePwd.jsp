<%@ page import="cn.tools.Const" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"prefix="fn"%>
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
							action="<%=Const.ROOT%>/manager/updatemima" method="post">
						
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
								新密码</label>
								<div class="am-u-sm-9">
									<input type="password" id="password" required
										placeholder="新密码" name="password">
								</div>
							</div>
							
							<div class="am-form-group">
								<label for="user-name" class="am-u-sm-3 am-form-label">
								确认密码</label>
								<div class="am-u-sm-9">
									<input type="password" id="checkpassword" required
										placeholder="确认密码" name="checkpassword">
										
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-9 am-u-sm-push-3">
									<input type="submit" id="btns" class="am-btn am-btn-success" value="修改" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<footer class="admin-content-footer">
			<hr>
			<p class="am-padding-left"></p>
			</footer>
		</div>
		<!-- content end -->
	</div>
			
			
							<!-- end-->
	
	
	</body>
	<script src="<%=Const.ROOT%>/js/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="<%=Const.ROOT%>/js/plugs/Jqueryplugs.js" type="text/javascript"></script>
    <script src="<%=Const.ROOT%>/js/_layout.js"></script>
    <script src="<%=Const.ROOT%>/js/plugs/jquery.SuperSlide.source.js"></script>
	<script>
	
	$(function(){
        $("#btns").click(function(){
        	
            var repwd=$("#checkpassword").get(0);
            if($("#checkpassword").val()!=$("#password").val()){
                repwd.setCustomValidity("两次密码要一致");
            }else{
                repwd.setCustomValidity("");
            }

        });
    });
 
    
	</script>
	
</html>
