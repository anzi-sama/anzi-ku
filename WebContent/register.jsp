<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户注册
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
       
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
   		<script>
//写js校验注册表单
$().ready(function()//window.onload()
{
	//给表单注册校验事件
	$("#registerForm").validate({
		
		rules:{
			username:"required",
			password:"required",
			confirmPassword:{
				required:true,
				equalTo:"#password"
			},
			address:"required",
			phone:"required",
			realname:"required"
		},messages:{
			username:"请输入您的名字",
			password:"请输入密码",
			confirmPassword:{
					required:"请输入确认密码",	
					equalTo:"两次密码输入不一致"
			},
			address:"请输入正确地址",
			phone:"请输入11位手机号码",
			realname:"请输入真实姓名"
		}
	});	
	
	
	 $("#checkUsername").blur(function(){
		 
   		//alert(2);
   		alert($(this).val());
   		$.ajax({
   			url:"UserServlet?operator=checkUsername",
   			type:"get",
   			data:"username="+$(this).val(),
   			dataType:"json",
   			success:function(data){
   				$("#ts").replaceWith("<strong id='ts'>"+data+"</Strong>");
   			}
   			
   		})
   		
   		
   	
	 })
	
});
</script>
    
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form"  id="registerForm" method="post" action="<%=request.getContextPath() %>/UserServlet?operator=register" style="margin-left:344px ;">
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>用户名称</label>
                    <div class="layui-input-inline">
                        <input type="text"  name="username" class="layui-input" id="checkUsername">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span><span id="ts">由字母、数字或“_”组成，长度不少于6位，不多于30位</span>
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="password" name="password" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span><span>不少于6位字符</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                        <span class="x-red">*</span>确认密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_repass" name="confirmPassword" class="layui-input">
                    </div>
 		    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span><span>请再次输入密码</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        <span class="x-red">*</span>真实姓名</label>
                    <div class="layui-input-inline">
                        <input type="text" id="realname" name="realname"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        性别
                    </label>
                   
			 <span class="mr25">
                    <input type="radio" name="sex" value="1" checked="checked"  style="display:inline-block;margin-left:80px;margin-top:12px;"/>
                    </span>
			 <span class="text_cray">
                    <label style="margin-right:20px">男</label>
                    <input type="radio" name="sex" value="2"   style="display:inline-block;"/>
                    </span>
                    <label>女</label>
                    </span>
                </div>

		<div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        	籍贯</label>
                    <div class="layui-input-inline">
                        <select name="pro" class="text_cray" id="pro"  style="display:inline-block;margin-left:2px;margin-top:10px;">
                    <c:forEach items="${list }" var="p" >
                    	 <option value="${p.id }">${p.provinceName }</option>
                    </c:forEach>
                    	</select>
                    </div>
                </div>

		
		<div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                      年龄</label>
                    <div class="layui-input-inline">
                        <select name="age" class="text_cray" id="age"  style="display:inline-block;margin-left:2px;margin-top:10px;">
                    	<%
                    	for(int i=1;i<=99;i++){
                    	%>	
                    	
                    	<option value="<%=i%>"><%=i%></option>	
                    	<%}%>
                     	
                    
                    	</select>
                    </div>
                </div>
		

		<div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                       文化程度</label>
                    <div class="layui-input-inline">
                        <select name="culture" class="text_cray" id="culture"  style="display:inline-block;margin-left:2px;margin-top:10px;">
                    
                     <option value="1">小学</option>
				     <option value="2">初中</option>
				     <option value="3">高中</option>
				     <option value="4">大专</option>
				     <option value="5">大学</option>
		    
                    
                    	</select>
                    </div>
                </div>


		<div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                        宗教信仰</label>
                    <div class="layui-input-inline">
                        <select name="religion" class="text_cray" id="religion"  style="display:inline-block;margin-left:2px;margin-top:10px;">
                    
                     <option value="1">佛教</option>
				     <option value="2">伊斯兰</option>
				     <option value="3">基督</option>
				     <option value="4">其他</option>		    
                    
                    	</select>
                    </div>
                </div>


		 <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>地址
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="address" name="address" class="layui-input">
                    </div>
                   
                </div>


		<div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>电话号码
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="phone" name="phone" class="layui-input">
                    </div>
                   
                </div>
		

		<div class="layui-form-item">
                    <label class="layui-form-label">
                        邮箱
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_pass" name="email" class="layui-input">
                    </div>
                   
                </div>

		
		<div class="layui-form-item">
                    <label class="layui-form-label">
                       备注
                    </label>
                    <div class="layui-input-inline">
                        <textarea name="content" rows="10"  class="text_cray" style="width:100%;resize:none;overflow-y:scroll"></textarea>	
                    </div>
                   
                </div>


                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    
			 <input type="submit" id="" name="" class="layui-btn"  value="提交"  style="margin-left:30px">
 			<input type="reset" id="" name="" class="layui-btn"  value="重置"  style="margin-left:94px">
                </div>


            </form>
        </div>
        <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
    </body>

</html>