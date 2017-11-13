<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>
<%@ page import="com.clt.mysql.*"%>
<%
	
	String s = (String)session.getAttribute("LOGIN");
	if(!s.equals("Y"))
	{
		out.println("login again please......");
		return;
	}
	OperateMySql om = new OperateMySql();
	String sid = request.getParameter("IID");
	if(sid != null )
	{
		if(sid.length() > 0)
		{
			out.println(sid);
			int i = Integer.parseInt(sid);
			om.DelRemoteReg(i);
		}
	}
	
	SealInfo[] si = om.GetRemoteRegInfo();
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
        <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">管理员管理</div></td>
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
                        <td width="15%" class="td">申请人姓名</td>
                        <td width="15%" class="td">联系方式</td>
                        <td width="15%" class="td">申请时间</td>
                        <td width="15%" class="td">证书颁发者信息</td>
                        <td width="15%" class="td">证书信息</td>
                        <td width="15%" class="td">证书编号</td>
                        <td width="10%" class="td"></td>
                      </tr>
                    </tbody>
                  </table></td>
              </tr>         

<% 
	if(si != null)
	{
	for(int i=0;i<si.length;i++)
	{

			
 %>
              <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='<?=$bg?>'" bgcolor="<?=$bg?>" >
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                      <tr>
                        <td width="15%" class="td"><%=si[i].sealName %></td>
                        <td width="15%" class="td"><%=si[i].sealCltName %></td>
                        <td width="15%" class="td"><%=si[i].sealEndTime %></td>
                        <td width="15%" class="td"><%=si[i].sealSB %></td>
                        <td width="15%" class="td"><%=si[i].sealCN %></td>
                        <td width="15%" class="td"><%=si[i].sealID %></td>
                        <td width="10%" class="td"><input type="button" name="button1" value="处理"  class="btn" onclick="actIt(<%=si[i].sealStatus %>)"><input type="button" name="button2" value="删除"  class="btn" onclick="del(<%=si[i].sealStatus %>)" /></td>
                      </tr>
                    </tbody>
                  </table></td>
              </tr>
              
 <%
 	}
 	}
  %>       
 
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
