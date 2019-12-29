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
      <div class="dactive1"><p><a href="<%=basePath%>my.jsp">安全中心</a></p></div>
      <div><p><a href="<%=basePath%>resume/resume_showlist">简历中心</a></p></div>
      <div><p><a href="<%=basePath%>job/job_fjob">我的发布</a></p></div>
      <div><p><a href="<%=basePath%>resume/application_showlist">我的申请</a></p></div>
      <div><p><a href="<%=basePath%>updatemima.jsp">修改密码</a></p></div>
    </aside>
	<section id="dsection">    
	  <div id="dtitle">
	  <span id="dtitle_1"><b>安全中心</b></span>
	  <span id="dtitle_2"><a href="<%=basePath%>updatemy.jsp"><b>修改信息</b></a></span>
	  </div>
	    <div class="d1"><b>基本信息</b></div>
        <table align="center" class="dtable">
          <tr>
            <td rowspan="3" id="dimg" ><img src="<%=basePath%>images/head.jpg"></td>
            <td class="dmyxinxi"><h1>${session.seeker.seekername}</h1></td>
          </tr>
          <tr>
              <td class="dmyxinxi">
              ${session.seeker.seekergender} |
              ${session.seeker.seekerbirth} |
              ${session.seeker.seekermajor}专业 |
              ${session.seeker.seekerdegree} |
                         毕业于${session.seeker.seekerschool}
             </td>
         </tr>
        <tr>
            <td class="dmyxinxi">
                    联系电话 :${session.seeker.seekertel}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            E-mail :${session.seeker.seekeremail}
            </td>
        </tr>
       </table>
       <div class="d1"><b>受教育经历</b></div>
       <table align="center" class="dtable">
        <tr>
            <td colspan="2">时间</td>
            <td colspan="2">单位</td>
            <td colspan="2">经历</td>
        </tr>
        <tr>
            <td colspan="2">${session.seeker.t1}</td>
            <td colspan="2">${session.seeker.c1}</td>
            <td colspan="2">${session.seeker.e1}</td>
        </tr>
        <tr>
            <td colspan="2">${session.seeker.t2}</td>
            <td colspan="2">${session.seeker.c2}</td>
            <td colspan="2">${session.seeker.e2}</td>
        </tr>
        <tr>
            <td colspan="2">${session.seeker.t3}</td>
            <td colspan="2">${session.seeker.c3}</td>
            <td colspan="2">${session.seeker.e3}</td>
        </tr>
        </table>
        <div class="d1"><b>其他信息</b></div>
       <table align="center" class="dtable">
        <tr>
            <td>民族 : ${session.seeker.seekernation}</td>
            <td>政治面貌 : ${session.seeker.politicstatus}</td> 
            <td>户籍 : ${session.seeker.seekeraddress}</td>
        </tr>
       </table>
	</section>
	<br><br><br><br>
</body>
</html>
