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
    
    <title>My JSP 'job_detail.jsp' starting page</title>
    <link rel="stylesheet" href="css/style.css">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
    table {
    	border-collapse: collapse;
    	width:70%;
    	margin-left:150px;
    }
    table, td, tr {
    	border: 0px solid;
    }
    #xiu1
    {
	    text-align:left;
	    font-size:50px;
	    color:#4a4d4f;
	} 
	#xiu2
    {
    	text-align:right;
	    margin-right:60px;
	    color:red;
	    font-size:40px;
	} 
	#xiu3
    {	
	    margin-left:20px;
	    font-size:20px;
	    color:#4a4d4f;
	} 
	#xiu4
    {	
	    margin-left:20px;
	    font-size:15px;
	    color:#4a4d4f;
	} 
	#xiu5
    {	
	    text-align:center;
	    font-size:40px;
	    font-family:STCaiyun;
	} 
    .border {
    	border-left:5px solid #495F99;
    	font-size:30px;
    	font-style: normal;
    	border-top:solid 1px #0056ac;
	}
    .detupian {
	   	background-image:url(<%=basePath%>images/4.jpg);
	   	background-size:1400px 800px;
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
	<div class="detupian">
	<table>
	 <tr><td>&nbsp;</td></tr>
	 <tr> 
	  	<td colspan="4"> <p id="xiu5">job</p> </td>
	  </tr>
	  <tr> 
	  	<td colspan="2"> <p id="xiu1"><c:out value="${job.jobname}"></c:out></p> </td>
	    <td colspan="2"> <p id="xiu2"><c:out value="${job.salary}"></c:out>/月</p> </td>
	  </tr>
	  <tr>
  		<td colspan="4"><p id="xiu3"><c:out value="${job.companyname}"></c:out></p></td>
  	  </tr>	
  	  <tr><td>&nbsp;</td></tr>
  	  <tr>	
    	<td> <p id="xiu4">所需人数：<c:out value="${job.pnumber}"></c:out></p> </td>
    	<td> <p id="xiu4">工作类别：<c:out value="${job.sorts}"></c:out></p> </td>
    	<td> <p id="xiu4">发布时间：<c:out value="${job.publishtime}"></c:out></p> </td>
    	<td> <p id="xiu4">截止时间：<c:out value="${job.deadline}"></c:out></p> </td>
    </tr>
  	 <tr>
  	 	<td colspan="4"><p id="xiu3">&nbsp;</p></td>
  	 <tr>
  	    <td colspan="4"><div class="border">&nbsp;&nbsp;&nbsp;上班地址</div> </td>
  	 </tr>
  	 <tr>
  	 	<td colspan="4"><p id="xiu3"><c:out value="${job.companyaddress}"></c:out></p> </td>
  	 </tr>
  	 <tr><td>&nbsp;</td></tr>
  	 <tr>
  	  <td colspan="4"><div class="border">&nbsp;&nbsp;&nbsp;联系方式</div></td>
  	 </tr>
  	 <tr>
    	<td colspan="4"><p id="xiu3">电话：<c:out value="${job.companytelephone}"></c:out></p>
    	<p id="xiu3">邮箱：<c:out value="${job.companyemail}"></c:out></p></td>
     <tr>	
     <tr><td>&nbsp;</td></tr>
     <tr>
  	  <td colspan="4"><div class="border">&nbsp;&nbsp;&nbsp;职位要求</div></td>
  	 </tr>
  	 <tr>
    	<td colspan="4"><p id="xiu3"><c:out value="${job.demand}"></c:out></p></td>
     </tr>
    </table>
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
