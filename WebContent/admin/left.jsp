﻿<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>人格障碍诊断</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/public.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/public.js"></script>
<head></head>

<body id="bg">
	<!-- 左边节点 -->
	<div class="container">

		<div class="leftsidebar_box">
			<a href="<%=request.getContextPath() %>/admin/main.jsp" target="main">
            <div class="line">
		    <img class="icon1" src="<%=request.getContextPath() %>/images/coin01.png" />
            <img class="icon2" src="<%=request.getContextPath() %>/images/coin02.png" />&nbsp;&nbsp;首页
			</div>
            </a>
            
            <!--档案管理-->
            <dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/images/coin09.png" />
                    <img class="icon2" src="<%=request.getContextPath() %>/images/coin10.png" />
                     档案管理
                    <img class="icon3" src="<%=request.getContextPath() %>/images/coin19.png" />
                    <img class="icon4" src="<%=request.getContextPath() %>/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/UserServlet?operator=toDangan" target="main" class="cks">档案管理</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/admin/shuju_one.jsp" target="main" class="cks">数据备份</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
			</dl>
        <!--用户管理-->
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/images/coin07.png" />
                    <img class="icon2" src="<%=request.getContextPath() %>/images/coin08.png" />
                     用户管理
                    <img class="icon3" src="<%=request.getContextPath() %>/images/coin19.png" />
                    <img class="icon4" src="<%=request.getContextPath() %>/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/UserServlet?operator=toQueryUser" target="main" class="cks">用户管理</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <%-- <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/admin/role_management.jsp" target="main" class="cks">角色管理</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd> --%>
			</dl>
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/images/coin05.png" />
                    <img class="icon2" src="<%=request.getContextPath() %>/images/coin06.png" />
                     数据管理
                     <img class="icon3" src="<%=request.getContextPath() %>/images/coin19.png" />
                     <img class="icon4" src="<%=request.getContextPath() %>/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a class="cks" href="<%=request.getContextPath() %>/admin/warning_management.jsp" target="main">预警信息管理</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a class="cks" href="<%=request.getContextPath() %>/UserServlet?operator=toshjuguanli" target="main">数据管理</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a class="cks" href="<%=request.getContextPath() %>/UserServlet?operator=toshjutongji"  target="main">数据统计</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
			</dl>
            
			<dl class="system_log">
				<dt>
					<img class="icon1" src="<%=request.getContextPath() %>/images/coin03.png" />
                    <img class="icon2" src="<%=request.getContextPath() %>/images/coin04.png" />
                     网站信息管理
                     <img class="icon3" src="<%=request.getContextPath() %>/images/coin19.png" />
                     <img class="icon4" src="<%=request.getContextPath() %>/images/coin20.png" />
				</dt>
				<dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/UserServlet?operator=toWebHome" target="main" class="cks">首页</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <%-- <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/UserServlet?operator=toWebAbout" target="main" class="cks">关于我们</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/admin/new.jsp" target="main" class="cks">心理新闻</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd>
                <dd>
					<img class="coin11" src="<%=request.getContextPath() %>/images/coin111.png" />
                    <img class="coin22" src="<%=request.getContextPath() %>/images/coin222.png" />
                    <a href="<%=request.getContextPath() %>/admin/download_pic.jsp" target="main" class="cks">资源下载</a>
                    <img class="icon5" src="<%=request.getContextPath() %>/images/coin21.png" />
				</dd> --%>
			</dl>
            
	

		</div>

	</div>
</body>
</html>
