<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>数据管理-查看</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all">
<!-- validate验证插件（表单验证） -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
<script type="text/javascript">
/*删除*/
function shujuPLSC(){
	//alert("删除");
	//alert();
	//获取页面复选框选定的数据
	//使用jquery的语法，获取页面的复选框
	//alert($(".datid:checked").length);
	if($(".datid:checked").length>0)
	{
		//表单提交，否则无法把复选框选定的数据传给后台
	
		 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=shujuplsc";
    	  document.getElementById("form1").submit();
    	  
    	  //2如果查询错误就再次搜索一次
    	  document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=shujuguangli";
	}else
	{
		alert('请选定要删除的用户');
	}
}
//分页查询
  function dataPage(i){
/*   alert("分页"); */	
		//1.获取表单
		//alert()
		<%-- document.getElementById("form1").action= "<%=request.getContextPath()%>/UserServlet?operator=shujufenye&page_current="+i; --%>
		
		document.getElementById("form1").action= "<%=request.getContextPath()%>/UserServlet?operator=shujuguangli&page_current="+i;
	
		document.getElementById("form1").submit();

		//2.还原(即如果查询错误就再次搜索一次)
		document.getElementById("form1").action = "<%=request.getContextPath()%>/UserServlet?operator=shujuguangli";
}
</script>
</head>
<body>

<form name="form1" id="form1" action="<%=request.getContextPath()%>/UserServlet?operator=shujuguangli" style="width:85%"  method="post">
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>数据管理</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">


    <div class="layui-form-pane">
      <div class="layui-form-item">
        <label class="layui-form-label">编号</label>
        <div class="layui-input-inline" style="width:100px">
          <input type="text" name="shuju_id"  placeholder="编号" autocomplete="off" class="layui-input">
        </div>
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-inline" style="width:100px">
          <input type="text" name="shuju_name"  placeholder="姓名" autocomplete="off" class="layui-input">
        </div>
        
         <label class="layui-form-label" style="width: 60px;">测试类型</label>
        <div class="layui-input-inline" style="width:105px">
          <select name="shuju_lx" id="shuju_lx" class="layui-input" style="display: inline-block;">
          	  <option value="0" ${sex.equals("0")?'selected':''}>--请选择--</option>
          	  <option value="1" ${sex.equals("1")?'selected':''}>测试题</option>
              <option value="2" ${sex.equals("2")?'selected':''}>综合测试题</option>  
          </select>
        </div>
        
       
          <button class="layui-btn"  lay-submit="" lay-filter="*"  type="submit">
           搜索
          </button>
        </div>
      </div>
     
    </div>

<div class="tools">
    <ul class="toolbar">
      <li onclick="shujuPLSC()"><span><img src="<%=request.getContextPath() %>/images/t03.png" /></span>删除</li>
      <li><span><img src="<%=request.getContextPath() %>/images/t02.png" /></span>编辑</li>
      <li><span><img src="<%=request.getContextPath() %>/images/t09.png" /></span>批量导出</li>
    </ul>
 <!--   <span class="x-right" style="line-height:25px">共有数据：${dataSize} 条</span></xblock> --> 
  </div>
<table class="tablelist">
  <thead>
    <tr>
      <th> <input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll">
      </th>
      <th>编号</th>
      <th> 用户名</th>
      <th> 测试类型 </th>
      <th>测试时间</th>
      <th>处理状态</th>
      <th> 操作 </th>
    </tr>
  </thead>
  <tbody id="x-link">

   <c:forEach items="${dalist}" var="dat" varStatus="status" >

      <td><input type="checkbox" value="${dat.id}"  class="datid" name="selected"  id="datid"></td>
      <td>${dat.id}</td>

      <td>${dat.user.username}</td>
    <td>${dat.testtype.id==1?'测试题':'综合测试题'}</td>
      <td>${dat.testdate}</td>
      <td><button class="sp">${dat.warm.id==0?'异常':'正常'}</button></td>
      <td class="td-manage"><a title="编辑" href="javascript:;"  onclick="data_management_look('查看','<%=request.getContextPath() %>/UserServlet?operator=shujuxg&datid=${dat.id}','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe642;</i> </td>
    </tr>

      </c:forEach>    
                     
  </tbody>
</table>
<!--分页查询 -->
<div class="page"  v-show="show">
  <div class="pagelist"> <span class="jump" onclick = "dataPage(${page_current-1})">上一页</span>
	<%
	Object pageCount=request.getAttribute("pageCount");//获取页数
	Integer count=0;
	if(pageCount!=null){
		count=(Integer)pageCount;
	}
	for(int i=1;i<=count;i++){%>
	<!--传参 -->	
			<a href="#" onclick = "dataPage(<%=i%>)"style="color: #878796;"><span class="jump"><%=i %></span></a> 
<% 	}
	%>
    <span class="jump" onclick = "dataPage(${page_current+1})">下一页</span> 
    <span class="jumppoint">跳转到：</span> 
    <span class="jumpinp">
    <input type="text">
    </span> <span class="jump gobtn" onclick = "dataPage(${page_current+1})">GO</span> 
     <span style="display: block;position: relative;right: 2%;">
	  	当前第${page_current}页/共${pageCount}页</span>
    </div>
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

            layui.use(['element','laypage','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
              form = layui.form();//弹出层
            });
            // 编辑
            function data_management_look (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
          
            </script> 
<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
 </form>
</body>
</html>