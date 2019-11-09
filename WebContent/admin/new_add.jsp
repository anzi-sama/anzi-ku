<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
           心健新闻-添加
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
                        <span class="x-red">*</span>序号
              </label>
                    <div class="layui-input-inline">
                        <input type="text" id="link" name="link" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>模块
                    </label>
                    <div class="layui-input-inline">
                        <select lay-verify="required" name="cid">
                                <option>
                                </option>
                                <optgroup>
                                    <option value="1">心理新闻</option>
                                    <option value="2">中心活动</option>
                                    <option value="3">心理案例</option>
                                </optgroup>
                            </select>
                    </div>
                </div>
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
                        <span class="x-red">*</span>发表时间
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="link" name="link" class="layui-input">
                    </div>
                </div>
            
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>轮播图
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
                    <label  class="layui-form-label">图片
                    </label>
                    <img id="" width="400" src="">
                </div>
                <div class="layui-form-item">
                    <label for="desc" class="layui-form-label">
                        <span class="x-red">*</span>文字信息
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
                        增加
                    </button>
                </div>
            </form>
        </div>
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