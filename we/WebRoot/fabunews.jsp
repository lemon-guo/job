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
    
    <title>My JSP 'fabunews.jsp' starting page</title>
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
    	border-collapse:separate;
    	width:65%;
    	margin-left:250px;
        border-spacing:10px 15px;
    }
    table, td, tr {
    	border: 0px solid;
    }
    #xiu2
    {
	    text-align:left;
	    font-size:20px;
	    width:50px;
	    
	} 
	#xiu3
    {
	    text-align:left;
	    font-size:20px;
	    border-radius:5px;
	    border:2px soild #afafaf;
	}
	#xiu4
    {
	    margin-left:500px;
	    font-size:20px;
	    text-align:right;
	}
	.dbutton{/*确认编辑和返回上一页按钮*/
   		border-right:3px solid #AFAFAF;
   		border-buttom:3px solid #AFAFAF;
   		border-top:1px solid #AFAFAF;
   		border-left:1px solid #AFAFAF;
   		width:120px;
 		height:40px;
 		margin:10px;
 		font-size:18px;
 		background-color:#ffffff;
 		color:#555555;
 		margin-left:750px;
}
	textarea{
	border-radius:5px;
	    border:2px soild #afafaf;
	}
	.addtupian {
	   	background-image:url(<%=basePath%>images/58.png);
	   	background-size:1200px 600px;
	   	background-repeat:no-repeat;
	   	height:600px;
	   	margin-left:80px;
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
	<li><a href="<%=basePath%>news/news_showNews">职场经验</a></li>
	<li class="active"><a href="<%=basePath%>fabunews.jsp">经验分享</a></li>
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
    <s:form action="news_addNews" method="post" namespace="/news">
    <br><br><br><br>
    <table>
        <tr>
        	<td id="xiu2">标题:</td> 
        	<td><input id="xiu3" name="news.newstitle" required="required"></td>
     	</tr>
     	<tr>
        	<td id="xiu2" colspan="2">内容:</td> 
        </tr>
        <tr>   	
        	<td colspan="2"><textarea  rows="15" cols="80" name="news.newscontent" required="required"></textarea></td>
     	</tr>
     	</table>
     	
     	<button class="dbutton" type="submit" value="发布">发布</button>
     	
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
