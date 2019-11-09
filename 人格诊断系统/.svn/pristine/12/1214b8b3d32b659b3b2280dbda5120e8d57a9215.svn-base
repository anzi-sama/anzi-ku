<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户查看
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
        <div class="x-body">
            <form class="layui-form layui-form-pane" id="form1" action="UserServlet?operator=danganEdit" method="post"> 
              <input type="hidden" id="L_title" name="uid" required lay-verify="title" value="${user.id}" 
                        autocomplete="off" class="layui-input">
              <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        姓名
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="realname" required lay-verify="title" value="${user.realname}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                 <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        性别
                    </label>
                <div class="layui-input-block">
                  <select lay-verify="required" name="sex" id="sex"class="layui-input">
            		<option value="1" ${user.sex==1?'selected':''}>男</option>
            		<option value="2" ${user.sex==2?'selected':''}>女</option>
          		  </select>
                  
              
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        籍贯
                    </label>
                <div class="layui-input-block">
                  
                  <select lay-verify="required" name="province" class="layui-input">
	           		<c:forEach items="${provinces}" var="p">
	           			<option value="${p.id}" ${p.id==user.pid.id?'selected':''} >${p.provinceName}</option>
	           		</c:forEach>
	      
	        </select>
                
                 
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        年龄
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="age" required lay-verify="title" value="${user.age}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        文化程度
                    </label>
                <div class="layui-input-block">
                  <select lay-verify="required" name="culture" class="layui-input">
			            <option value="1" ${user.culture.id==1?'selected':''}>小学</option>
			            <option value="2" ${user.culture.id==2?'selected':''}>初中</option>
			            <option value="3" ${user.culture.id==3?'selected':''}>高中</option>
			            <option value="4" ${user.culture.id==4?'selected':''}>大专</option>
			            <option value="5" ${user.culture.id==5?'selected':''}>大学</option>
			        </select>

                  
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        宗教信仰
                    </label>
                <div class="layui-input-block">
                 	<select lay-verify="required" name="religion" class="layui-input">
		            <option value="1" ${user.religion.id==1?'selected':''}>佛教</option>
		            <option value="2" ${user.religion.id==2?'selected':''}>伊斯兰教</option>
		            <option value="3" ${user.religion.id==3?'selected':''}>基督教</option>
		            <option value="4" ${user.religion.id==4?'selected':''}>其它</option>
        		  </select>
                 
                
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        联系电话
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="phone" required lay-verify="title" value="${user.phone}" 
                        autocomplete="off" class="layui-input">
                </div>
                </div>
                <div class="layui-form-item">
                    <input class="layui-btn" type="submit" value="更改"></input>
            		${mess}
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