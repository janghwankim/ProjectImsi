<%-- <%@page import="org.jcp.xml.dsig.internal.dom.DOMUtils"%> --%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@�page language="java"�contentType="text/html;�charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String path=request.getRealPath("fileFolder");
	
	int size=1024*1024*10;
	String file="";
	String oriFile="";
	
	try{
		MultipartRequest multi=new MultipartRequest(request,path,size,"EUC-KR",new DefaultFileRenamePolicy());
		
		Enumeration files=multi.getFileNames();
		String str=(String)files.nextElement();
		
		file=multi.getFilesystemName(str);
		oriFile=multi.getOriginalFileName(str);
	} catch(Exception e){
		e.printStackTrace();
	}

%>
�
<!DOCTYPE�html>
<html>
<head>
<meta�http-equiv="Content-Type"�content="text/html;�charset=EUC-KR">
<title>Insert�title�here</title>
</head>
<body>
����file�Upload�Success.
</body>
</html>