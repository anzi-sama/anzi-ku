<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all">



<!-- validate验证插件 -->
<script type="text/javascript" src = "<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
</head>
<body>

<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>档案管理</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="<%=request.getContextPath() %>/javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">
  <form class="layui-form x-center" id="form1" action="<%=request.getContextPath()%>/UserServlet?operator=danganQueryUserByCondition" method="post" style="width:85%;margin-left: 0px;">
    <div class="layui-form-pane">
      <div class="layui-form-item" style="width: 1137px;">
        <label class="layui-form-label" style="width: 30px;">姓名</label>
        <div class="layui-input-inline" style="width:60px">
          <input type="text" name="realname" id="realname" value="${realname}" placeholder="姓名" autocomplete="off" class="layui-input">
        </div>
        
        <label class="layui-form-label" style="width: 30px;">性别</label>
        <div class="layui-input-inline" style="width:100px">
          <select name="sex" id="sex" class="layui-input" style="display: inline-block;">
          	  <option value="0" ${sex.equals("0")?'selected':''}>--请选择--</option>
          	  <option value="1" ${sex.equals("1")?'selected':''}>男</option>   
              <option value="2" ${sex.equals("2")?'selected':''}>女</option>  
          </select>
        </div> 
        
        <label class="layui-form-label" style="width: 30px;">籍贯</label>
        <div class="layui-input-inline" style="width:150px">
          <select name="province" id="province" class="layui-input" style="display: inline-block;">
          	<option value="0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--请选择--</option>
          	<c:forEach items="${sessionScope.provinces}" var="p">
            	<option value="${p.id}" ${p.id==province?'selected':''}>${p.provinceName}</option>
            </c:forEach>
          </select>    
        </div>
        
        <label class="layui-form-label" style="width: 30px;">年龄</label>
        <div class="layui-input-inline" style="width:60px">
          <input type="text" name="age" id="age" value="${age}" placeholder="年龄" autocomplete="off" class="layui-input">
        </div>
        
        <label class="layui-form-label" style="width: 56px;">文化程度</label>
        <div class="layui-input-inline" style="width:100px">
           <select name="culture" id="culture" class="layui-input" style="display: inline-block;">
          	  <option value="0" ${culture.equals("0")?'selected':''} >--请选择--</option>
          	  <option value="1" ${culture.equals("1")?'selected':''}>小学</option>
              <option value="2" ${culture.equals("2")?'selected':''}>初中</option>  
              <option value="3" ${culture.equals("3")?'selected':''}>高中</option>
              <option value="4" ${culture.equals("4")?'selected':''}>大专</option> 
              <option value="5" ${culture.equals("5")?'selected':''}>大学</option>
          </select>
        </div>
        
        <label class="layui-form-label" style="width: 56px;">宗教信仰</label>
        <div class="layui-input-inline" style="width:100px">
          <select name="religion" id="religion" class="layui-input" style="display: inline-block;">
          	  <option value="0" ${religion.equals("0")?'selected':''}>--请选择--</option>
          	  <option value="1" ${religion.equals("1")?'selected':''}>佛教</option>
              <option value="2" ${religion.equals("2")?'selected':''}>伊斯兰教</option>  
              <option value="3" ${religion.equals("3")?'selected':''}>基督教</option>
              <option value="4" ${religion.equals("4")?'selected':''}>其它</option> 
          </select>
        </div>
        <div class="layui-input-inline" style="width:80px">
          <input id="searchbt" type="submit" value="搜索" placeholder="" autocomplete="off" class="layui-btn" >
          <!-- <button class="layui-btn"  lay-submit="" lay-filter="*" id="searchbt" onclick="searchUser()">搜索</button> --> 
        </div>
      </div>
    </div>
 </form>
  
  <div class="tools">
    <ul class="toolbar">
      <li><a href="#" onclick="deleteUser()" style="display: block;"><span><img src="<%=request.getContextPath() %>/images/t03.png" /></span>批量删除</a></li>
      <li onclick="user_management_add('添加用户','<%=request.getContextPath() %>/UserServlet?operator=toDanganAdd','1000','600')"><span><img src="<%=request.getContextPath() %>/images/t01.png" /></span>添加</li>
    </ul>
    <span>${mess}</span>
    <span class="x-right" style="line-height:25px">共有数据：${dataSize} 条</span></xblock>
  </div>
  <script type="text/javascript">
  	 function deleteUser() {
  		 
  		if($(".uid:checked").length > 0){
  			if(confirm('确认要删除？')){
  			    //alert($(".uid:checked").length);
  	  			var uids = [];
  	  			$(".uid:checked").each(function(i) {
  					console.log($(this).val());
  					uids.push($(this).val());
  	  			})
  	  			alert("已删除"+$(".uid:checked").length+"条记录");
  	  			window.location.href="<%=request.getContextPath()%>/UserServlet?operator=danganDelete&uid="+uids;
  	  			
  	  			} else{
  					return false;
  	  			}
  			} else{
  				alert("请选择要删除的用户");
  			}
  				
  		
  		
  		
  		
  		
  		
  	 }
  </script>
  
  <table class="tablelist">
    <thead>
      <tr>
        <th> <input type="checkbox" id="controlAll"  name="controlAll" style="controlAll" ></th>
        <th>姓名</th><th> 性别 </th><th> 籍贯</th><th> 年龄</th><th> 文化程度</th><th> 宗教信仰 </th><th> 联系电话 </th><th> 操作 </th>
      </tr>
    </thead>
    <tbody id="tbody">
      <c:forEach items="${users}" var="u">
      	<tr>
        <td><input type="checkbox"  value="${u.id}" name="uid" class="uid" id="uid"></td>
        <td>${u.realname}</td>
        <td>${u.sex==1?'男':'女'}</td>
        <td>${u.pid.provinceName}</td>
        <td>${u.age}</td>
        <td>${u.culture.content}</td>
        <td>${u.religion.content}</td>
        <td>${u.phone}</td>
        <td>
        	<a href="<%=request.getContextPath() %>/UserServlet?operator=toMedicalCheck&uid=${u.id}"><button class="sp">心理诊断</button></a>
        	<a href="#">
        		<button class="sp" style="position: absolute;margin: 5px;"  onclick="user_management_edit('用户编辑','<%=request.getContextPath() %>/UserServlet?operator=toDanganEdit&uid=${u.id}','600','500')">
        		<!--<button class="sp" style="position: absolute;margin: 5px;" onclick="user_management_edit('用户编辑','<%=request.getContextPath() %>/admin/dangan_edit.jsp','600','500')"> -->
        		<img src="<%=request.getContextPath() %>/images/t02.png">编辑</button>
        	</a>	
        </td>
      	</tr>
      </c:forEach>
    </tbody>
  </table>
  
   <script type="text/javascript">
    	
   		$("#controlAll").click(function() {
   			if(this.checked){
				$("[name=uid]:checkbox").prop("checked", true);
			} else{
				$("[name=uid]:checkbox").prop("checked", false);
			}			
		});
			
		
    
    </script>
  
     <div class="page"  v-show="show">
  <div class="pagelist"> 
	  <span class="jump"><a href="#" onclick = "toPage(${page_current-1})">上一页</a></span> 
	  <%  
	  	  Object pageCount = request.getAttribute("pageCount");
	  	  Integer count = 0;
	  	  
	  	  if(pageCount!= null){
	  		  count = (Integer)pageCount;
	  	  }
	  	  for(int i=1;i<=count;i++){%> 
	  		<a href="#" onclick = "toPage(<%=i%>)"style="color: #878796;"><span class="jump"><%=i %></span></a> 
	  	 <%} %>
	  <span class="jump"><a href="#" 
	  onclick = "toPage(${page_current+1})">下一页</a></span> 
	  <span class="jumppoint">跳转到：</span> 
	  <span class="jumpinp"><input type="text" name="jump" id="jump"></span> 
	  <span class="jump gobtn" onclick = "goPage()">GO</span>
	  <span style="display: block;position: relative;right: 2%;">
	  	当前第${page_current}页/共${pageCount}页</span>
  </div>
</div>


</div>
<script type="text/javascript">

	function goPage() {	
  		
		window.location.href="<%=request.getContextPath()%>/UserServlet?operator=toDanganPage&jump="+$('#jump').val();
		/*
		$.ajax({
			url:"<%=request.getContextPath()%>/UserServlet?operator=toDanganPage",
			data:"jump="+$('#jump').val(),
			type:"post",
			success:function(data){
				var result = $.parseJSON(data);
				$("#tbody").empty();
				$(result).each(function(index ,u) {
					$("#tbody").append("<tr><td><input type='checkbox' value="+u.id+" name='uid' "+
							"class='uid' id='uid'></td><td>"+u.realname+"</td>"+
							"<td>"+u.sex+"</td><td>"+u.pid.provinceName+"</td>"+
							"<td>"+u.age+"</td>"+"<td>"+u.culture.content+"</td>"+
							"<td>"+u.religion.content+"</td><td>"+u.phone+"</td>"+
							"<td><a href='<%=request.getContextPath() %>/admin/test.jsp'><button class='sp'>心理诊断</button></a>"+
							"<a href='#'><button class='sp' style='position: absolute;margin: 5px; 'onclick='user_management_edit('用户编辑','<%=request.getContextPath()%>/UserServlet?operator=toDanganEdit&uid="+u.id+"','600','500')'>"+
							"<img src='<%=request.getContextPath() %>/images/t02.png'>编辑</button></a></td></tr>");	
				});	
			}
		});
		*/
  		
	}
	
  	function toPage(i) {
  	//如何在js中提交表单
  		//1.获取表单
  		document.getElementById("form1").action= "<%=request.getContextPath()%>/UserServlet?operator=toDanganPage&page_current="+i;
  		document.getElementById("form1").submit();

  		//2.还原
  		document.getElementById("form1").action = "<%=request.getContextPath()%>/UserServlet?operator=danganQueryUserByCondition";

  		
	}
  </script>
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
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层

            });
             /*用户-添加*/
            function user_management_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            /*用户-查看*/
            function user_management_show(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            // 用户-编辑
            function user_management_edit (title,url,w,h) {
                x_admin_show(title,url,w,h); 
            }
            </script> 
<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>
</html>