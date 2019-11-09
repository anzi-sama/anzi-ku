<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
            <form class="layui-form layui-form-pane">
                <div class="layui-form-item">
                  <label for="L_title" class="layui-form-label1">
                        <span>详细测试结果呈现</span>
                  </label>
                    
                </div>
                
              <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        用户名
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                 <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        唯一标识
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        年龄
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        性别
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        所属
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试用时
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        测试时间
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="L_title" class="layui-form-label">
                        手机号
                    </label>
                <div class="layui-input-block">
                  <input type="text" id="L_title" name="title" class="layui-input">
                </div>
                </div>
                
                <div class="layui-form-item layui-form-text">
                    <label for="L_content" class="layui-form-label" style="top: -2px;">
                        备注信息
                    </label>
                     <div class="layui-input-block">
                        <textarea id="L_content" name="content" 
                        placeholder="请输入内容" class="layui-textarea fly-editor" style="height: 260px;">填写备注信息</textarea>
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <button class="layui-btn">
                        保存
                    </button>
                    <button class="layui-btn">
                        导出
                    </button>
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