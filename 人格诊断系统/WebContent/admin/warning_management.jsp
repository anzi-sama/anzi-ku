<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>预警信息管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all">
</head>
<body>
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>数据管理</cite></a> <a><cite>预警信息管理</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="<%=request.getContextPath() %>/javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">
<table width="100%">
  <tr>
    <td align="center" >预警等级介绍</td>
  </tr>
</table>
<hr style="height:1px;border:none;border-top:1px dashed #0066CC;"/>
<table class="tablelist">
  <thead>
    <tr>
      <th>预警等级</th>
      <th>预警颜色</th>
      <th>说明</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center">正常</td>
      <td align="center"><img src="<%=request.getContextPath() %>/images/blu.jpg"></td>
      <td >没有症状</td>
    </tr>
    <tr>
      <td align="center">异常</td>
      <td align="center"><img src="<%=request.getContextPath() %>/images/red.jpg"></td>
      <td >需要预警</td>
    </tr>
  </tbody>
</table>
</div>
<script src="./lib/layui/layui.js" charset="utf-8"></script> 
<script src="./js/x-layui.js" charset="utf-8"></script> 
<script src="js/jquery2.js" charset="utf-8"></script> 
<script src="js/js.js" charset="utf-8"></script>
<script type="text/javascript">
layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层

            });
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>