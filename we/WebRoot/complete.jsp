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
<style>
     #section{
     text-align:center;
     width:60%;
     margin:auto;
     }
     input{
     font-size:18px;
     width:200px;
     height:40px;
     border:2px solid #AFAFAF;
     }
     td{
     text-align:center;
     }
     #select{
     font-size:18px;
     width:200px;
     height:40px;
     border:2px solid #AFAFAF;
     }
     #select option{
     font-size:18px;
     width:200px;
     height:40px;
     border:2px solid #AFAFAF;
     } 
     .bg{
     background-image:url(<%=basePath%>images/10.jpg);
     background-size:1100px 800px;
     background-repeat:no-repeat;
     margin-left:250px;
     }
    </style>
<title>完善个人信息</title>
	<link rel="stylesheet" href="<%=basePath%>css/style.css" type="text/css"></link>
</head>
<body>
<header style="border-bottom:1px solid #AFAFAF;">
		<nav>
			<ul>
				<li class="banner">职属于你 </li>
			</ul>
		</nav>
	</header>
<div class="bg">
	<section style="margin-left:130px;" align="center" id="section">    
	  <div id="dtitle" style="padding-top:50px; padding-left:">
	    <span id="dtitle_1"><b>请完善个人信息</b></span>
	  </div>
	 <s:form action="seeker_editSeeker1" enctype="multipart/form-data" method="post">
	 <input type="hidden" value="${session.seeker.seekerid}" name="seeker.seekerid"/>
	 <input type="hidden" value="${session.seeker.nickname}" name="seeker.nickname"/>
	 <input type="hidden" value="${session.seeker.seekerpassword}" name="seeker.seekerpassword"/>
       <div class="d1"><b>个人信息</b></div><br>
        <table align="center">
        <tr>
            <td>姓名</td>
            <td><input  required="true" type="text" name="seeker.seekername" value="${session.seeker.seekername}"></td>
            <td>性别</td>
            <td><select id="select" name="seeker.seekergender">    
            <option value="m">男</option>    
            <option value="f">女</option>       
            </select>
            </td>
            <td>出生年月</td>
            <td><input required="true" type="text" name="seeker.seekerbirth" value="${session.seeker.seekerbirth}"></td>
        </tr>
        <tr>
            <td>民族</td>
            <td><input required="true" type="text" name="seeker.seekernation" value="${session.seeker.seekernation}"></td>
            <td>政治面貌</td>
            <td><input required="true" type="text" name="seeker.politicstatus" value="${session.seeker.politicstatus}"></td>
            <td>毕业学校</td>
            <td><input required="true" type="text" name="seeker.seekerschool" value="${session.seeker.seekerschool}"></td>
        </tr>
        <tr>
            <td>专业</td>
            <td><input required="true" type="text" name="seeker.seekermajor" value="${session.seeker.seekermajor}"></td>
            <td>学历</td>
            <td><input required="true" type="text" name="seeker.seekerdegree" value="${session.seeker.seekerdegree}"></td>
            <td>户籍</td>
            <td><input required="true" type="text" name="seeker.seekeraddress" value="${session.seeker.seekeraddress}"></td>
        </tr>
       </table>
       <div class="d1"><b>受教育经历</b>( 请根据自身教育情况从高到低填写 )</div>
       <table align="center" class="dtable">
        <tr>
            <td colspan="2">时间</td>
            <td colspan="2">单位</td>
            <td colspan="3">经历</td>
        </tr>
        <tr>
            <td colspan="2"><input required="true" type="text" placeholder="格式：2017-09~2021-06" name="seeker.t1"  value="${session.seeker.t1}" ></td>
            <td colspan="2"><input required="true" type="text"  name="seeker.c1" value="${session.seeker.c1}"></td>
            <td colspan="3"><input required="true" type="text"  name="seeker.e1"  value="${session.seeker.e1}"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="text" name="seeker.t2" value="${session.seeker.t2}"></td>
            <td colspan="2"><input type="text" name="seeker.c2" value="${session.seeker.c2}"></td>
            <td colspan="3"><input type="text" name="seeker.e2" value="${session.seeker.e2}"></td>
        </tr>
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
            <td colspan="2"><input required="true" type="text" name="seeker.seekertel" value="${session.seeker.seekertel}"></td>
            <td>E-mail</td>
            <td colspan="2"><input required="true" type="text" name="seeker.seekeremail" value="${session.seeker.seekeremail}"></td>
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
       <button type="submit" class="dbutton" name="qr" value="aaa">确认</button>
     </s:form>
     <button style="margin-top:0px;" class="dbutton" onclick="javascript:history.back();" value="返回到上一个页面">返回上一页</button>
	</section>
</div>
</body>
</html>
