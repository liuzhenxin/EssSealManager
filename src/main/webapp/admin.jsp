<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
    <script type="javascript" src="js/jquery-3.2.1.min.js">

    </script>
<title>管理员管理</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>
<body>
<form name="form1" id="form1" method="post" action="changeAdminStatus">
<input type="hidden" id="willChange" name="willChange" >
<div class="mian_4">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
    <tbody>
      <tr>
        <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">管理员管理</div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
              <tr>
                <td bgcolor="#FFFFFF"></td>
              </tr>
              <tr  bgcolor="<?=$bg?>" >
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                    <c:forEach items="${admins}" var="item">
                        <tr>
                            <td width="20%" class="td">登录名：${item.userId}</td>
                            <td width="20%" height="25" class="td">姓名:${item.userName}</td>
                            <td width="25%" class="td">状态：${item.userStatus}</td>
                            <td width="17%" class="td">
                                <input type="button" name="button" value="更改"  onclick="chageIt('${item.userId}')"  class="btn">
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                  </table></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
</div>
 </form>  
 <script type="text/javascript">
 	function chageIt(uid){
        var form = document.getElementById("form1");
        document.getElementById("willChange").value=uid;
        form.submit();

    };
 </script>
</body>
</html>
