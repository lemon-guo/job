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
    	border-collapse: collapse;
    	width:60%;
    	margin-left:200px;
    	boder:none;
    }
    table, tr, td {
    	border: 0px solid;
    }
    #xiu1
    {
	    text-align:left;
	    font-size:30px;
	} 
	#xiu2
    {
    	text-align:right;
	    margin-right:150px;
	    font-size:15px;
	} 
	#xiu3
    {	
	    margin-left:20px;
	    font-size:20px;
	    color:#4a4d4f;
	} 
	.content{   
   		width: 900px;   
    	height: 50px;   
    	line-height: 25px;   
    	overflow: hidden;   
    	whitewhite-space: nowrap;   
    	text-overflow: ellipsis;   
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
  <div>
    <s:form action="news/news_queryNews" method="post">
    	<br><br><br>
    	<table  border="1" align="left" style="border-collapse:collapse;">
    		<c:forEach var="news" items="${newsList}" varStatus="status" >
    			<tr>
    				<td id="xiu1"><a href="news/news_showDetail?news.newsid=${news.newsid}"><c:out value="${news.newstitle }"></c:out></a></td>
    				<td id="xiu2"><c:out value="${news.newstime}"></c:out></td>
    		    </tr>
    			<tr>
    				<td colspan="2" id="xiu3"><div class="content"><c:out value="${news.newscontent}"></c:out></div></td>
    			</tr>
    			<tr><td colspan="2">&nbsp;</td></tr>
    		</c:forEach>
    	</table>
    </s:form>
    </div>
  </body>
</html>
