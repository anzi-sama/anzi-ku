﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人格障碍诊断</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/public.css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/public.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/external.js"></script>

</head>

<body>
	<!-- 头部 -->
	<div class="head">
		<div class="headL">
			<img class="headLogo" src="<%=request.getContextPath() %>/images/banner2.png"/>
		</div>
		<div class="headR">
	    <a href="<%=request.getContextPath() %>/user_login.jsp" target="_parent">【退出】</a>
		</div>
	</div>
    <div class="user">
    <span>${sessionScope.user.username}</span>
    </div> 
    
</body>

</html>