<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>数据还原</title>
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
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>数据备份</cite></a> <a><cite>还原</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">
<div class="layui-tab layui-tab-brief">
<ul class="layui-tab-title">
  <li><a href="<%=request.getContextPath() %>/admin/shuju_one.jsp">数据备份</a></li>
  <li class="layui-this"><a href="<%=request.getContextPath() %>/admin/shuju_two.jsp">数据还原</a></li>
</ul>
<div class="layui-tab-content" >
  <div class="layui-tab-item layui-show">
    <table class="tablelist">
      <thead>
        <tr>
          <th width="9%">数据还原</th>
          <th>数据</th>
          <th width="9%">操作</th>
        </tr>
      </thead>
      <tbody id="x-img">
        <tr>
          <td width="7%">数据还原</td>
          <td width="7%">数据一</td>
          <td >&nbsp;</td>
        </tr>
        <tr>
          <td width="7%">数据还原</td>
          <td width="7%">数据二</td>
          <td >&nbsp;</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8"></script> 
<script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8"></script> 
<script>
            layui.use(['element','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              layer = layui.layer;//弹出层
              form = layui.form()
              })
			  $('.tablelist tbody tr:odd').addClass('odd');
            </script> 
</script>
</body>
</html>