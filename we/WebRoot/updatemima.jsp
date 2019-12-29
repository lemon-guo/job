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
     input{
     width:100px;
     height:60px;
     margin-top:20px;
     border:2px solid #AFAFAF;
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
      <div><p><a href="<%=basePath%>resume/application_showlist">我的申请</a></p></div>
      <div class="dactive1"><p><a href="<%=basePath%>updatemima.jsp">修改密码</a></p></div>
    </aside>
	<section id="dsection">    
	  <div id="dtitle">
	  <span id="dtitle_1"><b>修改密码</b></span>
	  </div>
	 <s:form action="seeker/seeker_editmima" enctype="multipart/form-data" method="post">
       <table class="dtable">
           <tr>
            <td>用户名</td>
            <td><input type="text" name="seeker.nickname" value="${session.seeker.nickname}"></td>
           </tr>
            <tr>
            <td>原密码</td>
            <td><input type="text" name="seeker.seekerpassword" value=""></td>
            </tr>
            <tr>
            <td>新密码</td>
            <td><input type="text" name="password" value=""></td>
            </tr>
       </table>
     <input type="hidden" value="${session.seeker.seekerid}" name="seeker.seekerid"/>
	 <input type="hidden" value="${session.seeker.seekername}" name="seeker.seekername"/>
	 <input type="hidden" value="${session.seeker.seekergender}" name="seeker.seekergender"/>
	 <input type="hidden" value="${session.seeker.seekerdegree}" name="seeker.seekerdegree"/>
	 <input type="hidden" value="${session.seeker.seekerbirth}" name="seeker.seekerbirth"/>
	 <input type="hidden" value="${session.seeker.seekerphoto}" name="seeker.seekerphoto"/>
	 <input type="hidden" value="${session.seeker.seekerschool}" name="seeker.seekerschool"/>
	 <input type="hidden" value="${session.seeker.seekermajor}" name="seeker.seekermajor"/>
	 <input type="hidden" value="${session.seeker.politicstatus}" name="seeker.politicstatus"/>
	 <input type="hidden" value="${session.seeker.seekeremail}" name="seeker.seekeremail"/>
	 <input type="hidden" value="${session.seeker.seekertel}" name="seeker.seekertel"/>
	 <input type="hidden" value="${session.seeker.seekeraddress}" name="seeker.seekeraddress"/>
	 <input type="hidden" value="${session.seeker.seekernation}" name="seeker.seekernation"/>
	 <input type="hidden" value="${session.seeker.t1}" name="seeker.t1"/>
	 <input type="hidden" value="${session.seeker.c1}" name="seeker.c1"/>
	 <input type="hidden" value="${session.seeker.e1}" name="seeker.e1"/>
	 <input type="hidden" value="${session.seeker.t2}" name="seeker.t2"/>
	 <input type="hidden" value="${session.seeker.c2}" name="seeker.c2"/>
	 <input type="hidden" value="${session.seeker.e2}" name="seeker.e2"/>
	 <input type="hidden" value="${session.seeker.t3}" name="seeker.t3"/>
	 <input type="hidden" value="${session.seeker.c3}" name="seeker.c3"/>
	 <input type="hidden" value="${session.seeker.e3}" name="seeker.e3"/>
     
     <br><center><button style="margin-left:-300px;" class="dbutton" type="submit" id="qr" name="qr" value="aaa">确认修改</button></center>
     </s:form>
    </section>
</body>
</html>
