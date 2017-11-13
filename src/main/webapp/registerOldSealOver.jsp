<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.clt.mysql.*"%>
<%

	String imgID = request.getParameter("imgID");
	String imgData = request.getParameter("imgData");
	String sEnc = request.getParameter("signData");
	
	if(imgID == null)
	{
		out.println("出错啦！");
		return;
	}
	if(imgID.isEmpty())
	{
		out.println("请先签章");
		return;		
	}
	OperateMySql om = new OperateMySql();
	int i = om.registerOldSeal(imgID, imgData, sEnc);
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>现有签章收集</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
  	if( i == 0)
  	{
   %>
   <h2>操作成功</h2>
   <%
   }
   	else
   	{
    %>
    <h2>操作失败，请联系管理员或稍候进行操作！</h2>
    <%
    }
     %>
  </body>
</html>
