<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户管理</title>


<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css"
	media="all">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-validation-1.14.0/lib/jquery-1.11.1.js"></script>
<script type="text/javascript">
          /* 查询 */
    function userBtnCX(){
      alert();
      //表单提交，否则无法把复选框选定的数据传给后台
      document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
   	  document.getElementById("form1").submit();
   	 //2.还原(相当于重新查询一遍)
	  document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
    }
    /* 批量删除 */
    function userSC(){
    	alert($(".uid:checked").length);
    	if($(".uid:checked").length>0){
      		//表单提交，否则无法把复选框选定的数据传给后台
    			 document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=deleteUsers";
    	    	  document.getElementById("form1").submit();
    	    	  
    	    	  
    	    	  //2.还原(相当于重新查询一遍)
    	    	  document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
      		}else{
      			alert('请选定要删除的用户');
      		}
    	
    }
    /* 导出当页数据 */
    function dateExport(pageNum){
    	alert("导出数据");
    	//表单提交，否则无法把复选框选定的数据传给后台
        document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=dateExport&pageNum="+pageNum;
     	document.getElementById("form1").submit();
     	 //2.还原(相当于重新查询一遍)
  	    document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser"; 
    	
    }
    
    </script>

</head>
<body>

	<form name="form1" id="form1" method="post"
		action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser">
		<div class="x-nav">
			<span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>用户管理</cite></a>
			</span> <a class="layui-btn layui-btn-small"
				style="line-height: 1.6em; margin-top: 3px; float: right"
				href="javascript:location.replace(location.href);" title="刷新"><i
				class="layui-icon" style="line-height: 30px">ဂ</i></a>
		</div>
		<div class="x-body">
			<form class="layui-form x-center" action="" style="width: 85%">
				<div class="layui-form-pane">
					<div class="layui-form-item">
						<label class="layui-form-label">编号</label>
						<div class="layui-input-inline" style="width: 100px" >
							<input type="text" name="id" placeholder="编号" autocomplete="off"
								class="layui-input" value="${id}">
						</div>
						<label class="layui-form-label">姓名</label>
						<div class="layui-input-inline" style="width: 100px">
							<input type="text" name="username" placeholder="姓名"
								autocomplete="off" class="layui-input" value="${username}">
						</div>
						<label class="layui-form-label">性别</label>
						<div class="layui-input-inline" style="width: 150px">
							<select name="sex" id="sex" class="layui-form-label" value="${sex}">
								<option value="">选择</option>
								<option value="1">男</option>
								<option value="2">女</option>
							</select>
						</div>
						<div class="layui-input-inline" style="width: 200px">
							<input type="hidden" name="link" placeholder="搜索"
								autocomplete="off" class="layui-input">
						</div>
						<div class="layui-input-inline" style="width: 80px">
							<button class="layui-btn" lay-submit="" lay-filter="*"
								onClick="userBtnCX()">查询</button>
						</div>
					</div>
				</div>
			</form>
			<div class="tools">
				<ul class="toolbar">
					<li onclick="userSC()"><span><img
							src="<%=request.getContextPath() %>/images/t03.png" /></span>批量删除</li>
					<li onclick="('添加用户','<%=request.getContextPath()%>/UserServlet?operator=toUserManagerAdd','600','500')"><span><img
							src="<%=request.getContextPath() %>/images/t01.png" /></span>添加</li>
					<%-- <li><span><img
							src="<%=request.getContextPath() %>/images/t10.png" /></span>导入</li> --%>
					<li onclick="dateExport(${page_current})"><span><img
							src="<%=request.getContextPath() %>/images/t09.png" /></span>导出</li>
					<%-- <li><span><img
							src="<%=request.getContextPath() %>/images/t07.png" /></span>打印</li>
					<li><span><img
							src="<%=request.getContextPath() %>/images/t08.png" /></span>审核</li> --%>
				</ul>
				<span class="x-right" style="line-height: 25px">共有数据：${dataSize}条
				</span>
				</xblock>
				<!-- 用来统计数据的条数数据的 -->
			</div>
			<table class="tablelist">
				<thead>
					<tr>
						<th><input onclick="selectAll()" type="checkbox"
							name="controlAll" style="" id="controlAll"></th>
						<th>ID</th>
						<th>用户名</th>
						<th>密码</th>
						<th>用户角色</th>
						<th>性别</th>
						<th>注册时间</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<!--    显示区域 -->
				<tbody>

					<c:forEach items="${list}" var="u" varStatus="status">
						<tr>
							<td><input type="checkbox" value="${u.id}" class="uid"
								name="checkbox"></td>
							<td>${u.id}</td>
							<td><u style="cursor: pointer"
								onclick="management_show('${u.username}','admin/management_show.jsp','10001','360','400')">${u.username}</u></td>
							<td>${u.password}</td>
							<td>
								<% %>${u.rule.content}</td>
							<td>${u.sex.equals("1")?'男':'女'}</td>
							<td>${u.registerTime}</td>
							<td class="td-status">
								<button class="sp">已启用</button>
							</td>
							<td class="td-manage"><a style="text-decoration: none"
								onclick="member_stop(this,'10001')" href="javascript:;"
								title="停用"> <i class="layui-icon">&#xe601;</i>
							</a> <a title="编辑" href="javascript:;"
								onclick="management_edit
                            ('编辑','<%=request.getContextPath()%>/UserServlet?operator=toUserManagement_edit&id=${u.id}&rule=${u.rule.content}','4','','510')"
								class="ml-5" style="text-decoration: none"> <i
									class="layui-icon">&#xe642;</i>
							</a> <a style="text-decoration: none"
								onclick="management_password('修改密码','<%=request.getContextPath() %>/UserServlet?operator=ToUserUpdatePassWord&id=${u.id}&username=${u.username}','10001','600','400')"
								href="javascript:;" title="修改密码"> <i class="layui-icon">&#xe631;</i>
							</a> <!-- <a title="删除" href="javascript:;" onclick="member_del(this,'1')" 
                            style="text-decoration:none"> --> <a
								title="删除"
								href="<%=request.getContextPath() %>/UserServlet?operator=deleteUsersOne&id=${u.id}&username=${u.username}"
								style="text-decoration: none"> <i class="layui-icon">&#xe640;</i>
							</a></td>
						</tr>

					</c:forEach>

				</tbody>
				<%--      <c:forEach items="${list}" var="u" varStatus="status" >
          <tr align="center" bgcolor="#FFFFFF">
            <td bordercolor="#FFFFFF"   class="text_cray1"><input type="checkbox" name="checkbox"  class="uid" value="${u.id}">
           </td>
            <td width="98" bordercolor="#FFFFFF" class="text_cray1">${u.id}</td>
            <td width="80" bordercolor="#FFFFFF"  class="text_cray1">${u.sex.equals("1")?'男':'女'}</td>
            <td width="132" bordercolor="#FFFFFF"  class="text_cray1">${u.ct.content}</td>
            <td width="247" bordercolor="#FFFFFF"  class="text_cray1">${u.certcode}</td><!-- 证件号码 -->
            <td width="82" bordercolor="#FFFFFF"  class="text_cray1">${u.ut.content}</td>
            <td width="89" bordercolor="#FFFFFF"  class="text_cray1">
           <!--  <a href="#">
            <input name="toEditUser" type="button" class="toEditUser" value="编辑" id="toEditUser" onClick="butBj()">
            </a> -->
         <a href="<%=request.getContextPath()%>/AdminServlet?operator=toEditUser&id=${u.id}" class="text_red">编辑</a>
            </td>
          </tr>
          </c:forEach> --%>
			</table>
			<div class="page" v-show="show">
				<div class="pagelist">
					<span class="jump">当前第${page_current}页</span><span class="jump">共${pageCount}页</span>
					<span class="jump" onclick="toPage(${page_current-1})">上一页</span>
					<% Object pageCount=request.getAttribute("pageCount"); //总页数
            Integer count=0;
            if(pageCount!=null)
            {
            	count=(Integer)pageCount;//查到的总页数
            }
            for(int i=1;i<=count;i++){
            %>
					<a href="#" onclick="toPage(<%=i%>)"><span class="jump"><%=i %></span></a>
					<%} 
            %>



					<span class="jump" onclick="toPage(${page_current+1})">下一页</span> <span
						class="jumppoint">跳转到：</span> <span class="jumpinp"> 
					<input type="text" id="goPage">
					</span> <span class="jump gobtn" onclick="Gopage()">GO</span>

				</div>
			</div>
		</div>
		<br /> <br /> <br />
		<script src="<%=request.getContextPath() %>/lib/layui/layui.js"
			charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/js/x-layui.js"
			charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/js/jquery2.js"
			charset="utf-8"></script>
		<script src="<%=request.getContextPath() %>/js/js.js" charset="utf-8"></script>
		<script type="text/javascript">
		function Gopage(){
			var page=document.getElementById("goPage").value;
				alert("跳转到第"+page+"页");
				document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=toUserPage&page_current="+page;
		    	document.getElementById("form1").submit();
		    	//2.还原(相当于重新查询一遍)
		  	    document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
		
			
		}
		</script>
		<script type="text/javascript">
    /* 分页工具,用户点击i页就跳哪 */
    function toPage(i){
    	alert("请求第"+i+"页");  	
    	document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=toUserPage&page_current="+i;
    	document.getElementById("form1").submit();
    	//2.还原(相当于重新查询一遍)
  	    document.getElementById("form1").action="<%=request.getContextPath()%>/UserServlet?operator=QueryUser";
    }
    </script>
		<script>
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层

            });

             /*用户-添加*/
            function management_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }
            /*用户-查看*/
            function management_show(title,url,id,w,h){
                x_admin_show(title,url,w,h);
            }

             /*用户-停用*/
            function member_stop(obj,id){
                layer.confirm('确认要停用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="layui-icon">&#xe62f;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<button class="sp3">已停用</button>');
                    $(obj).remove();
                    layer.msg('已停用!',{icon: 5,time:1000});
                });
            }

            /*用户-启用*/
            function member_start(obj,id){
                layer.confirm('确认要启用吗？',function(index){
                    //发异步把用户状态进行更改
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="<%=request.getContextPath() %>javascript:;" title="停用"><i class="layui-icon">&#xe601;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<button class="sp">已启用</button>');
                    $(obj).remove();
                    layer.msg('已启用!',{icon: 6,time:1000});
                });
            }
            // 用户-编辑
            function management_edit (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
            /*密码-修改*/
            function management_password(title,url,id,w,h){
                x_admin_show(title,url,w,h);  
            }
           
	$('.tablelist tbody tr:odd').addClass('odd');
            </script>
	</form>
</body>
</html>