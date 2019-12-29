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
<base href="<%=basePath%>">
     <style type="text/css">
     #daddjl td{
     font-size:18px;
     color:555555;
     }
     .t1{
     font-size:18px;
     color:555555;
     }
       textarea{
       font-size:18px;
       width:90%;
       height:10%;
       }
       #wodejianli{
       margin-top:40px;
       text-align:center;
       }
       input{
       width:160px;
       height:30px;
       font-size:18px;
       color:555555;
       text-align:center;
       border:2px solid #AFAFAF;
       }
       table{
       text-align:center;
       width:900px;
       }
    </style>
    <title>个人简历</title>
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
    <div id="daddjl" >
       <br><div><h1 id="wodejianli">我的简历</h1></div>
       <p align="center" class="t1"><strong>个人信息</strong></p>
       <table align="center">
        <tr>
            <td>姓名</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekername}" readonly></td>
            <td>性别</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekergender}" readonly></td>
            <td>出生年月</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekerbirth}" readonly></td>
         </tr>
        <tr>
            <td>民族</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekernation}" readonly></td>
            <td>政治面貌</td>
            <td><input type="text" name="" value="${resumeku.seeker.politicstatus}" readonly></td>
            <td>毕业学校</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekerschool}" readonly></td>
        </tr>
        <tr>
            <td>专业</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekermajor}" readonly></td>
            <td>学历</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekerdegree}" readonly></td>
            <td>户籍</td>
            <td><input type="text" name="" value="${resumeku.seeker.seekeraddress}" readonly></td>
        </tr>
       </table>
       <div class="t1" align="center"><p><strong>教育经历</strong> ( 请根据自身教育情况从高到低填写 ) </p></div>
       <table align="center">
        <tr>
            <td colspan="2">时间</td>
            <td colspan="2">单位</td>
            <td colspan="3">经历</td>
        </tr>
        <tr>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.t1}" readonly></td>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.c1}" readonly></td>
            <td colspan="3"><input type="text" name="" value="${resumeku.seeker.e1}" readonly></td>
        </tr>
        <tr>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.t2}" readonly></td>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.c2}" readonly></td>
            <td colspan="3"><input type="text" name="" value="${resumeku.seeker.e2}" readonly></td>
        </tr>
        <tr>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.t3}" readonly></td>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.c3}" readonly></td>
            <td colspan="3"><input type="text" name="" value="${resumeku.seeker.e3}" readonly></td>
        </tr>
        <tr>
            <td colspan="7" ><b>联系方式</b></td>
        </tr>
        <tr>
            <td>联系电话</td>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.seekertel}" readonly></td>
            <td>E-mail</td>
            <td colspan="2"><input type="text" name="" value="${resumeku.seeker.seekeremail}" readonly></td>
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
       <table align="center">
        <tr>
            <td colspan="7"><b>工作经历</b></td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="90%" rows="7" name="resumeku.sexpe"><s:property value="resumeku.sexpe"/></textarea></td>
        </tr>
        <tr>
            <td colspan="7"><b>科研成果</b></td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="90%" rows="7" name="resumeku.sresearch"><s:property value="resumeku.sresearch"/></textarea></td>
        </tr>
        <tr>
            <td colspan="7" ><b>个人能力（技能、特长或爱好）</b> </td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="90%" rows="7" name="resumeku.sability"><s:property value="resumeku.sability"/></textarea></td>
        </tr>
        <tr>
            <td colspan="7"><b>所获荣誉及奖项</b></td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="90%" rows="7" name="resumeku.shonor"><s:property value="resumeku.shonor"/></textarea></td>
        </tr>
        <tr>
            <td colspan="7"><b>自我评价</b></td>
        </tr>
        <tr>
            <td colspan="7" ><textarea cols="90%" rows="7" name="resumeku.sevaluate"><s:property value="resumeku.sevaluate"/></textarea></td>
        </tr>
       </table>
       <center style="margin: auto;"><button class="dbutton" onclick="javascript:history.back();" value="返回到上一个页面">返回上一页</button></center>   
     <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  
     </div> 
</body>
</html>