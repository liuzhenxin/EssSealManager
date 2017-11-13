<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%@ page import="com.clt.mysql.*"%>
<%
	String sCertHash = request.getParameter("CERTHASH");
	String sCertIssuer = "";
	String sCertCN = "";
	boolean bl1 = false;
	boolean bl2 = false;
	if(sCertHash != null)
	{
		bl1 = true;
		sCertIssuer = request.getParameter("CERTSUBJECT");
		sCertCN = request.getParameter("CERTCN");
		String sName = request.getParameter("SNAME");
		String sPhone = request.getParameter("SPHONE");
		String sOwner = request.getParameter("SOWNER");
		OperateMySql om = new OperateMySql();
		bl2 = om.AddRemoteReg(sCertHash, sCertCN, sCertIssuer, sName, sPhone, sOwner);
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>印章制作申请</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>

<body>
<%
	if(bl1)
	{
		if(bl2)
		{
%>
<h3>您的申请已经成功提交，请联系印章管理人员进行后续操作</h3>
<h3>若要继续申请其他电子印章，请插入其他USB KEY</h3>
<%
		}else
		{
%>
<h3>申请提交失败，请联系管理人员！</h3>
<%
		}
	}
 %>
	<object classid="clsid:18926B47-3586-4D9B-8263-95F53C603282" id="ESSSealCenter1" width="1" height="1">
	</object>
<div class="mian_4">
  <form id="form1" name="form1" method="post" action="remoteReg.jsp">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
      <tbody>
        <tr>
          <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">制作印章申请,请使用IE浏览器访问本页面</div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
              <tbody>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td height="25" width="34%">申请人姓名：</td>
                  <td width="66%"><input name="SNAME" type="text" size="50" />
                    &nbsp;</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td width="34%" height="13">申请人联系方式：</td>
                  <td><input name="SPHONE" type="text" size="50"  />
                    &nbsp;</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td width="34%" height="12">印章所属部门：</td>
                  <td><input name="SOWNER" type="text" size="50" />
                    &nbsp;</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td width="34%" height="12">证书编号：</td>
                  <td><input name="CERTHASH" type="text" size="50" readonly /><input type="button" name="B1" value="获取证书" onclick="GetCert()" />
                    &nbsp;</td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td width="34%" height="12"></td>
                  <td><input type="button" name="B1" value="提交" onclick="addReg()" />
                    &nbsp;</td>
                </tr>
                <tr>
                <td></td>
                <td><a href="ActiveX.zip">请点击此链接下载控件。安装前请关闭打开的所有IE浏览器</a></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
    <input type="hidden" name="CERTCN" />
    <input type="hidden" name="CERTSUBJECT" />
  </form>
</div>

<script type="text/javascript">
	function GetCert()
	{
		if(ESSSealCenter1.GetCert("") == "Y")
		{
			form1.CERTHASH.value= ESSSealCenter1.CertHash;
			form1.CERTCN.value = ESSSealCenter1.CertCN;
			form1.CERTSUBJECT.value = ESSSealCenter1.CertIssuer;
		}
	}
	function addReg()
	{
		if(form1.SNAME.value == "")
		{
			alert("请填写完整信息！");
			return;
		}
		if(form1.SPHONE.value == "")
		{
			alert("请填写完整信息！");
			return;
		}
		if(form1.SOWNER.value == "")
		{
			alert("请填写完整信息！");
			return;
		}
		if(form1.CERTHASH.value == "")
		{
			alert("请填写完整信息！");
			return;
		}
		form1.submit();
	};
</script>




</body>
</html>
