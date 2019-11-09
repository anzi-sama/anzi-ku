<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            心理诊断
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
              <a><cite>用户症状</cite></a>
            </span>
            <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="<%=request.getContextPath() %>/javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a>
        </div>
        
            <hr style="height:1px;border:none;border-top:1px dashed #0066CC;"/>
             <table width="800px" align="center" height="90%" style="margin-top:100px;">
                <tbody>
                    <tr>
                        <td width="394" height="106" align="left" valign="bottom"><span style="font-size:20px;">病人姓名：${user.realname}</span></td>
                    	<!-- <td width="394" rowspan="2" align="center"><img src="<%=request.getContextPath() %>/images/wc.png" width="400px" height="400px"></td>  -->
                        
                   	</tr>
                   	<tr>
                   		<td width="394" height="106" align="left" valign="bottom"><span style="font-size:20px;">用户症状信息：</span></td>
                   	</tr>
                    <tr>
                      <td align="center" valign="top"><div style="font-size:20px;text-align: left;">${mess}</div></td>         
                    </tr>
                    <tr>
                   		<td width="394" height="106" align="left" valign="bottom">
                   		<span style="font-size:20px;">病人状态：</span>
                   		<select name="warm" id="warm" class="layui-input" style="display: inline-block;width: 70px;">
				          	<option value="0">异常</option>
				          	<option value="1">正常</option>
				        </select>
                   		</td>
                   	</tr>
                    <tr>
                   		<td width="394" height="106" align="left" valign="bottom">
                   		<span style="font-size:20px;">医疗建议：</span>
                   		<textarea name ="doctorMessage" id ="doctorMessage"></textarea>
                   		<input type = "button" value="提交" class="layui-btn" onclick="submitAdvice()"></input>
                   		<input type = "hidden" name="username" id="username" value="${user.username}" ></input>
                   		<strong>${error_mess}</strong>
                   		</td>
                   	</tr>	
                   
                   	
                </tbody>
            </table>
            <script type="text/javascript">
            	 function submitAdvice() {
            		//alert($("#doctorMessage").val());
					window.location.href="<%=request.getContextPath()%>/UserServlet?operator=medicalCheck&message="+$("#doctorMessage").val()+"&warm="+$("#warm").val()+"&username="+$("#username").val();
				}
            </script>
            
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