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
          padding:15px;
        }
        #shuoming{
        text-align:left;
        font-size:18px;
	    color:#555555;
	    padding-left:120px;
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
      <div class="dactive1"><p><a href="<%=basePath%>resume/resume_showlist">简历中心</a></p></div>
      <div><p><a href="<%=basePath%>job/job_fjob">我的发布</a></p></div>
      <div><p><a href="<%=basePath%>resume/application_showlist">我的申请</a></p></div>
      <div><p><a href="<%=basePath%>updatemima.jsp">修改密码</a></p></div>
    </aside>
	<section id="dsection">    
	  <div id="dtitle">
	  <span id="dtitle_1"><b>简历中心</b></span>
	  <span id="dtitle_2"><a href="<%=basePath%>addjl.jsp"><b>添加简历</b></a></span>
	  </div>
	 <s:form action="work/jl_showlist" method="post">
    	<table  class="dtable">
    	   <tr id="ti">
    	      <td>简历名称</td>
    	      <td>操作</td>
    	   </tr>
	       <s:iterator value="resumeList" status="status">
	       <tr id="con">
	         <td>简历<s:property value="#status.index+1"></s:property></td>
	         <td><s:a href="resume_showdetail?resume.resumeid=%{resumeid}">详情</s:a> &nbsp;| &nbsp;
	         <s:a href="resume_delete?resume.resumeid=%{resumeid}" onClick="return confirm('确定要删除吗?');">删除</s:a>&nbsp;| &nbsp;
             <s:a href="resume_showEdit?resume.resumeid=%{resumeid}">编辑</s:a></td>
	       </tr>
	       </s:iterator>
	    </table>
    </s:form>
    <div id="shuoming"><br>
    <b>填写简历说明：</b><br>简历个人信息部分是由您填写的个人信息生成，
    此部分在此简历页面不可修改，填写简历时也无需再次<br>填写。
    若您需要修改这部分信息，请在个人信息修改页面进行修改。
    <br><br><br>
    </div>
	</section>
	<br><br><br><br>
</body>
</html>
