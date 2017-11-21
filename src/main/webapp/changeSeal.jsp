<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/css.css" rel="stylesheet" type="text/css" />
<title>印章管理</title>
<style>
body {
	background:#cdedff;
	font-family:"微软雅黑", "宋体", sans-serif;
}
</style>
</head>

<body>
<div class="mian_4">
  <form id="form1" name="form1" method="post" action="changeSeal.jsp">
  <input type="hidden" name="sealID" value=<%=5 %>>
  <input type="hidden" name="myOper">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#666666">
      <tbody>
        <tr>
          <td height="30" background="images/bg_list.gif"><div style="padding-left:10px; font-weight:bold; color:#FFFFFF">印章状态修改</div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
              <tbody>
                <tr>
                  <td height="25">印章编号</td>
                  <td>sealID</td>
                </tr>
                <tr>
                  <td height="13">印章名称</td>
                  <td>sealName %></td>
                </tr>
                <tr>
                  <td height="12">所属科室</td>
                  <td>sealOwner %></td>
                </tr>
                <tr>
                  <td height="12">特征文件名称</td>
                  <td>sealCltName %></td>
                </tr>
                <tr>
                  <td height="12">证书使用者信息</td>
                  <td><sealCN %></td>
                </tr>
                <tr>
                  <td height="12">证书颁发者信息</td>
                  <td>sealSB %></td>
                </tr> 
                <tr>
                  <td height="12">拥有授权</td>
                  <td>sealAuth %></td>
                </tr>  
                <tr>
                  <td height="12">到期时间</td>
                  <td>sealEndTime %></td>
                </tr>    
                <tr>
                  <td height="12">印章状态</td>
                  <td>sStatus %></td>
                </tr>              
                <tr>
                  <td height="25">&nbsp;</td>
                  <td>
                      <input type="button" name="B1" id="button1" value="删除印章" onclick="deleteIt()"/>
                      &nbsp;&nbsp;
                      <input type="button" name="B2" id="button2" value="更改印章状态" onclick="changeIt()"/></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
  </form>
</div>
<script type="text/javascript">
	function changeIt()
	{
		form1.myOper.value="1";
		form1.submit();
	};
	
	function deleteIt()
	{
		form1.myOper.value="2";
		form1.submit();
	};	
</script>
</body>
</html>
