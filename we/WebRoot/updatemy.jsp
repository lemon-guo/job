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
	  <span id="dtitle_1"><b>安全中心-修改信息</b></span>
	  </div>
	 <s:form action="seeker/seeker_editSeeker" enctype="multipart/form-data" method="post">
	 <input type="hidden" value="${session.seeker.seekerid}" name="seeker.seekerid"/>
	 <input type="hidden" value="${session.seeker.nickname}" name="seeker.nickname"/>
	 <input type="hidden" value="${session.seeker.seekerpassword}" name="seeker.seekerpassword"/>
	 <div class="basic" align="center"><h1 style="text-align:center;">修改个人信息</h1></div>
       <div class="d1"><b>个人信息</b></div><br>
        <table align="center">
        <tr>
            <td>姓名</td>
            <td><input type="text" name="seeker.seekername" value="${session.seeker.seekername}"></td>
            <td>性别</td>
            <td><input type="text" name="seeker.seekergender" value="${session.seeker.seekergender}"></td>
            <td>出生年月</td>
            <td><input type="text" name="seeker.seekerbirth" value="${session.seeker.seekerbirth}"></td>
        </tr>
        <tr>
            <td>民族</td>
            <td><input type="text" name="seeker.seekernation" value="${session.seeker.seekernation}"></td>
            <td>政治面貌</td>
            <td><input type="text" name="seeker.politicstatus" value="${session.seeker.politicstatus}"></td>
            <td>毕业学校</td>
            <td><input type="text" name="seeker.seekerschool" value="${session.seeker.seekerschool}"></td>
        </tr>
        <tr>
            <td>专业</td>
            <td><input type="text" name="seeker.seekermajor" value="${session.seeker.seekermajor}"></td>
            <td>学历</td>
            <td><input type="text" name="seeker.seekerdegree" value="${session.seeker.seekerdegree}"></td>
            <td>户籍</td>
            <td><input type="text" name="seeker.seekeraddress" value="${session.seeker.seekeraddress}"></td>
        </tr>
       </table>
       <div class="d1"><b>受教育经历</b>( 请根据自身教育情况从高到低填写 )</div>
       <table align="center" class="dtable">
        <!--第一行-->
        <tr>
            <td colspan="2">时间</td>
            <td colspan="2">单位</td>
            <td colspan="3">经历</td>
        </tr>
        <!--第二行-->
        <tr>
            <td colspan="2"><input type="text" name="seeker.t1" value="${session.seeker.t1}"></td>
            <td colspan="2"><input type="text" name="seeker.c1" value="${session.seeker.c1}"></td>
            <td colspan="3"><input type="text" name="seeker.e1" value="${session.seeker.e1}"></td>
        </tr>
        <!--第三行-->
        <tr>
            <td colspan="2"><input type="text" name="seeker.t2" value="${session.seeker.t2}"></td>
            <td colspan="2"><input type="text" name="seeker.c2" value="${session.seeker.c2}"></td>
            <td colspan="3"><input type="text" name="seeker.e2" value="${session.seeker.e2}"></td>
        </tr>
        <!--第四行-->
        <tr>
            <td colspan="2"><input type="text" name="seeker.t3" value="${session.seeker.t3}"></td>
            <td colspan="2"><input type="text" name="seeker.c3" value="${session.seeker.c3}"></td>
            <td colspan="3"><input type="text" name="seeker.e3" value="${session.seeker.e3}"></td>
        </tr>
        </table>
        <div class="d1"><b>联系方式</b></div>
       <table align="center" class="dtable">
        <tr>
            <td>联系电话</td>
            <td colspan="2"><input type="text" name="seeker.seekertel" value="${session.seeker.seekertel}"></td>
            <td>E-mail</td>
            <td colspan="2"><input type="text" name="seeker.seekeremail" value="${session.seeker.seekeremail}"></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </tr>
       </table>
       <button type="submit" class="dbutton" name="qr" value="aaa">确认编辑</button>
     </s:form>
     <button style="margin-top:-20px;" class="dbutton" onclick="javascript:history.back();" value="返回到上一个页面">返回上一页</button>
	</section>
	<br><br><br><br>
</body>
</html>
