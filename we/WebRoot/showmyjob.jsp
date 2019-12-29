<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>我发布的工作</title>
	<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<html lang="en">
<html>
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
      <div class="dactive1"><p><a href="<%=basePath%>job/job_fjob">我的发布</a></p></div>
      <div><p><a href="<%=basePath%>resume/application_showlist">我的申请</a></p></div>
      <div><p><a href="<%=basePath%>updatemima.jsp">修改密码</a></p></div>
    </aside>
	<section id="dsection">    
	  <div id="dtitle">
	  <span id="dtitle_1"><b>我的发布</b></span>
	  <span id="dtitle_2"><a href="<%=basePath%>job_publish.jsp"><b>发布工作</b></a></span>
	  </div>
     <input type="hidden" value="job.jobid" name="job.jobid"/>
      <table class="dtable">
      <tr id="dti">
    	     <td>职位名称</td>
	         <td>薪水</td>
	         <td>所需人数</td>
	         <td>期限</td>
	         <td>操作</td>
	         <td>查看</td>
	    </tr>
          <s:iterator value="jobList" status="status">
	       <tr id="con">
	         <td><s:property value="jobname"></s:property></td>
	         <td><s:property value="salary"></s:property></td>
	         <td><s:property value="pnumber"></s:property></td>
	         <td><s:property value="deadline"></s:property></td>
	         <td><s:a href="job_showDetail?job.jobid=%{jobid}">详情 |</s:a>
	         <s:a href="job_deleteJob?job.jobid=%{jobid}" onClick="return confirm('确定要删除吗?');">删除 |</s:a>
	         <s:a href="job_showEdit?job.jobid=%{jobid}">编辑</s:a></td>
	         <td><s:a href="job_showapplist?job.jobid=%{jobid}">查看申请</s:a></td>
	       </tr>
	      </s:iterator>
	</table>
    </section>
	<br><br><br><br>
</body>
</html>