<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<c:if test="${check==1}">
<meta http-equiv="Refresh"
			content="0;url=/Project/mate_list.do?pageNum=${pageNum}">
</c:if>
<c:if test="${check==0}">
	<script>
	alert("비밀번호가 맞지않습니다.\n다시 입력해주세요!");
	history.go(-1);
	</script>	
</c:if>	
			