<%-- 
- 문자열 비교
  변수.equals(변수)             
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.Console" %> 
<%@ page import="java.util.*" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<script>

/* - 문자열 비교
  변수.equals(변수) */             

String pwd1 = "mslee";
String pwd2 = "msleee";
if(pwd1.equals(pwd2))
{
	console.log("일치");
}
</script>
	
	

</body>
</html>