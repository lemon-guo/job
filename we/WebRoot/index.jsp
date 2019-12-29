<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style>
        * {
            margin: 0;
            padding: 0;
        }
         
        html {
            height: 100%;
            width: 100%;
            overflow: hidden;
            margin: 0;
            padding: 0;
            background: url(images/login.jpg) no-repeat 0px 0px;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            -moz-background-size: 100% 100%;
        }
         
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
        }
        #form{
        margin-top:0%;
        }
        #loginDiv {
            width: 37%;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 300px;
            background-color: rgba(75, 81, 95, 0.3);
            box-shadow: 7px 7px 17px rgba(52, 56, 66, 0.5);
            border-radius: 5px;
        }
         
        #name_trip {
            margin-left: 50px;
            color: red;
        }
         
        p {
           position:absolute;
           left:42%;
            margin-top: 30px;
            margin-left: -50px;
            color: azure;
        }
        #p1{
        position:absolute;
        top:41%;
        font-size:20px;
        }
        #p2{
        position:absolute;
        top:49%;
        font-size:20px;
        }
        #password {
            margin-left: 15px;
            margin-top: 25px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
            font-size:20px;
        }
        #userNname{
        margin-left: 15px;
         margin-top: 35px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
            font-size:20px;
        }
        #button1 {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237,0.7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 5px;
            width: 100px;
            height: 31px;
            font-size: 16px;
            position:absolute;
            top:60%;
            left:43%;
        }
        #button2 {
            border-color: cornsilk;
            background-color: rgba(100, 149, 237,0.7);
            color: aliceblue;
            border-style: hidden;
            border-radius: 5px;
            width: 100px;
            height: 31px;
            font-size: 16px;
            position:absolute;
            top:60%;
            left:52%;
        }
        #dbutton{
        margin-button:-50%;
        }
        #h1{
        text-align: center;
        color: aliceblue;
        margin-top:-50%;
        margin-left:15%;
        }
        #con{
        margin-top: -50%;
        }
        #href{
        position:absolute;left:63%;top:61%;
        text-decoration:none;
        }
    </style>
    
  </head>
  
  <body>
  <div id="loginDiv" align="center">
  <s:form action="seeker/seeker_login" method="post" id="form"> 
      <div id="con">
      <h1 id="h1">登  录<br></h1>   
       <p id="p1">用户名:<s:textfield id="userNname" name="seeker.nickname"><label id="name_trip"></label></s:textfield>   
       <p id="p2">密&nbsp;码:<s:password id="password" name="seeker.seekerpassword"><label id="password_trip"></label></s:password>   
     </div>
      <div id="dbutton">
          <input type="submit" id="button1" value="登 录">
          <input type="reset" id="button2" value="重 置">
      </div>
  </s:form>
  <a id="href" href="<%=basePath%>reg.jsp">去注册</a>
  </div>
  </body>
</html>
 
