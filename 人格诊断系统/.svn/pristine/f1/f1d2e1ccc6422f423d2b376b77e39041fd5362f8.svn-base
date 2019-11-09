<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户管理-编辑</title>
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
<form id="form1" action="UserServlet?operator=danganAdd" method="post">
  <table class="layui-table">
    <tbody>
      <tr>
        <td><span class="x-red">*</span>姓名</td>
        <td><input type="text" id="realname" name="realname" class="layui-input"></td>
        <td><span class="x-red">*</span>性别</td>
        <td >
          <select lay-verify="required" name="sex" id="sex"class="layui-input">
            <option value="1">男</option>
            <option value="2">女</option>
          </select>
        </td>
        <td><span class="x-red">*</span>籍贯</td>
        <td>
        	<select lay-verify="required" name="province" class="layui-input">
	           <c:forEach items="${provinces}" var="p">
	           		<option value="${p.id}">${p.provinceName}</option>
	           </c:forEach>
	        </select>
        
        </td>
      </tr>
      <tr>
        
        <td><span class="x-red">*</span>年龄</td>
        <td><input type="text" id="age" name="age" class="layui-input"></td>
        <td><span class="x-red">*</span>宗教信仰</td>
        <td >
          <select lay-verify="required" name="religion" class="layui-input">
            <option value="1">佛教</option>
            <option value="2">伊斯兰教</option>
            <option value="3">基督教</option>
            <option value="4">其它</option>
          </select>
        </td>
        <td >${mess}</td >  
      </tr>
      <tr>
        
        <td><span class="x-red">*</span>文化程度</td>
        <td colspan="3" >
          <select lay-verify="required" name="culture" class="layui-input">
            <option value="1">小学</option>
            <option value="2">初中</option>
            <option value="3">高中</option>
            <option value="4">大专</option>
            <option value="5">大学</option>
          </select></td>
      </tr>
      
      <tr>
        <td><span class="x-red">*</span>家庭地址</td>
        <td colspan="3"><input type="text" id="address" name="address" class="layui-input"></td>
        <td><span class="x-red">*</span>联系电话</td>
        <td ><input type="text" id="phone" name="phone" class="layui-input"></td>
      </tr>
      <tr>
        <td>每周工作时间</td>
        <td><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">超过60小时</option>
            <option value="2">超过100小时</option>
            <option value="3">超过110小时</option>
          </select></td>
        <td>每周学习时间</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">超过50小时</option>
            <option value="2">超过100小时</option>
            <option value="3">从不</option>
          </select></td>
        <td > 婚姻状况</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">已婚</option>
            <option value="2">未婚</option>
          </select></td>
      </tr>
      <tr>
        <td>夫妻关系</td>
        <td><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">和谐</option>
            <option value="2">不和谐</option>
          </select></td>
        <td>性生活</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">满意</option>
            <option value="2">不满意</option>
          </select></td>
        <td > 性欲</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">增强</option>
            <option value="2">减弱</option>
          </select></td>
      </tr>
      <tr>
        <td>夫妻关系不和谐原因</td>
        <td colspan="5"><input type="text" id="link" name="link" class="layui-input"></td>
      </tr>
      <tr>
        <td>其他</td>
        <td><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">早泄</option>
            <option value="2">2</option>
          </select></td>
        <td>家庭成员</td>
        <td colspan="3" ><input type="text" id="link" name="link" class="layui-input"></td>
      </tr>
      <tr>
        <td>居住条件</td>
        <td><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">差</option>
            <option value="2">优</option>
          </select></td>
        <td>几代同住</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">一代</option>
            <option value="2">二代</option>
          </select></td>
        <td > 家庭关系</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">和谐</option>
            <option value="2">不和谐</option>
          </select></td>
      </tr>
      <tr>
        <td>本人健康状况</td>
        <td><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">强健</option>
            <option value="2">较弱</option>
          </select></td>
        <td>初潮</td>
        <td ><input type="text" id="link" name="link" class="layui-input"></td>
        <td > 相隔天数</td>
        <td ><input type="text" id="link" name="link" class="layui-input"></td>
      </tr>
      <tr>
        <td>行径天数</td>
        <td><input type="text" id="link" name="link" class="layui-input"></td>
        <td>未婚先孕</td>
        <td ><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">是</option>
            <option value="2">否</option>
          </select></td>
        <td > 早产</td>
        <td ><input type="text" id="link" name="link" class="layui-input"></td>
      </tr>
      <tr>
        <td>经期性格</td>
        <td colspan="3"><select lay-verify="required" name="cid" class="layui-input">
            <option value="1">无变化</option>
            <option value="2">暴躁</option>
          </select></td>
        <td > 流产</td>
        <td ><input type="text" id="link" name="link" class="layui-input"></td>
      </tr>
      <tr>
        <td colspan="6" align="right">
          <input type="submit" class="layui-btn" value="保存" ></input>
  		  <input type="button" class="layui-btn" value="取消" onclick="exitAdd()"></input>
          
      </tr>
    </tbody>
  </table>
 </form>
</div>
<script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8">
        </script> 
<script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8">
        </script> 
<script>

	function exitAdd() {
		
		window.parent.location.href="<%=request.getContextPath()%>/admin/dangan.jsp";
	}


            layui.use(['form','layer'], function(){
                $ = layui.jquery;
              var form = layui.form()
              ,layer = layui.layer;
            });
        </script>
</body>
</html>