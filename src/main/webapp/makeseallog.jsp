<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%--<%@ page import="com.clt.mysql.*"%>--%>
<%
	
//	String s = (String)session.getAttribute("LOGIN");
//	if(!s.equals("Y"))
//	{
//		out.println("login again please......");
//		return;
//	}
//	OperateMySql om = new OperateMySql();
//	MakeSealLog[] ms = om.GetMakeSealLog("2009-12-31","2017-12-31");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>管理员管理</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>

<body>
<form name="form1" method="post" action="">
<input type="hidden" name="willlChange" >
<div class="mian_4">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
    <tbody>
      <tr>
        <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">印章制作日志</div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
              <tr>
                <td bgcolor="#FFFFFF"></td>
              </tr>
                <tr >
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                      <tr>
                        <td width="15%" class="td">印章ID</td>
                        <td width="15%" class="td">印章名称</td>
                        <td width="15%" class="td">制作时间</td>
                      </tr>
                    </tbody>
                  </table></td>
              </tr>         


              <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='<?=$bg?>'" bgcolor="<?=$bg?>" >
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                      <tr>
                        <td width="15%" class="td"><a href="changeSeal.jsp?sealID=sealID" target="view_frame">sealID</a></td>
                        <td width="15%" class="td">sealName</td>
                        <td width="15%" class="td">beginTime</td>
                      </tr>
                    </tbody>
                  </table></td>
              </tr>

            </tbody>
          </table></td>
      </tr>
    </tbody>
  </table>
</div>
<input type="hidden" name="IID">

 </form>  
 <script type="text/javascript">
	function del(i)
	{
		form1.action = "remoteRegAct.jsp";
		form1.IID.value = i;
		form1.submit();
	};
	
	function actIt(i)
	{
		form1.action = "addRegSeal.jsp";
		form1.IID.value = i;
		form1.submit();		
	};
 </script>
</body>
</html>
