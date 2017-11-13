
<%@ page contentType="text/html; charset=UTF8" language="java" import="java.util.*,com.jspsmart.upload.*" errorPage="" %>
<%
	SmartUpload su = new SmartUpload();
	su.initialize(pageContext);
	su.upload();
	//下面这句会把客户端上传的所有文件保存到指定的文件夹中，也可以不调用
	//su.save("d://temp");
	// 利用Request对象获取参数之值
	//String sRet = su.getRequest().getParameter("A") + su.getRequest().getParameter("B");
	//System.out.println(sRet);
	
	// 逐一提取上传文件信息，同时可保存文件。
	for (int i=0;i<su.getFiles().getCount();i++)
	{
		com.jspsmart.upload.File file = su.getFiles().getFile(i);
		// 若文件不存在则继续
		if (file.isMissing()) 
			continue;
		else
		{
			//得到客户端传送来的文件的名称
			String s = file.getFileName();
			String sExt = s.substring(s.length()-4);
			if(sExt.equals(".clt"))
			{
				su.save("d:\\ESSSealFile");
			}
			else if(sExt.equals(".dat"))
			{
				su.save("D:\\ESSSignServer\\seals");
			}else
			{
				return;				
			}
		}
	}
	out.print("ESSUPLOADOK");
%>
