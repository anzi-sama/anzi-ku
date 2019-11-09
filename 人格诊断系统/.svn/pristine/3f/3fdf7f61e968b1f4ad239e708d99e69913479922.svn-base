<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>关于我们</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>

</head>
<body>
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>网站信息管理</cite></a> <a><cite>关于我们</cite></a> </span> <a class="<%=request.getContextPath() %>/layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">
<form class="layui-form x-center" action="" style="width:500px"  id="form1" method="post">
  <div class="layui-form-pane">
    <div class="layui-form-item">
      <div class="layui-input-inline" style="width:400px">
        <input type="text" name="username"  placeholder="搜索内容" autocomplete="off" class="layui-input">
      </div>
      <div class="layui-input-inline" style="width:80px">
        <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
      </div>
    </div>
  </div>
</form>
<div class="tools">
    <ul class="toolbar">
      <li><span><img src="<%=request.getContextPath() %>/images/t03.png" /></span>批量删除</li>
      <li onclick="about_us_add('添加用户','about_us_add.jsp','600','500')"><span><img src="<%=request.getContextPath() %>/images/t01.png" /></span>添加</li>
    </ul>
    <span class="x-right" style="line-height:25px">共有数据：${page.dataSize} 条</span></xblock>
  </div>
<table class="tablelist">
  <thead>
    <tr>
      <th width="5%"> <input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll">
      </th>
      <th width="9%"> 标题 </th>
      <th width="13%"> 图片 </th>
      <th width="57%"> 内容 </th>
      <th width="8%"> 显示状态 </th>
      <th width="8%"> 操作 </th>
    </tr>
  </thead>
  <tbody id="x-img">
  <c:forEach items="${listWeb}" var="web">
    <tr>
      <td><input type="checkbox" value="${web.id }" name="selected"></td>
      <td>${web.title}</td>
      <td align="center"><img src="<%=request.getContextPath() %>/images/img1.jpg" width="100" alt=""></td>
      <td >${web.content} </td>
      <td class="td-status"><button class="sp">已显示</button></td>
      <td class="td-manage"><a title="修改" href="javascript:;" onclick="about_us_edit('修改','about_us_edit.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe642;</i> </a> <a title="删除" href="javascript:;" onclick="banner_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    
   </c:forEach>
    
    
    
  </tbody>
</table>
<div class="page"  v-show="show">
  <div class="pagelist"> <span class="jump">上一页</span> 
  
 
 <% Object pageCount=request.getAttribute("pageCount"); 
            Integer count=0;
            if(pageCount!=null)
            {
            	count=(Integer)pageCount;
            }
            for(int i=1;i<=count;i++){
            %>
           <a href="#" onclick="toPage(<%=i%>)"><span class="jump"><%=i%></span></a>
            <%} %>	
 
 
 
<span class="jump" onclick="nextPage(${page_current+1})">下一页</span> 
					<span class="jumppoint">跳转到：</span> 
					<span class="jumpinp"> <input type="text" id="page_current"></span> 
					<span class="jump gobtn" id="go">GO</span> 
    
    
    </div>
    
    
    	<script type="text/javascript">
			$(function(){
				$("#go").click(function(){
			
					 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=webPageCurrent&page_current="+$('#page_current').val();
			    	 document.getElementById("form1").submit();
			    	 
			    	  //2.还原
			<%--     	  document.getElementById("form1").action="<%=request.getContextPath()%>/AdminServlet?param=queryUserByCondition";
				--%>
				})
			})
			</script>
			
			
			 <script>
     		function toPage(i)
      		{
    	  //如何在js中提交表单
    	  //1.获取表单
    	  //alert(i);
    	  document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=webAboutPageCurrent&page_current="+i;
    	  document.getElementById("form1").submit();
    	 
    	  //2.还原
<%--     	  document.getElementById("form1").action="<%=request.getContextPath()%>/AdminServlet?param=queryUserByCondition";
 --%>       }
     		
     		
     		function previousPage(i){
     			//alert(i);
     			if(i==1){
     				i=1;
     			}
     			 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=webPageCurrent&page_current="+i;
     	    	  document.getElementById("form1").submit();
     		}
     		
     		
     		function nextPage(i){
     			//alert(i);
     			if(i==1){
     				i=2;
     			}
     			 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=webPageCurrent&page_current="+i;
     	    	  document.getElementById("form1").submit();
     		}
     		
      </script>
			
</div>
</div>
<br />
<br />
<br />
<script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8"></script> 
<script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8"></script> 
<script src="<%=request.getContextPath() %>/js/jquery2.js" charset="utf-8"></script> 
<script src="<%=request.getContextPath() %>/js/js.js" charset="utf-8"></script>
<script>
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;
              lement = layui.element();
              laypage = layui.laypage;
              layer = layui.layer;
            });

            
             /*添加*/
            function about_us_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            
            // 编辑
            function about_us_edit (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
           
	$('.tablelist tbody tr:odd').addClass('odd');
            </script>
</body>
</html>