<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-添加
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
    </head>
    
    <body>
    
        <div class="x-body">
            <form class="layui-form" method="post" action="<%=request.getContextPath() %>/UserServlet?operator=UserManagerAdd">
                 <!--    <div class="layui-form-item" >
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>用户ID</label>
                    <div class="layui-input-inline">
                        <input type="text"  name="id" 
                         class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填
                    </div>
                </div> -->
                
                <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>用户名称</label>
                    <div class="layui-input-inline">
                        <input type="text"  name="username" 
                         class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        <span class="x-red">*</span>密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_pass" name="password" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        6到16个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                        <span class="x-red">*</span>确认密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_repass" name="password_confirm" class="layui-input">
                    </div>
                </div>
                   <div class="layui-form-item">
                    <label for="L_email" class="layui-form-label">
                        <span class="x-red">*</span>真实姓名</label>
                    <div class="layui-input-inline">
                        <input type="text"  name="realname" 
                         class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>必填
                    </div>
                </div>
                      <div class="layui-form-item">                     
                      <label class="layui-form-label">                       
                             用户角色                     </label>                     
                      <div class="layui-input-inline">                       
                       <select lay-verify="required" name="rule" class="layui-input" style="display: inline;">      
                        <option value="1">超级管理员</option>                       
                        <option value="2">管理员</option>                       
                        <option value="3">用户</option>                        
                        </select>                    
                         </div>                
                          </div>
                <div class="layui-form-item">
                    <label for="L_username" class="layui-form-label">
                                                         性别
                    </label>
                    <div class="layui-input-inline">
                        <select lay-verify="required" name="sex" class="layui-input" style="display: inline;">      
                        <option value="1">男</option>                       
                        <option value="2">女</option>                                               
                        </select> 
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <button  class="layui-btn" onclick="userTJ()">
                        增加
                    </button>
                </div>
            </form>
        </div>
        <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
        <script type="text/javascript">
        function userTJ(){
        	//表单提交，否则无法数据传给后台
			 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=UserManagerAdd";
	    	 document.getElementById("form1").submit();
	    	 //2.还原(相当于重新查询一遍)
	    	 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
        	
        }
        </script>
    </body>

</html>