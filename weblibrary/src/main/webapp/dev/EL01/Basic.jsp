<%-- 
표현 언어. Expression Language
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
<!--
1. 사용방법
표현식을 사용하기 위해서는 attribute 또는 parameter 등을 JSP 파일에서 출력할 용도로 사용하는 언어임.
따라서 아래와 같이 사용할 수는 없음	

2. 표현언어 내부에서 사용가능한 연산자.
크게 기호 연산자와 영문단어 연산자로 나뉜다.
기호 연산자 목록 :  /,   %,   &&, ||,  !,  ==, !=,  <,  >, <=, >= 
단어 연산자 목록 : div, mod, and, or, not, eq, ne, lt, gt, le, ge 
-->

<%
	// 일반 변수 선언
	int nValue1 = 10;

	//request 에 setAttribute 를 이용해서 nValue2, nValue3 를 바인딩함.
	request.setAttribute("nValue2", 10);
	request.setAttribute("nValue3", 100);
%>

.......
	<!-- ${nValue} -->	<!-- 일반적인 선언 방식의 변수는 표현언어로 사용 불가하다. -->
	
	${nValue2}			<!-- 바인딩한 멤버를 사용할 수 있다. -->
	<br>
	
	${nValue3 + 10}		<!-- + 연산자 사용 -->
	<br> 
	
	${nValue3 - 10}		<!-- - 연산자 사용 -->
	<br>
	
	${nValue3 eq 100}	<!-- eq 연산자 사용 -->
	<br>
	
	${nValue3 ne 200}	<!-- eq 연산자 사용 -->
	<br>

</body>
</html>