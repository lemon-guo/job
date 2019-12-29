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
    
    <title>add application page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/style.css">
  </head>
  <style>
  .container section{
 	 	background-image: url(images/xinfeng.jpg);
 	 	height:750px;
 	 	width:95%;
 	 	margin-left:10%;
   }
   .container section table{
   		margin-top:100px;
 	 	margin-left:200px;
   }
   #xiu1{
   		margin-top:15px;
 	 	margin-left:200px;
   }
   #xiu2{
   		margin-top:10px;
 	 	margin-left:200px;
   }
   #xiu3{
   		margin-top:10px;
 	 	margin-left:200px;
   }
   #xiu4{
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
   }
  </style>
  
  <body>
  <header>
  <nav>
   <ul>
    <li class="banner">职属于你</li>
    <li><a href="index.jsp">首页</a></li>
	<li  class="active"><a href="<%=basePath%>job/job_showJob">职位搜索</a></li>
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
	<div class="container">
		<section>
			<table rules=cols>
			<s:form method="post" name="resumes"> 
			    <tr><td><h3>请选择简历：</h3></td></tr>
				<s:iterator value="resumeList" status="status">
	    		<tr><td><label>简历<s:property value="#status.index+1"></s:property></label>
	    						  <input name="radio" type="radio" value="<s:property value="resumeid"></s:property>" name="<s:property value="#status.index+1"></s:property>">
	    		</td></tr>
				</s:iterator>
			</s:form>
			</table>
			<s:form action="application_addApplication" method="post" namespace="/resume" name="application">
	        	<input type="text" name="keyresumeid" id="keyid" hidden>
	        	<input type="text" name="resumeku.resumekuid" id="keyid" hidden>
	        	<h3 id="xiu1">请填写申请理由：</h3>
	        	<textarea id="xiu2" rows="5" cols="50" name="application.reason"></textarea>
	 		   	<s:submit id="xiu4" value="立即申请" onclick="xuanresume()"></s:submit>   
			</s:form>
		</section>
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
  <script language="javascript"> 
function xuanresume()
{ 
  var temp=document.getElementsByName("radio");
  for (i=0;i<temp.length;i++){ 
  //遍历Radio 
    if(temp[i].checked) 
      {
      //document.application.keyresumeid.value=temp[i].value; 
      document.getElementById("keyid").value=temp[i].value;
      } 
  } 
} 
</script>
</html>