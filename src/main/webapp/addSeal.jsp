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
//	String sSealID = request.getParameter("sealID");
//	if(sSealID != null)
//	{
//		String sealName = request.getParameter("sealName");
//		String certCN  = request.getParameter("certCN");
//		String certIssuer = request.getParameter("certIssuer");
//		String sealPath = request.getParameter("sealPath");
//		String endTime  = request.getParameter("endTime");
//		String sealAuth  = request.getParameter("sealAuth");
//		String keyWords = request.getParameter("keyWords");
//		String cltName = request.getParameter("cltName");
//		String owner = request.getParameter("sealOwner");
//		int i = om.AddSeal(sSealID, sealName, sealAuth, sealPath, endTime, keyWords, certCN, certIssuer,cltName,owner);
//		if(i == 3)
//		{
//			out.println("此证书已经制作过电子印章！");
//		}else
//		{
//			if(i != 0)
//			{
//				out.println("error occured");
//				return;
//			}
//		}
//	}
//	String sServerAuth = om.GetServerAuth();
//	String sUsedAuth = om.GetUsedAuth();
//	if(sServerAuth == null)
//	{
//		out.println("error occured");
//		return;
//	}
//	if(sServerAuth.length() == 0)
//	{
//		out.println("error occured");
//		return;
//	}
	
//	System.out.println("A:" + sServerAuth.length());
//	System.out.println("B:" + sUsedAuth);
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>添加电子印章</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>

<body>
	<object classid="clsid:18926B47-3586-4D9B-8263-95F53C603282" id="ESSSealCenter1" width="1" height="1">
	</object>
<div class="mian_4">
  <form id="form1" name="form1" method="post" action="/seal/addseal">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
      <tbody>
        <tr>
          <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">增加新印章</div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
              <tbody>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td height="25" width="34%">印章编号:</td>
                  <td width="66%"><input name="sealId" type="text" size="30" readonly="readonly"/></td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td width="34%" height="13">印章名称：</td>
                  <td><input name="sealName" type="text" size="30" readonly="readonly" /></td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td width="34%" height="13">印章所属部门：</td>
                  <td><input name="sealOwner" type="text" size="30" readonly="readonly" /></td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                  <td width="34%" height="12">证书信息：</td>
                  <td><input name="certCN" type="text" size="30" readonly="readonly" /></td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25" width="34%">证书颁发者信息</td>
                  <td><input name="certIssuer" type="text" size="30" readonly="readonly" /></td>
                </tr>
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25" width="34%">特征文件名：</td>
                  <td><input name="cltName" type="text" size="30" readonly="readonly" /></td>
                </tr>  
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25" width="34%">特征文件信息：</td>
                  <td><input name="sealPath" type="text" size="30" readonly="readonly" /></td>
                </tr>       
               	<tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25" width="34%">到期时间：</td>
                  <td><input name="endTime" type="text" size="30" readonly="readonly" /></td>
                </tr>        
                 <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td width="34%" height="13">印章授权：</td>
                  <td><input name="sealAuth" type="text" size="30" readonly="readonly" /></td>
                </tr>    
                 <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td width="34%" height="13">印章认证信息：</td>
                <td><input name="keyWords" type="text" size="30" readonly="readonly" /></td>
                </tr>                          
                <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#FFFFFF'" bgcolor="#FFFFFF">
                  <td height="25">&nbsp;</td>
                  <td><input type="submit" name="button" id="button" value="提交数据" /></td>
                </tr>
                <tr>
                <td><h4>使用本功能时，请使用IE浏览器，并安装相关控件</h4></td>
                <td><a href="ActiveX.zip">点击此处下载控件，安装前，请关闭打开的所有IE浏览器</a></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
	<script type="text/javascript">
		function dispM()
		{
			<%--ESSSealCenter1.DisplayMain("<%=sUsedAuth%>","<%=sServerAuth%>");--%>
			<%--if(ESSSealCenter1.CertHash.length > 0)--%>
			<%--{--%>
				<%--form1.sealID.value = ESSSealCenter1.CertHash;--%>
				<%--form1.sealName.value = ESSSealCenter1.SealName;--%>
				<%--form1.certCN.value = ESSSealCenter1.CertCN;--%>
				<%--form1.certIssuer.value = ESSSealCenter1.CertIssuer;--%>
				<%--form1.sealPath.value = ESSSealCenter1.SealPath;--%>
				<%--form1.endTime.value = ESSSealCenter1.SealEndTime;--%>
				<%--form1.sealAuth.value = ESSSealCenter1.SealAuth;--%>
				<%--form1.keyWords.value = ESSSealCenter1.SealKey;--%>
				<%--form1.cltName.value = ESSSealCenter1.CltName;--%>
				<%--form1.sealOwner.value = ESSSealCenter1.SealOwner;--%>
			<%--}else--%>
			<%--{--%>
				<%--alert("请先制作电子印章");--%>
			<%--}--%>
		}
		setTimeout("dispM()",500);
        form1.sealID.value = 123;
        form1.sealName.value = 123;
        form1.certCN.value = 123;
        form1.certIssuer.value = 123;
        form1.sealPath.value = 123;
        form1.endTime.value = 123;
        form1.sealAuth.value = 123;
        form1.keyWords.value = 123;
        form1.cltName.value = 123;
        form1.sealOwner.value = 123;
	</script>
	
</body>
</html>