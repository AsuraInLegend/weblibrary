<%-- 
JSTL 에 대한 개념과 이해
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--
foreach 사용방법
-->

<c:forEach var="i" begin="1" end="10">
	value = '${i }';
</c:forEach>

</body>
</html>