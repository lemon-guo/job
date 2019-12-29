<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
    	width:65%;
    	margin-left:200px;
    }
    table, td, tr {
    	border: 0px solid;
    }
    #xiu1
    {
	    text-align:left;
	    font-size:30px;
	    color:#4a4d4f;
	} 
	#xiu2
    {
    	text-align:right;
	    margin-right:60px;
	    font-size:15px;
	} 
	#xiu3
    {	
	    margin-left:10px;
	    font-size:15px;
	    color:#4a4d4f;
	}  
    .detupian {
	   	background-image:url(<%=basePath%>images/11.jpg);
	   	background-size:1550px 800px;
	   	height:700px;
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
	<li><a href="<%=basePath%>job_publish.jsp">发布招聘</a></li>
	<li class="active"><a href="<%=basePath%>news/news_showNews">职场经验</a></li>
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
  <br><br>
  <table>
  	<tr>
  		<td><p id="xiu1"><c:out value="${news.newstitle}"></c:out></p></td>
  		<td><p id="xiu2"><c:out value="${news.newstime}"></c:out></p></td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
    <tr><td colspan="2"><p id="xiu3"><c:out value="${news.newscontent}"></c:out></p></td></tr>
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
