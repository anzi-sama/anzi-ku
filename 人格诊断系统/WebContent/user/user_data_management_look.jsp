<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            数据管理-查看
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
            <form class="layui-form layui-form-pane">
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        编号
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="1" disabled="" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                       用户名
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        测试类型
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="上传图片"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label for="content" class="layui-form-label">
                        具体内容
                    </label>
                    <div class="layui-input-block">
                         <textarea disabled="" id="content" name="content" autocomplete="off"
                        class="layui-textarea" style="height: 80px;">内容就是暂时没有内容......</textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        测试时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="2017-01-10 16:33:45"  class="layui-input">
                    </div>
                </div>
                 <div class="layui-form-item">
                    <label for="username" class="layui-form-label">
                        处理状态
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="username" name="username" required lay-verify="required"
                        autocomplete="off" value="已查看"  class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn">
                        返回
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