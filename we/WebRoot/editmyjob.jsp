<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">
<html>
<head>
<meta charset="utf-8">
     <style type="text/css">
.mytable{
margin-left:100px;
}   
 .mytable td
 {
   text-align:right;
   padding:10px;
}
input
{
   float:left;
   border-radius:5px;
}
textarea{
float:left;
border-radius:5px;
}
#qr{
margin-left:-140px;
}
#fanhui{
margin:auto;
margin-left:-150px;
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
	<li  class="active"><a href="<%=basePath%>my.jsp">个人中心</a></li>
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
	  <span id="dtitle_1"><b>修改我发布工作</b></span>
	  </div>
	  <br>
    <form action="job_editJob" enctype="multipart/form-data" method="post">
        <s:hidden name="job.jobid"/>
       <table class="mytable">
            <tr><td>编号</td>
            <td><input type="text" name="" value="${job.jobid}" readonly ></td>
            <td>公司名称</td>
            <td><input type="text" name="job.companyname" value="<s:property value='job.companyname'/>"></td></tr>
            
            <tr><td>公司地址</td>
            <td><input type="text" name="job.companyaddress" value="<s:property value='job.companyaddress'/>"></td>
            <td>联系方式</td>
            <td><input type="text" name="job.companytelephone" value="<s:property value='job.companytelephone'/>"></td></tr>
            
            <tr><td>邮箱</td>
            <td><input type="text" name="job.companyemail" value="<s:property value='job.companyemail'/>"></td>
            <td>岗位名称</td>
            <td><input type="text" name="job.jobname" value="<s:property value='job.jobname'/>"></td></tr>
            
            <tr><td>薪水</td>
            <td><input type="text" name="job.salary" value="<s:property value='job.salary'/>"></td>   
            <td>所需人数</td>
            <td><input type="text" name="job.pnumber" value="<s:property value='job.pnumber'/>"></td>
            
            <tr><td>类别</td>
            <td><input type="text" name="job.sorts" value="<s:property value='job.sorts'/>"></td>
            <td>截止期限</td>
            <td><input type="text" name="job.deadline" value="<s:property value='job.deadline'/>"></td></tr>
            
            <tr>
            <td>要求</td>
            <td colspan="3"><textarea name="job.demand" cols="75%" rows="8" ><s:property value="job.demand"/></textarea></td></tr>
        </table><br>
          <button class="dbutton" type="submit" id="qr" name="qr" value="aaa">确认编辑</button>
    </form>
   <button class="dbutton" id="fanhui" onclick="javascript:history.back();" value="返回">返回</button>
   </section>      
  </body>
</html>
