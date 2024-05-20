<%-- 
getHostURL
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp">
	아이디 : <input type="text" size=20/><br>
	비밀번호 : <input type="password" size=20/><br>
	<input type="submit" value="로그인"/>
	<input type="reset" value="다시입력"/>
	</form>
	
	<br><br>
	
	<!-- 
		 하드코딩은 주소가 바뀌면 그때마다 수정해 줘야한다.
	     스크립트릿을 사용하면 코드 이해도가 높아진다.
	     표현 언어를 사용하면 단순해 준다.
	-->
	<!-- <a hred="http://localhost:8090/pro14/test01/memberform.jsp">회원가입</a> -->
	<!-- <a hred="<%request.getContextPath()%>/test01/memberform.jsp">회원가입</a> -->
	<a hred="${pageContext.request.contextPath}/test01/memberform.jsp">회원가입</a>

</body>
</html>