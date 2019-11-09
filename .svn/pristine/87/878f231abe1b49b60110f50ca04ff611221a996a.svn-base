<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <title>
            用户管理-编辑
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
    <form name="form1" id="form1" class="layui-form" method="post" action="<%=request.getContextPath()%>/UserServlet?operator=UserManageUpdete" >
        <div class="x-body">
            
                <div class="layui-form-item">
                    <label class="layui-form-label">
                    <input type="hidden" name="id" value="${user.id}"/>
                        用户名称</label>
                    <div class="layui-input-inline">
                        
                        <input type="text" class="layui-input" value="${user.username} " disabled >
                    </div>
                    <div class="layui-form-mid layui-word-aux">必填</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        性别
                    </label>
                    <div class="layui-inline">
                        <div class="layui-input-inline">
                            <input type="radio" name="sex" value="1" ${user.sex.equals('1')?'checked':''} title="男">
                            <input type="radio" name="sex" value="2" ${user.sex.equals('2')?'checked':''} title="女">
                        </div>
                    </div>
                </div>
                
                <div class="layui-form-item">
                    <label class="layui-form-label">
                        用户角色
                    </label>
                    <div class="layui-input-inline">
                        <div class="layui-input-inline">
                            <input type="radio" name="rule" value="1" ${rules.equals('超级管理员')?'checked':''} title="超级管理员">
                            <input type="radio" name="rule" value="2" ${rules.equals('管理员')?'checked':''} title="管理员">
                            <input type="radio" name="rule" value="3" ${rules.equals('用户')?'checked':''} title="用户">             
                        </div>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">
                        备注信息
                    </label>
                    <div class="layui-input-block">
                        <textarea placeholder="随便写些什么刷下存在感" id="L_sign" name="content" autocomplete="off"
                        class="layui-textarea" style="height: 80px;"></textarea>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label for="L_sign" class="layui-form-label">
                    </label>
                    <button class="layui-btn" key="set-mine" onclick="userUpdete()">
                        提交
                    </button>
                </div>
           
        </div>
         </form>
        <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script>
        <script type="text/javascript">
        
        function userUpdete(){
        	//表单提交，否则无法数据传给后台
			 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=UserManageUpdete";
	    	 document.getElementById("form1").submit();
	    	 //2.还原(相当于重新查询一遍)
	    	 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
	    	 
	    	  
        }
        </script>
        <script>
            layui.use(['form','layer'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;
              
              
            });
            
        </script>
        </form>
    </body>

</html>