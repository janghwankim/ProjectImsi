<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
String id= request.getAttribute("id").toString();
System.out.println("id======"+id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="css/register.css" type="text/css" />

<title>로그인 성공</title>
</head>
<body>
<b><%=id%></b>님 환영합니다.<p>
<button class="btn btn-info btn-sm" type="submit" onclick="location.href='/Project/main.jsp?id=<%=id%>'">메인으로</button>
<script>
	
  document.addEventListener("DOMContentLoaded", function(){
	  alert('로그인에 성공하였습니다.')
	 });</script>
</body>
</html>