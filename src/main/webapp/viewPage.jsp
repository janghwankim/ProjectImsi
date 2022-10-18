<%@page contentType="text/html; charset=EUC-KR" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.*,java.io.*"%>
<%
    //String saveFolder = "���ϰ��";
    String saveFolder = application.getRealPath("/fileFolder") ;
    String encType = "EUC-KR";
    int maxSize = 5 * 1024 * 1024;
    try {
        MultipartRequest multi = null;
        multi = new MultipartRequest(request, saveFolder, maxSize,
                encType, new DefaultFileRenamePolicy());
        String user = multi.getParameter("user");
        String title = multi.getParameter("title");
        
        out.println("user: " + user + "<br/>");
        out.println("title: " + title + "<br/>");
        out.println("<hr>");
        
        String fileName = multi.getFilesystemName("uploadFile");
        String original = multi.getOriginalFileName("uploadFile");
        String type = multi.getContentType("uploadFile");
        File f = multi.getFile("uploadFile");
        
        out.println("����� ���� �̸� : " + fileName + "<br/>");
        out.println("���� ���� �̸� : " + original + "<br/>");
        out.println("���� Ÿ�� : " + type + "<br/>");
        if (f != null) {
            out.println("ũ�� : " + f.length()+"����Ʈ");
            out.println("<br/>");
        }
    } catch (IOException ioe) {
        System.out.println(ioe);
    } catch (Exception ex) {
        System.out.println(ex);
    }
%>