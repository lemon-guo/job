<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="utf-8">
      <style type="text/css">
        .dtable td{
        text-align:center;
        }
        #con td{     
        padding:15px;
        border-bottom:1px solid #e9e9e9; 
        }
    </style>
<title></title>
	<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css"></link>
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
	<li><a href="<%=basePath%>fabunews.jsp">经验分享</a></li>
	<li class="active"><a href="<%=basePath%>my.jsp">个人中心</a></li>
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
	  <aside id="daside">
      <div><p><a href="<%=basePath%>my.jsp">安全中心</a></p></div>
      <div><p><a href="<%=basePath%>resume/resume_showlist">简历中心</a></p></div>
      <div><p><a href="<%=basePath%>job/job_fjob">我的发布</a></p></div>
      <div class="dactive1"><p><a href="<%=basePath%>resume/application_showlist">我的申请</a></p></div>
      <div><p><a href="<%=basePath%>updatemima.jsp">修改密码</a></p></div>
    </aside>
	<section id="dsection">    
	  <div id="dtitle">
	  <span id="dtitle_1"><b>我的申请</b></span>
	  </div>  
  <br>
      <table class="dtable">
      <tr id="dti">
             <td>序号</td>
	         <td>申请岗位</td>
	         <td>所属公司</td>
	         <td>简历编号</td>
	         <td>状态</td>
	         <td>操作</td>
      </tr>
          <s:iterator value="applicationList" status="status">
          <tr id="con">
	         <td><s:property value="#status.index+1"></s:property></td>
	         <td><s:property value="job.jobname"></s:property></td>
	         <td><s:property value="job.companyname"></s:property></td>
	         <td><s:property value="resumeku.resumekuid"></s:property></td>
	         <td><s:property value="state"></s:property></td>
	         <td><s:a href="application_showDetail?application.applicationid=%{applicationid}"> 详情  | </s:a>
	         <s:a href="resumeku_showdetail?resumeku.resumekuid=%{resumeku.resumekuid}">简历详情 | </s:a>
	         <s:a href="application_deleteApplication?application.applicationid=%{applicationid}" onClick="return confirm('确定要删除吗?');">删除</s:a></td>
	        </tr> 
	       </s:iterator>
	       </table>
    </section>
	<br><br><br><br>
</body>
</html>
