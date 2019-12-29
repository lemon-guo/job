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
      table {
     border-collapse: collapse;
     width:70%;
     margin-left:100px;
    }
    table, td, tr {
     border: 0px solid;
    }
    #xiu1
    {
     text-align:left;
     font-size:50px;
     color:#555555;
   } 
   #xiu2
    {
     text-align:right;
     margin-right:60px;
     color:red;
     font-size:28px;
 } 
 #xiu3
    { 
     margin-left:20px;
     font-size:25px;
     color:#555555;
 } 
 #xiu4
    { 
     margin-left:20px;
     font-size:15px;
     color:#555555;
 } 
 #xiu5
    { 
     text-align:center;
     font-size:40px;
     font-family:"微软雅黑";
     margin-left:20px;
     margin-top:50px;
 } 
    .border {
     border-left:5px solid #555555;
     font-size:30px;
     font-style: normal;
     border-top:solid 1px #e9e9e9;
     color:#555555;
 }
 
 .dtable td{
        text-align:center;
        }
        .dtable{
        margin-left:0px;
        }
        #ti{
        background-color:#e9e9e9;
        }
        tr{
        border-bottom:1px solid #e9e9e9;
        }
        #con td{
          padding:10px;
        }
       #dsection
        {
           background-image:url(../images/44.jpg);
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
	<input type="hidden" value="job.jobid" name="job.jobid"/> 
	  <div id="dtitle">
	  <span id="dtitle_1"><b>我的发布</b></span>
	  </div>
	  <br>
	<table>
	  <tr> 
	  	<td colspan="2"> <p id="xiu1"><c:out value="${job.jobname}"></c:out></p> </td>
	    <td colspan="2"> <p id="xiu2"><c:out value="${job.salary}"></c:out>/月</p> </td>
	  </tr>
	   <tr><td>&nbsp;</td></tr>
	   <tr><td>&nbsp;</td></tr>
	  <tr>
  		<td colspan="4"><p id="xiu3"><c:out value="${job.companyname}"></c:out></p></td>
  	  </tr>	
  	  <tr>	
    	<td> <p id="xiu4">工作类别:<c:out value="${job.sorts}"></c:out></p> </td>
    	<td> <p id="xiu4">所需人数:<c:out value="${job.pnumber}"></c:out></p> </td>
    	<td> <p id="xiu4">发布时间:<c:out value="${job.publishtime}"></c:out></p> </td>
    	<td> <p id="xiu4">截止时间:<c:out value="${job.deadline}"></c:out></p> </td>
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
    <center style="margin: auto;"><button class="dbutton" onclick="javascript:history.back();" value="返回到上一个页面">返回上一页</button></center>
	</section>
	<br><br><br><br>
</body>
</html>


