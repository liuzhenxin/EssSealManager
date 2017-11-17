<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF8"%>

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
			  <tr onmouseover="style.backgroundColor='#EEEEEE'">
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
					<c:forEach items="${seals}" var="item">
						<tr>
                            <td class="td" width="33%"><a href="">印章名称:${item.sealName}</a></td>
                            <td class="td" width="33%">印章所属部门：${item.sealOwner}</td>
                            <td class="td">印章状态：${item.status}</td>
						</tr>
					</c:forEach>
                    </tbody>
                </table></td>
              </tr>
              <tr onmouseover="style.backgroundColor='#EEEEEE'" onmouseout="style.backgroundColor='#F1F5F8'" bgcolor="#F1F5F8">
                <td colspan="2"><table width="100%" border="0" cellpadding="5" cellspacing="0">
                    <tbody>
                      <tr>
                        <td width="51%" height="25" class="td">&nbsp;</td>
                        <td width="49%" class="td"><span class="page"><a href==sPreHref %>>上一页</a><a href==sNextHref %>>下一页</a></span></td>
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