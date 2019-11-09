<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            心理诊断测试完成
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
    </head>
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页></cite></a> 
			  <a><cite>症状诊断</cite></a> 
              <a><cite>诊断结果</cite></a>
               
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="<%=request.getContextPath() %>/javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        
            <hr style="height:1px;border:none;border-top:1px dashed #0066CC;"/>
             <table width="800px" align="center" height="90%" style="margin-top:100px;">
                <tbody>
                	<tr>
                        <td width="394" align="left"><img src="<%=request.getContextPath() %>/images/wc.png" style="height: 100px;width: 100px;"></td>                  
                    </tr>
                    <tr>
                        <td align="left" valign="bottom" style="height: 60px;"><span style="font-size:20px;">医生诊断结果</span></td>
                        
                    </tr>
                    <tr>
                      <td align="left" valign="top"><div style="font-size:20px;">诊断信息：${result.medical_info}</div></td>
                    </tr> 
                   <tr>
                      <td align="left" valign="top"><div style="font-size:20px;">用户健康状态：${result.warm.content}</div></td>
                   </tr> 
                   <tr>
                      <td align="left" valign="top"><div style="font-size:20px;">测试时间：${result.testtime}</div></td>
                   </tr> 
                </tbody>
            </table>
 <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8"></script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8"></script>
        <script>
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
              
            });
            </script>

    </body>
</html>