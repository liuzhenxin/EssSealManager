<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%@ page import="com.clt.mysql.*"%>
<%@ page import="java.net.URLEncoder"%>
<%
	String s = (String)session.getAttribute("LOGIN");
	if(!s.equals("Y"))
	{
		out.println("login again please......");
		return;
	}
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
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
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
    <tbody>
      <tr>
        <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">印章查询结果</div></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
            <tbody>
              <tr>
                <td bgcolor="#FFFFFF"></td>
              </tr>
<% 
	String sealName = request.getParameter("sealname");
	if(sealName == null)
		sealName = "";
	else
	{
		sealName = new String(sealName.getBytes("ISO8859-1"),"UTF8");
//		System.out.println(sealName);
	}
	s = request.getParameter("iB");
	int iB = 0;
	if(s != null)
		iB = Integer.parseInt(s);
	s = request.getParameter("iE");
	int iE = 20;
	if(s != null)
		iE = Integer.parseInt(s);
	
	OperateMySql om = new OperateMySql();
	SealInfo[] seals = om.FindSeal(sealName, iB, iE);
	boolean blOver = false;
	for(int i=0;i<20;i++)
	{
		if(seals[i].sealID.length() == 0)
		{
			blOver = true;
			break;
		}
		String sStatus = "有效";
		if(seals[i].sealStatus == 0)
			sStatus = "无效";

		
		String sID = seals[i].sealID;
		sID = URLEncoder.encode(sID,"UTF-8");
		String sRef = "changeSeal.jsp?sealID=" + sID; 	

%>
              <tr onmouseover="style.backgroundColor='#EEEEEE'">
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                      <tr>
                        <td class="td" width="33%"><a href=<%=sRef %>>印章名称:<%=seals[i].sealName %></a></td>            
                        <td class="td" width="33%">印章所属部门：<%=seals[i].sealOwner %></td>
                        <td class="td">印章状态：<%=sStatus %></td>
                      </tr>
                    </tbody>
                </table></td>
              </tr>
<%
	}
	String sPreHref = "#";
	String sNextHref = "#";
	if(blOver == false)
	{
		iB = iB + 20;
		iE = iE + 20;
		sNextHref = "sealList.jsp?sealname=" + sealName + "&iB=" + Integer.toString(iB) + "&iE=" + Integer.toString(iE);		
	}
	if(iB > 20)
	{
		iB = iB - 20;
		iE = iE - 20;
		sPreHref = "sealList.jsp?sealname=" + sealName + "&iB=" + Integer.toString(iB) + "&iE=" + Integer.toString(iE);		
	}
	
 %>


              <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                      <tr>
                        <td width="51%" height="25" class="td">&nbsp;</td>
                        <td width="49%" class="td"><span class="page"><a href=<%=sPreHref %>>上一页</a><a href=<%=sNextHref %>>下一页</a></span></td>
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
</body>
</html>