<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-修改密码
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
            <form class="layui-form">
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                        昵称
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="L_username" name="username" disabled="" value="宋加加" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                        <span class="x-red">*</span>旧密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_repass" name="oldpass" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                        <span class="x-red">*</span>新密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_pass" name="newpass" class="layui-input">
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        6到16个字符
                    </div>
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                        <span class="x-red">*</span>确认密码
                    </label>
                    <div class="layui-input-inline">
                        <input type="password" id="L_repass" name="repass" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">
                    </label>
                    <button  class="layui-btn" >
                        确定修改
                    </button>
                </div>
            </form>
        </div>
        <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
    </body>

</html>