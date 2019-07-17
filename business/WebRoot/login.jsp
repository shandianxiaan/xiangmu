<%@ page import="cn.tools.Const" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业进销存管理系统 </title>

<link href="css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>

<form action="<%=Const.ROOT%>/manager/login" method="post">
<div class="login">
    <div class="box png">
		<div class="logo png"></div>
		<div class="input">
			<div class="log">
				<div class="name">
					<label>用户名</label><input type="text" class="text" id="value_1" placeholder="用户名" name="username" tabindex="1">
				</div>
				<div class="pwd">
					<label>密　码</label><input type="password" class="text" id="value_2" placeholder="密码" name="password" tabindex="2">
					<div class="pwd">
					<label>类  型</label>
						<select style="border: 1px solid #999999" name="role" required>
							<option selected="selected" value="-1">请选择类型</option>
							<option value="1">普通管理员</option>
							<option value="2">超级管理员</option>
						</select>
						</div>
						<div style="position: relative;top: -20px">
					<input type="submit" class="submit" tabindex="3" value="登录">
					</div>
					
				</div>
				<div class="tip"></div>
			</div>
		</div>
	</div>
    <div class="air-balloon ab-1 png"></div>
	<div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>
</form>
<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/fun.base.js"></script>
<script type="text/javascript" src="js/script.js"></script>


<!--[if IE 6]>
<script src="js/DD_belatedPNG.js" type="text/javascript"></script>
<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
</body>
</html>