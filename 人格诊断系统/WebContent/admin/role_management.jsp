<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>角色管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all">
</head>
<body>
<div class="x-nav"> <span class="layui-breadcrumb"> <a><cite>首页</cite></a> <a><cite>角色管理</cite></a> </span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<div class="x-body">
<form class="layui-form x-center" action="" style="width:85%">
  <div class="layui-form-pane">
    <div class="layui-form-item">
      <label class="layui-form-label">编号</label>
      <div class="layui-input-inline" style="width:100px">
        <input type="text" name="name"  placeholder="编号" autocomplete="off" class="layui-input">
      </div>
      <label class="layui-form-label">姓名</label>
      <div class="layui-input-inline" style="width:100px">
        <input type="text" name="name"  placeholder="姓名" autocomplete="off" class="layui-input">
      </div>
      <label class="layui-form-label">被测时间</label>
      <div class="layui-input-inline" style="width:150px">
        <input type="text" name="name"  placeholder="被测时间" autocomplete="off" class="layui-input">
      </div>
      <div class="layui-input-inline" style="width:200px">
        <input type="text" name="link"  placeholder="搜索" autocomplete="off" class="layui-input">
      </div>
      <div class="layui-input-inline" style="width:80px">
        <button class="layui-btn"  lay-submit="" lay-filter="*">搜索</button>
      </div>
    </div>
  </div>
</form>
<div class="tools">
    <ul class="toolbar">
      <li><span><img src="<%=request.getContextPath() %>/images/t03.png" /></span>批量删除</li>
      <li onclick="role_management_add('添加用户','role_management_add.jsp','900','500')"><span><img src="<%=request.getContextPath() %>/images/t01.png" /></span>添加</li>
      <li onclick="role_management_edit('编辑','role_management_edit.jsp','900','500')"><span><img src="<%=request.getContextPath() %>/images/t02.png" /></span>编辑</li>
      <li><span><img src="<%=request.getContextPath() %>/images/t09.png" /></span>批量导出</li>
      <li><span><img src="<%=request.getContextPath() %>/images/t10.png" /></span>导入</li>
    </ul>
    <span class="x-right" style="line-height:25px">共有数据：88 条</span></xblock>
  </div>
<table class="tablelist">
  <thead>
    <tr>
      <th width="8%"> <input onclick="selectAll()" type="checkbox"   name="controlAll" style="controlAll" id="controlAll">
      </th>
      <th width="9%"> ID </th>
      <th width="16%"> 角色职称 </th>
      <th width="22%"> 人数</th>
      <th width="34%">备注</th>
      <th width="11%"> 操作 </th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><input type="checkbox" value="1" name="selected"></td>
      <td> 1 </td>
      <td>管理员</td>
      <td>12</td>
      <td >更改权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="2" name="selected"></td>
      <td> 2</td>
      <td>超级管理员</td>
      <td> 123 </td>
      <td >至高无上的权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','admind/role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="3" name="selected"></td>
      <td> 3</td>
      <td>管理员 </td>
      <td> 324</td>
      <td >更改权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="4" name="selected"></td>
      <td> 4</td>
      <td>超级管理员</td>
      <td> 2 </td>
      <td >至高无上的权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="5" name="selected"></td>
      <td> 5</td>
      <td>超级管理员</td>
      <td> 2</td>
      <td >至高无上的权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="6" name="selected"></td>
      <td> 6</td>
      <td>管理员 </td>
      <td> 2</td>
      <td >更改权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="7" name="selected"></td>
      <td> 7</td>
      <td>用户</td>
      <td> 32</td>
      <td >浏览权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="8" name="selected"></td>
      <td> 8</td>
      <td>超级管理员</td>
      <td> 23 </td>
      <td >至高无上的权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="9" name="selected"></td>
      <td> 9</td>
      <td>超级管理员</td>
      <td> 4 </td>
      <td >至高无上的权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
    <tr>
      <td><input type="checkbox" value="10" name="selected"></td>
      <td> 10</td>
      <td>超级管理员</td>
      <td> 5 </td>
      <td >至高无上的权利</td>
      <td class="td-manage"><a title="分配权限" href="javascript:;" onclick="role_management_permissions('分配权限','role_management_permissions.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon"><img src="<%=request.getContextPath() %>/images/quanxian.png" width="15" height="15"></i> </a> <a title="查看" href="javascript:;" onclick="role_management_look('查看','role_management_look.jsp','4','','510')"
                            class="ml-5" style="text-decoration:none"> <i class="layui-icon">&#xe63c;</i> </a> <a title="删除" href="javascript:;" onclick="role_del(this,'1')" 
                            style="text-decoration:none"> <i class="layui-icon">&#xe640;</i> </a></td>
    </tr>
  </tbody>
</table>
<div class="page"  v-show="show">
  <div class="pagelist"> <span class="jump">上一页</span> <span class="jump">1</span> <span class="jump">2</span> <span class="jump">3</span> <span class="jump">4</span> <span class="jump">5</span> <span class="jump">6</span> <span class="ellipsis">...</span> <span class="jump">下一页</span> <span class="jumppoint">跳转到：</span> <span class="jumpinp">
    <input type="text">
    </span> <span class="jump gobtn">GO</span> </div>
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
                $ = layui.jquery;//jquery
              laydate = layui.laydate;//日期插件
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
            });

             /*添加*/
            function role_management_add(title,url,w,h){
                x_admin_show(title,url,w,h);
            }

             
            //修改密码
            function role_management_permissions (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
			//查看
            function role_management_look (title,url,id,w,h) {
                x_admin_show(title,url,w,h); 
            }
			//编辑
            function role_management_edit (title,url,w,h) {
                x_admin_show(title,url,w,h); 
            }
	$('.tablelist tbody tr:odd').addClass('odd');
            </script>
</body>
</html>