<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>添加管理员</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>

<body>
<div class="mian_4">
  <form id="form1" name="form1" method="post" action="admin_add">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
      <tbody>
        <tr>
          <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">增加管理员</div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
              <tbody>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td height="25" width="34%">管理员帐号</td>
                  <td width="66%"><input name="userId" type="text" size="30" />
                    &nbsp;* (请勿使用中文!)</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td width="34%" height="13">登陆密码</td>
                  <td><input name="userPwd" type="password" size="30" />
                    &nbsp;*</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td width="34%" height="12">确认密码</td>
                  <td><input name="userPwdRe" type="password" size="30" />
                    &nbsp;*</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25" width="34%">真实姓名</td>
                  <td><input name="userName" type="text" size="30" value=""/>
                  &nbsp;</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25">&nbsp;</td>
                  <td><input type="submit" name="button" id="button" value="提交数据" /></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
<script type="text/javascript">
//	function addUser()
//	{
//		if(form1.userPwd.value != form1.userPwdRe.value)
//		{
//			alert("两次输入的密码不同");
//			return;
//		}
//		form1.submit();
//	};
</script>
</body>
</html>
