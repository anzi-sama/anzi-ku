<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
  数据查看
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
    <script type="text/javascript">
        function shujuXG_one(){
     /* 	alert("修改"); */
        	 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=shujuxg_one";
       	  document.getElementById("form1").submit();
        }
        </script>
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form layui-form-pane" id="form1" action="UserServlet?operator=danganEdit" method="post"> 
              <input type="hidden" id="L_title" name="uid" required lay-verify="title" value="${user.id}" 
                        autocomplete="off" class="layui-input">
                        <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        编号
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="id" name="id" required lay-verify="title" value="${datas.id}" 
                        autocomplete="off" readonly unselectable="on" class="layui-input">
                </div>
                </div>
                
              <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        姓名
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="username" name="username" required lay-verify="title" readonly unselectable="on" value="${datas.user.username}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                 <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试类型
                    </label>
                <div class="layui-input-block">
                  <select lay-verify="required" name="testtype" id="testtype" class="layui-input">
            		<option value="1" ${datas.testtype.id==1?'selected':''}>测试题</option>
            		<option value="2" ${datas.testtype.id==2?'selected':''}>综合测试题</option>
          		  </select>                           
                </div>
                </div>

              <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        姓名
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="testdate" name="testdate" required lay-verify="title" readonly unselectable="on" value="${datas.testdate}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                        

               
                
                 <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        状态
                    </label>
                <div class="layui-input-block">
                  <select lay-verify="required" name="warmtype" id="warmtype" class="layui-input">
            		<option value="1" ${datas.warm.id==0?'selected':''}>异常</option>
            		<option value="2" ${datas.warm.id==1?'selected':''}>正常</option>
          		  </select>                           
                </div>
                </div>
                
                <div class="layui-form-item">
                    <input class="layui-btn" onclick="shujuXG_one()" value="更改"></input>

                </div>
          </form>
    </div>
    <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script>
    <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
    <script>
            layui.use(['form','layer','layedit'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer
              ,layedit = layui.layedit;
            });
        </script>
    </body>

</html>