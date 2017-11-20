<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>首页</title>
<style>
* { margin:0px; padding:0px; border:0px;}
body {background:#cdedff;}
</style>
</head>

<body>
<div class="main_1">
  <div class="main_1_left"><img src="images/1.jpg"></div>
  <div class="mian_1_middle"></div>
  <div class="mian_1_right"></div>
</div>
<div class="mian_2">
  <div class="mian">
    <div class="main_left"></div>
    <div class="main_middle">
      <div class="title">
        <div class="title_1"><img src="images/title_1.jpg"></div>
        <div class="title_2"></div>
      </div>
      <iframe src="notice.html" frameborder="0" border="0" height="227" width="100%"><!--官方通知公告调用的网络路径-->
        密宝认证系统使用了框架技术，但是您的浏览器不支持框架，请升级您的浏览器以便正常使用。
      </iframe>
    </div>
    <div class="main_right"></div>
  </div>
  <div class="mian">
    <div class="main_left"></div>
    <div class="main_middle">
      <div class="title">
        <div class="title_1"><img src="images/xtgx.jpg"></div>
        <div class="title_2"></div>
      </div>
      <iframe src="update.jsp" frameborder="0" border="0" height="227" width="100%"><!--系统更新调用的网络路径-->
        密宝认证系统使用了框架技术，但是您的浏览器不支持框架，请升级您的浏览器以便正常使用。
      </iframe>
    </div>
    <div class="main_right"></div>
  </div>
  <div class="mian">
    <div class="main_left"></div>
    <div class="main_middle">
      <div class="title">
        <div class="title_1"><img src="images/user.jpg"></div>
        <div class="title_2"></div>
      </div>
      <div>
        <div class="user_pic"><img src="images/user_pic.jpg"></div>
        <ul class="user_info">
        <%--<% for(int i=0;i<ad.length;i++)--%>
        <%--{--%>
        	<%--if(ad[i].iStatus == 1)--%>
        	<%--{--%>
         <%--%>--%>
          <li>湿答答</li>
          <%--<%--%>
          	<%--}--%>
         <%--}--%>
           <%--%>--%>
        </ul>
      </div>
    </div>
    <div class="main_right"></div>
  </div>
  <div class="mian">
    <div class="main_left"></div>
    <div class="main_middle">
      <div class="title">
        <div class="title_1"><img src="images/xtxx.jpg"></div>
        <div class="title_2"></div>
      </div>
      <ul class="phpinfo">
        <%--<li>系统名称：<%=si.s1 %></li>--%>
        <%--<li>版本号：<%=si.s2 %></li>--%>
        <%--<li>部署时间：<%=si.s3 %></li>--%>
        <%--<li>授权产品总数：<%=si.s4 %> </li>--%>
        <%--<li>已授权产品数量：<%=sAllAuth %></li>--%>
        <%--<li>本次授权到期时间：<%=si.s5 %></li>--%>
        <%--<li>下次维护时间：<%=si.s6 %></li>--%>
        <%--<li>数据库备份位置：<%=si.s7 %></li>--%>
        <%--<li>特征文件存放位置：<%=si.s8 %></li>--%>
      </ul>
    </div>
    <div class="main_right"></div>
  </div>
</div>
<div class="main_3"></div>
</body>
</html>
