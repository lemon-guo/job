<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
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
         
        #registerDiv {
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
        #p1{
        font-size:20px;
        color:#fff;
        position:absolute;
        top:44%;
        left:38%;
        }
        #p2{
        font-size:20px;
        color:#fff;
        position:absolute;
        top:48.5%;
        left:38%;
        }
        #p3{
        font-size:20px;
        color:#fff;
        position:absolute;
        top:53%;
        left:38%;
        }
        #userNname{
            margin-left: 15px;
            margin-top: 10px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }
       #password1{
            margin-left: 15px;
            margin-top: 10px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }
        #password2{
            margin-left: 15px;
            margin-top: 10px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }
        #email{
            margin-left: 15px;
            margin-top: 10px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
        }
        #tel{
            margin-left: 15px;
            margin-top: 10px;
            border-radius: 5px;
            border-style: hidden;
            height: 30px;
            width: 140px;
            background-color: rgba(216, 191, 216, 0.5);
            outline: none;
            color: #f0edf3;
            padding-left: 10px;
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
            top:59%;
            left:47.5%;
        }
        #con{
        text-align: center;margin-top: 0px;
        }
        #h1{
        text-align: center;color: aliceblue;margin-top:-30%;margin-left:15%;
        }
        #href{
        position:absolute;left:63%;top:60%;
        text-decoration:none;
        }
    </style>

  </head>
  
  <body>
  <div  id="registerDiv" align="center">
  <s:form action="seeker/seeker_reg" method="post" id="form">
     <div id="con">  
      <h1 id="h1">注册<br></h1>     
       <span id="p1">用户名:</span><s:textfield id="userNname" class="in" name="seeker.nickname"></s:textfield>   
       <span id="p2">密&nbsp;码:</span><s:password id="password1" class="in" name="seeker.seekerpassword"></s:password>
       <span id="p3">确认密码:</span><s:password id="password2" class="in" name=""></s:password>
       <p id="p3"><s:submit id="button1" value="注册"></s:submit>
       </div>
     </s:form>
 <a id="href" href="<%=basePath%>index.jsp">去登录</a>     
</div>
  </body>
</html>
    	

