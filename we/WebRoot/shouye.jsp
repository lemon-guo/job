<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>shouye page</title>
    
 <meta http-equiv="pragma" content="no-cache">
 <meta http-equiv="cache-control" content="no-cache">
 <meta http-equiv="expires" content="0">    
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 <meta http-equiv="description" content="This is my page">
 <link rel="stylesheet" href="<%=basePath%>css/style.css">
 
   <style>
  #xiu1{
  	color: #ffffff;
  	font-size: 70px;
  }
  #xiu2{
  	color: #E9E6E6;
  	font-size: 22px;
  }
  #xiu3{
  	color: rgba(56,135,245,0.90);
  	font-size: 20px;
  }
  #xiu4{
  	color:#EBEAEA;
  	font-size: 22px;
  }
  #xiu5{
    font-size: 40px;
    color:rgba(10,61,132,0.90); 
    text-align: center
  }
  #xiu6{
  background-image:url(<%=basePath%>images/show.jpg);
  background-size: auto;
  height: 600px;
  }
  </style>
  </head>

  <body>
 <header>
  <nav>
   <ul>
    <li class="banner">职属于你</li>
    <li class="active"><a href="index.jsp">首页</a></li>
	<li ><a href="<%=basePath%>job/job_showJob">职位搜索</a></li>
	<li><a href="<%=basePath%>job_publish.jsp">发布招聘</a></li>
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
 <ul class="container">
  <section id="xiu6">
   <br>
   <center><p id="xiu1">求职&nbsp;&amp;&nbsp;招聘</p></center>
   <center><p id="xiu2">为企业寻将才，为人才找舞台。</p></center>
   <center><p id="xiu3">海量招聘信息，快速分类检索，免费简历模板，公开发布招聘，分享求职经验。</p></center>
   <center><p id="xiu4">提供应聘招聘一站式服务，打造职属于你的舞台。</p></center>
  </section>
  <section>
   <table align="center">
    <h2 id="xiu5">热门企业</h2>
    <tr>
     <td><img src="images/company1.jpg" width="240" height="250" alt="bb"></td>
     <td><img src="images/company5.jpg" width="240" height="250" alt="baidu"/></td>
     <td><img src="images/company6.jpg" width="240" height="250" alt="bb"/></td>
     <td><img src="images/company4.jpg" width="240" height="250" alt="jj"/></td>
    </tr>
    <tr>
     <td><img src="images/company2.jpg" width="240" height="250" alt="bb"/></td>
     <td><img src="images/company3.jpg" width="240" height="250" alt="bb"/></td>
     <td><img src="images/company7.jpg" width="240" height="250" alt="bb"/></td>
     <td><img src="images/company8.jpg" width="240" height="250" alt="bb"/></td>
    </tr>
   </table>
  </section>
  <section>
  <table align="center">
    <h2 id="xiu5">简历模板</h2>
    <tr>
     <td><img src="images/resume.png" width="600" height="900" alt="bb"/></td>
    </tr>
  </table>
 </section>
 </ul>
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