<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>job main page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel=“stylesheet” href="<%=basePath%>css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" href="<%=basePath%>css/style.css">
	
  </head>
  
  <body>
   <header>
  <nav>
   <ul>
    <li class="banner">职属于你</li>
    <li><a href="index.jsp">首页</a></li>
	<li  class="active"><a href="<%=basePath%>job/job_showJob">职位搜索</a></li>
	<li><a href="<%=basePath%>job_publish.jsp">发布招聘</a></li>
	<li><a href="<%=basePath%>news/news_showNews">职场经验</a></li>
	<li><a href="<%=basePath%>fabunews.jsp">经验分享</a></li>
	<li><a href="<%=basePath%>my.jsp">个人中心</a></li>
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
    
    <main class="container-fluid">
      <div class="row">
         <div class="col-md-12">
		    <s:form action="job/job_queryJobs" method="post">
		    <table rules=cols>
		    <tr>
				<td>工作地点：<s:select name="keyAddress" list="#{'beijing':'北京','1':'上海','2':'广州','3':'深圳','4':'成都','5':'重庆','6':'杭州','7':'武汉','8':'苏州','9':'天津','10':'南京','11':'长沙','12':'郑州','13':'东莞','14':'青岛','15':'长沙','16':'沈阳','17':'宁波','18':'昆明','19':'大连','20':'厦门','21':'合肥','22':'哈尔滨','23':'南宁','24':'石家庄','25':'贵阳','26':'珠海','27':'兰州','28':'太原','29':'海口','30':'其他'}" label="工作地点" headerKey="" headerValue="请选择工作地" theme="simple"></s:select></td>
	            <td>单位名称：<input title="单位名称" name="keyCompany" placeholder="请输入单位名称"></td>
	            <td>行业：<s:select name="keySort" list="#{'computer':'计算机','1':'互联网','2':'通信','3':'电子','4':'会计','5':'金融','6':'银行','7':'保险','8':'贸易','9':'消费','10':'制造','11':'营运','12':'制药','13':'医疗','14':'广告','15':'媒体','16':'房地产','17':'建筑','18':'教育','19':'培训','20':'服务业','21':'物流','22':'运输','23':'能源','24':'材料','25':'政府','26':'非营利组织','27':'其他'}" label="行业名称" headerKey="" headerValue="请选择行业" theme="simple"></s:select></td>
			</tr>
			<tr>
				<td>职业名称：<input title="职业名称" name="keyJob" placeholder="请输入职业名称"></td>
				<td>月薪：<input type="number" title="最低" name="keySalarys"  value="0">-<input type="number" title="最高" name="keySalaryb" value="100000"></td>
			    <td><button type="submit" class="dbutton">搜  索</button></td>
			</tr>
		</table>
		<br>
		      <div class="panel panel-info">
	                 <div class="panel-body panel-body-table">
	                   <div class="table-responsive" style="overflow-x:hidden">
	                      <table class="table table-striped table-bordered table-hover" id="dataTables-example" rules=rows>
	                         <thead>
	                           <tr>
	                              <th>序号</th>  
							      <th>职位名称</th>
    							  <th>月薪</th>
    							  <th>公司名称</th>
        						  <th>公司地址</th>
        						  <th>发布日期</th>
        						  <th>申请</th>
	                              </tr>
	                          </thead>
	                          <tbody>
	                              <s:iterator value="jobList" status="status">
	                                  <tr>
	                                      <td><s:property value="#status.index+1"></s:property></td>
	                                      <td><s:a href="job/job_showJobDetail?job.jobid=%{jobid}">
		                                  <s:property value="jobname"></s:property></s:a></td>
	                                      <td><s:property value="salary"/></td>
	    								  <td><s:property value="companyname"/></td>
	    								  <td><s:property value="companyaddress"/></td>
	    								  <td><s:property value="publishtime"/></td>
	    								  <td><s:a href="resume/resume_kanResume?keyjobid=%{jobid}">申请</s:a></td>
	                                  </tr>
	                              </s:iterator>
	                          </tbody>
	                        </table>
	                      </div>
	                    </div>
	                </div>
		       </s:form>
	       </div>
	   </div>
	</main>
	<footer>
   <br>
    <table align="center">
     <tr>
      <td>联系方式：0875-7417415</td>
      <td>邮箱：986656564@qq.com</td>
     </tr>
     <tr>
      <td>地址：北京市海淀区中关村南大街27号中央民族大学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td>传真：028-62322623-823</td>
     </tr>
    </table>
   Copyright &copy; 2019 zhishuyuni All rights reserved.
 </footer>
	<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>
    <script src="<%=basePath%>js/bootstrap.min.js"></script>
    <script src="<%=basePath%>js/jquery.dataTables.js"></script>
    <script src="<%=basePath%>js/dataTables.bootstrap.js"></script>
    <script>
       $(document).ready(function () {
           $('#dataTables-example').dataTable({
           "sDom": "<t<'span12 center'p>>",
			   "language": {
                 "lengthMenu": "每页 _MENU_ 条记录",
                 "zeroRecords": "没有找到记录",
                 "info":"第 _PAGE_ 页 ( 共 _PAGES_ 页 )",
                 "infoEmpty": "无记录",
                 "infoFiltered": "(从 _MAX_ 条记录过滤)",
				 "sInfoPostFix": "",
				 "sSearch": "搜索",
				 "sUrl": "",
				 "sEmptyTable": "表中数据为空",
				 "sLoadingRecords": "载入中...",
				 "sInfoThousands": ",",
				 "oPaginate": {
					"sFirst": "首页",
					"sPrevious": "上页",
					"sNext": "下页",
					"sLast": "末页"
				 },
				 "oAria": {
				 "sSortAscending": ": 以升序排列此列",
				 "sSortDescending": ": 以降序排列此列"
			     },
             }
		   });
       });
    </script>
  </body>
</html>
