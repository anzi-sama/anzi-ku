<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
           资源下载-编辑
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
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>标题
              </label>
                    <div class="layui-input-inline">
                        <input type="text" id="link" name="link" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>所属类别
                    </label>
                    <div class="layui-input-inline">
                        <select lay-verify="required" name="cid">
                                <option>
                                </option>
                                <optgroup label="类别">
                                    <option value="1">交际书</option>
                                    <option value="2">催眠书</option>
                                    <option value="3">心理健康书</option>
                                    <option value="4">健康饮食书</option>
                                </optgroup>
                            </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>上传封面
                    </label>
                    <div class="layui-input-inline">
                      <div class="site-demo-upbar">
                        <button>
                      <img src="<%=request.getContextPath() %>/images/sctp.png">
                    </button>
                      </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">图片显示
                    </label>
                    <img id="" width="400" src="">
                </div>
                
                 <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>上传文件
                    </label>
                        <input type="file" name="file1" size="50"/> 
                </div>
                
                <div class="layui-form-item">
                    <label for="desc" class="layui-form-label">
                        <span class="x-red">*</span>内容
                    </label>
                    <div class="layui-input-inline">
                        <textarea id="L_content" name="content" 
                        placeholder="简介" class="layui-textarea fly-editor" style="height: 260px;">简介</textarea>
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                    <button  class="layui-btn">
                        保存
                    </button>
                    <button  class="layui-btn" >
                        返回
                    </button>
                </div>
            </form>
        
        <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
        <script>
            layui.use(['form','layer','upload'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;
              
            });
        </script>
    </body>

</html>