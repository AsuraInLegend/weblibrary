<%-- 
JSTL �� ���� ����� ����
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
foreach �����
-->

<c:forEach var="i" begin="1" end="10">
	value = '${i }';
</c:forEach>

</body>
</html>