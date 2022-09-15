<%@ page language="java" import="java.util.*,com.ten.user.Student" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
	<title>学生选课信息管理系统</title>
	<link href="./css/style_1.css" type="text/css" rel="stylesheet"/>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <% 	Student stu = null;
  		if(session.getAttribute("student")==null){
  			response.sendRedirect("../index.jsp");
  		}else{
  			stu = (Student)session.getAttribute("student");}
  %>
<div class="top">
	<div class="title"><p> 学生选课信息管理系统 </p></div>
</div>
<div class="main">
	<div class="main_left">
		<div class="main_left_class00"><img src=img/touxiang.png></div>
		<div class="main_left_class01"><a href="stu/choiceCou.jsp">学生选课</a></div>
		<div class="main_left_class02"><a href="stu/showCou.jsp">课程查询</a></div>
		<div class="main_left_class03"><a href="stu/stuInfo.jsp">学籍信息</a></div>
		<div class="main_left_class100">
		<input class="reset" type="button" value="注销" onClick="window.location.href=('/2021zuoye/index.jsp')">
		</div>
	</div>
	<div class="main_right">
		<div class="info">
			<p>亲爱的<%= stu.getSname() %>同学，下午好</p>
		</div>
		<div class="box">
			<div class="function"><p>[通知]选课系统已开放</p></div>
			<div class="form">
			<table class="news">
			<tr><td><h2>关于本学期校级任选课相关事宜安排的通知</h2></td></tr>
			<tr><td>各学院及相关单位:</td></tr>
			<tr><td>选修课的选择在前一个学期末进行，设置有选课和补退选两个环节，补退选结束后无法退课、换课、补选，请同学们选课前考虑清楚，按照选课情况认真上课。</td></tr>
			<tr><td>【网络评教】各位老师，针对个别同学未在上学期规定时间内完成网络评教、网络评教出现异常等情况，现统计相关数据，统一进行处理。请各位老师将网络评教有问题的同学信息统计至下方表格，于本周二（12月31日）下班前反馈给我，我将对网络评教有问题的情况统一进行处理。（注：未完成评教将影响学生查看期末成绩、选课、补考等情况，请通知学生务必重视网络评教任务。）</td></tr>
			<tr><td align="right">2021-12-10</td></tr>
			</table>
			</div>
		</div>
	</div>
</div>
</body>

</html>
