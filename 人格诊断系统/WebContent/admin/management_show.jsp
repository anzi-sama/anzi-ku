<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户管理-查看</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
</head>

<body>
<div class="x-body">
  <blockquote class="layui-elem-quote"> <img src="<%=request.getContextPath() %>/images/0.jpg" class="layui-circle" style="width:50px;float:left">
    <dl style="margin-left:80px; color:#019688">
      <dt><span >所发生的</span> <span >显示内容</span></dt>
      <dd style="margin-left:0">显示内容</dd>
    </dl>
  </blockquote>
  <div class="pd-20">
    <table  class="layui-table" lay-skin="line">
      <tbody>
        <tr>
          <th  width="80">性别：</th>
          <td>男</td>
        </tr>
        <tr>
          <th>手机：</th>
          <td>23424242423423</td>
        </tr>
        <tr>
          <th>邮箱：</th>
          <td>342424242@qq.com</td>
        </tr>
        <tr>
          <th>地址：</th>
          <td>发生地方萨芬</td>
        </tr>
        <tr>
          <th>注册时间：</th>
          <td>2017-07-20</td>
        </tr>
        <tr>
          <th>其他</th>
          <td>无</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script> 
<script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
</body>
</html>