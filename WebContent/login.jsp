<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>心理诊断登录界面</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery2.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>
<script language="javascript" src="js/js.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
<script type="text/javascript" src = "<%=request.getContextPath()%>/js/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>


<script type="text/javascript">
/*
	$().ready(function() {
		
		$("#form1").validate({
			rules:{
				username:"required",
				password:"required",
				code:"required"
				
			},
			messages:{
				username:"请输入用户名",
				password:"请输入密码",
				code:"请输入验证码"
			}
		});
		
	});
	
*/

</script>

</head>


<body style="background-color: #1c77ac; background-image: url(images/light.png) background-repeat:no-repeat; background-position: center top; overflow: hidden;">
	<form action="UserServlet?operator=login" method="post" id="form1">
		<div id="mainBody">
			<div id="cloud1" class="cloud"></div>
			<div id="cloud2" class="cloud"></div>
		</div>
		<div class="logintop">
			<span>欢迎登录心理诊断后台</span>
			<ul>
				<li><a href="#">返回首页</a></li>
			</ul>
		</div>
		<div class="loginbody">
			<span class="systemlogo"></span>
			<div class="loginbox">
				<ul>
					<li><input name="username" id="username" type="text" class="loginuser" placeholder="用户名"
						/></li>
					<li><input name="password" id="password" type="text" class="loginpwd" placeholder="密码"
						/></li>
					<li><input name="code" id ="code" type="text" class="loginy"
						placeholder="输入验证码" /><label>
						
						<img src="ValidateCodeServlet" alt=""  onclick = "flush_code()" id="validateCode"/></label>
					</li>
					<li>
						<span>${mess}</span>
						<input name="" type="submit" class="loginbtn" value="登录"/> 
						<input name="" type="button" class="loginbtn" value="注册" 
						onclick="UserRegistration()" style="margin-left: 30px" /></li>
						
				</ul>
				
			</div>
			
		</div>
		
	</form>

</body>
<script type="text/javascript">

function flush_code() {
	//alert();
	var date = new Date();
	document.getElementById("validateCode").src="ValidateCodeServlet?date="+date;
} 

function UserRegistration(){
	
	//alert(1)
	location.href="UserServlet?operator=toRegister";
	
	}
</script>
</html>
