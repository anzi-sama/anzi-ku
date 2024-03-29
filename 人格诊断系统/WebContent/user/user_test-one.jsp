<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>心理诊断测试</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/x-admin.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pag.css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css.css" media="all">
</head>
<body>
<form id="form1" action="<%=request.getContextPath()%>/UserServlet?operator=submitMedical" method="post">
<input  type="hidden" name="uid" value="${sessionScope.user.id}"/>
<input  type="hidden" name="username" value="${sessionScope.user.username}"/>
<div class="x-nav"> <span class="layui-breadcrumb"> 
<a><cite>首页></cite></a> 
<a><cite>症状诊断</cite></a> 
<a><cite>心理诊断测试</cite></a> 
</span> <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"  href="<%=request.getContextPath() %>/javascript:location.replace(location.href);" title="刷新"><i class="layui-icon" style="line-height:30px">ဂ</i></a> </div>
<section class="container">
  <div class="container">
    <ul class="payment-wizard">
      <li class="active">
      	${mess_error}
        <div class="wizard-heading"> 1. 感知觉 <span class="icon-user"></span> </div>
        <div class="wizard-content">
          <div class="size">
            <div class="size4">
              <p>感觉过敏 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="hypersensitivity" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="hypersensitivity" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>幻觉 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="hallucination" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="hallucination" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
          </div>
          <button class="btn-green done" type="button">下一步</button>
        </div>
      </li>
      <li>
        <div class="wizard-heading"> 2. 思维 <span class="icon-location"></span> </div>
        <div class="wizard-content">
           <div class="size">
            <div class="size4">
              <p>思维奔逸 <span title="sfdfs" style="float:left;" >
                <input id="one" type="checkbox" name="running_thought" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="running_thought" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维迟缓 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="delayed_thinking" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="delayed_thinking" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <!-- 
            	<div class="size4">
              <p>思维贫乏 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维松弛 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维散漫 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>破裂思维 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维不连贯 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维中断 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维插入 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>思维被夺 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>妄想 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>强迫观念 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            
             -->
          </div>
          <button class="btn-green done" type="button">下一步</button>
        </div>
      </li>
      <li>
        <div class="wizard-heading"> 3. 情感 <span class="icon-summary"></span> </div>
        <div class="wizard-content">
          <div class="size">
          <div class="size4">
              <p>情绪高涨 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="high_spirits" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="high_spirits" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
          </div>
          <div class="size4">
              <p>易激怒 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="irritable" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="irritable" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
          </div>
            <!-- 
            <div class="size4">
              <p>情绪低落 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>焦虑 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>恐怖 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
             -->
  
          </div>
          <button class="btn-green done" type="button">下一步</button>
        </div>
      </li>
      <li>
        <div class="wizard-heading"> 4. 行为 <span class="icon-mode"></span> </div>
        <div class="wizard-content">
          <div class="size">
          <div class="size4">
              <p>意志增强 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="enhanced_will" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="enhanced_will" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
          </div>
            
          <div class="size4">
              <p>自伤 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="self_injury" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="self_injury" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
          </div>   
            
           <!--
           		<div class="size4">
              <p>意志减退 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>强迫行为 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>疑病行为 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
           
            <div class="size4">
              <p>习惯与冲动 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
           
          --> 
  
          </div>
          <button class="btn-green done" type="button">下一步</button>    
        </div>
      </li>
       <li>
        <div class="wizard-heading"> 5. 智力 <span class="icon-location"></span> </div>
        <div class="wizard-content">
          <div class="size">
          <div class="size4">
              <p>精神发育迟缓 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="mental_retardation" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="mental_retardation" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
          </div>
            
          </div>
          <button class="btn-green done" type="button">下一步</button>
        </div>
      </li>
       <li>
        <div class="wizard-heading"> 6. 生理 <span class="icon-location"></span> </div>
        <div class="wizard-content">
          <div class="size">
          <div class="size4">
              <p>饮食 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="diet" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="diet" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>睡眠 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="sleep" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="sleep" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            
          </div>
          <button class="btn-green done" type="button">下一步</button>
        </div>
      </li>
       <li>
        <div class="wizard-heading"> 7. 性 <span class="icon-location"></span> </div>
        <div class="wizard-content">
          <div class="size">
          <div class="size4">
              <p>性欲减退 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="hyposexuality" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="hyposexuality" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>阳痿 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="impotence" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="impotence" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>性指向 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="sexual_orientation" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="sexual_orientation" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            
            <!-- 
            <div class="size4">
              <p>早泄 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>性乐高潮缺失 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>阴道痉挛 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>性交疼痛 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            <div class="size4">
              <p>性身份性偏好 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="input" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
             -->
          </div>
          <button class="btn-green done" type="button">下一步</button>
        </div>
      </li>
       <li>
        <div class="wizard-heading"> 8. 人格 <span class="icon-location"></span> </div>
        <div class="wizard-content">
          <div class="size">
          <div class="size4">
              <p>人格障碍 <span title="sfdfs" style="float:left;">
                <input id="one" type="checkbox" name="personality_disorder" value="1" style="width:20px; height:20px; margin-right:5px;"/>
                <input id="one" type="hidden" name="personality_disorder" value="0" style="width:20px; height:20px; margin-right:5px;"/>
                </span> </p>
            </div>
            
          </div>
          	${mess}
          	<button class="btn-green" type="submit">完成</button>
          	
          	<!-- <button class="btn-green" type="submit" onClick="window.location.href='<%=request.getContextPath() %>/user/user_test-wc.jsp'">完成</button> -->
        </div>
      </li>
    </ul>
  </div>
  <!-- span style=" float:right; padding-top:20px;"><button class="btn-green" onClick="window.location.href='test-two.jsp'">完成</button></span> -->
</section>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.0.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/js/js.js"></script> 
<script src="<%=request.getContextPath() %>/lib/layui/layui.js" charset="utf-8"></script> 
<script src="<%=request.getContextPath() %>/js/x-layui.js" charset="utf-8"></script> 
<script>
            layui.use(['element','laypage','layer','form'], function(){
                $ = layui.jquery;//jquery
              lement = layui.element();//面包导航
              laypage = layui.laypage;//分页
              layer = layui.layer;//弹出层
              form = layui.form();//弹出层
			   });
            </script>
</form>
</body>
</html>