<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
           首页-添加
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
        <link href="<%=request.getContextPath()%>/css2/css.css" rel="stylesheet" type="text/css">
        
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
		<script src="<%=request.getContextPath()%>/js/jquery.form.js" type="text/javascript" charset="utf-8"></script>
    </head>
    
    <body>
        <div class="x-body">
            <form class="layui-form" method="post" id="form1">
            
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>模块
                    </label>
                    <div class="layui-input-inline">
                        <select lay-verify="required" name="module" id="module">
                                <option>
                                </option>
                                <optgroup>
                                    <option value="1">轮播图片</option>
                                    <option value="2">典型案例</option>
                                    <option value="3">咨询师介绍</option>
                                    <option value="4">关于我们</option>
                                    <option value="5">心理新闻</option>
                                    <option value="6">中心活动</option>
                                    <option value="7">心理案例</option>
                                </optgroup>
                            </select>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>标题
                    </label>
                    <div class="layui-input-inline">
                        <input type="text" id="link" name="title" class="layui-input">
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label for="link" class="layui-form-label">
                        <span class="x-red">*</span>图片</label>
                        
                        
                        
                    <div class="layui-input-inline">
                      <div class="site-demo-upbar">
                        <input name="file" id="uploadFile" type="file" class="text_cray" size="20" />
                      </div>
                        <input id="upload" type="button" class="text_cray" value="上传" />
                    </div>
                    <script type="text/javascript">
                   	$("#upload").click(function(){
                   		document.getElementById("form1").encoding="multipart/form-data";
                    	//alert();
                    	var option = {
                    			url :"<%=request.getContextPath()%>/UserServlet?operator=webLoadPhoto",
                    			type :"post",
                    			clearForm:false,
                    			resetForm:false,
                    			success : function(data) {
                    				alert('上传成功!');
                    				document.getElementById("form1").enctype="application/x-www-form-urlencoded";
                    				$("#showPhoto").attr("src","<%=request.getContextPath() %>/images/photo/"+data);
                    				$("#photoPath").attr("value","images/photo/"+data);
                    			}
                    		};
                    		$("#form1").ajaxSubmit(option);
                    		return false;   
                    		
                    		<%-- $.ajax({
                    			url :"<%=request.getContextPath()%>/UserServlet?operator=webLoadPhoto",
                    			type :"post",
                    			data: $("#form1").serialize(),
                    			success : function(data) {
                    				alert('成功!');
                    				document.getElementById("form1").enctype="application/x-www-form-urlencoded";
                    				$("#showPhoto").attr("src","<%=request.getContextPath() %>/images/photo/"+data);
                    				$("#photoPath").attr("value","images/photo/"+data);
                    			}
                    		}) --%>
                    })
                    
                    
                    //提交普通表单的方法(没有file类型的表单)
                   <%--  $("#upload").click(function(){
                    	alert()
                    	var f=new FormData();
                    	//f.append('module',$('#module').val());
                    	f.append('file',$('#uploadFile').val());
                    	//alert(f);
                    	$.ajax({
                    		url:"<%=request.getContextPath()%>/UserServlet?operator=webLoadPhoto",
                    		data:f,
                    		processData: false,
                            contentType: false,
                    		type:"post",
                    		success:function(data){
                    			alert("成功");
                    		}
                    	});
                    }) --%>
                    </script>
                    
                    
                    
                </div>
                <div class="layui-form-item">
                    <label  class="layui-form-label">图片
                    </label>
                    <img id="showPhoto" src="">
                    
                    <br>
                    <input type="text" id="photoPath" value=""  name="photoPath"  hidden="hidden">
                    
                    
                </div>
                <div class="layui-form-item">
                    <label for="desc" class="layui-form-label">
                        <span class="x-red">*</span>文字信息
                    </label>
                    <div class="layui-input-inline">
                        <textarea id="L_content" name="content" 
                        placeholder="简介" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
                    </div>
                    <div class="layui-form-mid layui-word-aux">
                        <span class="x-red">*</span>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_repass" class="layui-form-label">
                    </label>
                   
                       		<input type="button" value="增加"  class="layui-btn" onclick="add()" />
                    
                </div>
                <script type="text/javascript">
                function add()
                {
              	  
       	    	 //alert(1);
       	    	
       	    	 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=addWebHome";
       	    	 document.getElementById("form1").submit();
                }
                </script>
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

</html>