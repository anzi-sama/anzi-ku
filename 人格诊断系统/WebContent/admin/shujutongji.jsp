<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
            数据统计
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
        <link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all"> 
        <!--饼状图开始-->
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jsapi.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/corechart.js"></script>		
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.ba-resize.min.js"></script>

<script type="text/javascript">
gvChartInit();
$(document).ready(function(){
	$('#myTable5').gvChart({
		chartType: 'PieChart',
		gvSettings: {
			vAxis: {title: 'No of players'},
			hAxis: {title: 'Month'},
			width: 600,
			height: 350
		}
	});
});

function selectAll(){
 var checklist = document.getElementsByName ("selected");
   if(document.getElementById("controlAll").checked)
   {
   for(var i=0;i<checklist.length;i++)
   {
      checklist[i].checked = 1;
   } 
 }else{
  for(var j=0;j<checklist.length;j++)
  {
     checklist[j].checked = 0;
  }
 }
}
</script>

<script type="text/javascript">
gvChartInit();
$(document).ready(function(){
		$('#myTable1').gvChart({
			chartType: 'PieChart',
			gvSettings: {
			vAxis: {title: 'No of players'},
			hAxis: {title: 'Month'},
			width: 600,
			height: 350
		}
	});
});
</script>
        <!--结束-->
        
    </head>
    <body>
        <div class="x-nav">
            <span class="layui-breadcrumb">
              <a><cite>首页</cite></a>
              <a><cite>数据管理</cite></a>
              <a><cite>数据统计</cite></a>
            </span>
         
          
         
           <!--内容-->
    </div>      
<br />
<br />
<br />


        <script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8"></script>
        <script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8"></script>
        <script>
            layui.use(['laydate','element','laypage','layer'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
            });
            //查看
           function person_look (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }

           
            </script>
        <!--饼状图开始-->
        <div style="width:100%;margin:0 auto;">
        
        <table width="100%">
        <tr>
   <!-- <td colspan="2" align="center">症状图表显示（标题）</td> --> 
  </tr>
  <tr>
    <td align="center"> <table id='myTable5'>
			<caption>文化比例</caption>
			<thead>
				<tr>
					<th></th>
					<th>小学</th>
					<th>初中</th>
					<th>高中</th>
					<th>大专</th>
					<th>大学</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>${sum}</th>
					<td>${grade}</td>
					<td>${junior}</td>
					<td>${senior}</td>
					<td>${junior}</td>
					<td>${campus}</td>
		
                    
				</tr>
			</tbody>
		</table>  </td>
    <td align="center"> <table id='myTable1'>
			<caption>症状性别比例</caption>
			<thead>
				<tr>
					<th></th>
					<th>男</th>
					<th>女</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>${sum}</th>
					<td>${man}</td>
					<td>${women}</td>
					</tr>
			</tbody>
		</table>  </td>
  </tr>
</table>
	</div>	

        <!--结束-->
        <br /><br />
    </body>
</html>