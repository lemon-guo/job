<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>index</title>
    <link rel="stylesheet" href="css/style.css">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	table {
    	border-collapse:separate;
    	width:65%;
    	margin-left:50px;
        border-spacing:10px 15px;
    }
    table, td, tr {
    	border: 0px solid;
    }
	#xiu1
    {
	    margin-left:370px;
	    font-size:40px;
	    color:#5a5a5a;
	} 
	#xiu2
    {
	    text-align:right;
	    font-size:20px;
	    color:#000000;
	    font-family:Microsoft Yahei;
	} 
	#xiu3
    {
	    text-align:left;
	    font-size:20px;
	}
	#xiu4
    {
	    margin-left:350px;
	    font-size:20px;
	} 
	input{
	 border:2px solid #818181;
	 background-color:rgba(0,0,0,0);
	 }
	.addtupian {
	   	background-image:url(<%=basePath%>images/1.jpg);
	   	background-size:1400px 500px;
	 }
	 
	</style>
  </head>
  <body>
   <header>
  <nav>
   <ul>
    <li class="banner">职属于你</li>
    <li><a href="index.jsp">首页</a></li>
	<li><a href="<%=basePath%>job/job_showJob">职位搜索</a></li>
	<li  class="active"><a href="<%=basePath%>job_publish.jsp">发布招聘</a></li>
	<li><a href="<%=basePath%>news/news_showNews">职场经验</a></li>
	<li><a href="<%=basePath%>fabunews.jsp">经验分享</a></li>
	<li><a href="<%=basePath%>my.jsp">个人中心</a></li>
    <c:choose>
          <c:when test="${session.seeker.nickname==null}">
            <a class="tui" href="reg.jsp">注册</a>
            <a class="tui" href="index.jsp">登录</a>
          </c:when>
          <c:otherwise>
            <li id="huanyin"><c:out value="${session.seeker.nickname}"></c:out>, 欢迎您!</li>
            <li><a class="tui" href="<%=basePath%>index.jsp">&nbsp;&nbsp;|注销</a></li>
          </c:otherwise>
            </c:choose>
   </ul>
  </nav>
 </header>
    
  <div class="addtupian">
     <s:form action="job_addJob" method="post" namespace="/job">
        <p id="xiu1">招贤纳士</p> 
        <table>
        <tr>
        	<td width=10% id="xiu2">公司名称:</td> 
        	<td width=25%><input id="xiu3" name="job.companyname" required="required"></td>
        	<td width=10% id="xiu2">公司地址:</td> 
        	<td width=25%><input id="xiu3" name="job.companyaddress" required="required"></td>
        <tr>
        
        <tr>
        	<td id="xiu2">公司电话:</td> 
        	<td><input id="xiu3" name="job.companytelephone" required="required"></td>
        	<td id="xiu2">公司邮箱:</td> 
        	<td><input id="xiu3" name="job.companyemail" required="required"></td>
        <tr>
        
        <tr>
        	<td id="xiu2">职位名称:</td> 
        	<td><input id="xiu3" name="job.jobname" required="required"></td>
        	<td id="xiu2">薪&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;资:</td>
        	<td><input id="xiu3" name="job.salary" placeholder="例如：10000" required="required"></td>
        <tr>
        
        <tr>
       		<td id="xiu2">职位要求:</td> 
       		<td><input id="xiu3" name="job.demand" required="required"></td>
        	<td id="xiu2">所需人数:</td> 
        	<td><input id="xiu3" name="job.pnumber" required="required"></td>
        <tr>
        
        <tr>
        	<td id="xiu2">工作类别:</td> 
        	<td><input id="xiu3" name="job.sorts" required="required"></td>
        	<td id="xiu2">截止日期:</td> 
        	<td><input id="xiu3" name="job.deadline" required="required"></td>
        <tr> 	

	    <tr><td colspan="4" id="xiu4"><input id="xiu4" type="submit" value="发布工作"></td></tr>
	    </table>
    </s:form>
  </div>
  <footer>
   <br>
    <table align="center">
     <tr>
      <td>联系方式：0875-7417415</td>
      <td>邮箱：986656564@qq.com</td>
     </tr>
     <tr>
      <td>地址：北京市海淀区中关村南大街27号中央民族大学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td>传真：028-62322623-823</td>
     </tr>
    </table>
   Copyright &copy; 2019 zhishuyuni All rights reserved.
 </footer>
  </body>
</html>