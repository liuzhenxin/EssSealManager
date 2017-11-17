<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%
//	String s = (String)session.getAttribute("LOGIN");
//	if(!s.equals("Y"))
//	{
//		out.println("login again please......");
//		return;
//	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
  <script type="javascript" src="js/jquery-3.2.1.min.js">

  </script>
<title>印章查询</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>
<body>
<div class="mian_4">
  <form id="form1" name="form1" method="post" action="/seal/sealList">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
      <tbody>
        <tr>
          <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">印章查询</div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
              <tbody>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td height="25" width="34%">印章名称</td>
                  <td width="66%"><input name="sealName" type="text" size="30" />
                    &nbsp;</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25">&nbsp;</td>
                  <td><input type="submit" name="button" id="button" value="查询"  /></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
<script language="javascript">
	function mySub()
	{
//		if(form1.sealName.value == "")
//		{
//			if(confirm("未输入印章名称，将查询所有印章，是否继续？"))
//			{
//				form1.submit();
//			}
//		}else
//		{
//			form1.submit();
//		}

	}
</script>
</body>
</html>