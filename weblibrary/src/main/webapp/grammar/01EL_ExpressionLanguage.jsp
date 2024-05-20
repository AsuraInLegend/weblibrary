<%-- 
표현언어도 우선순위가 있다.
동일한 속성으로 바인딩된 값이 있을 때 이를 ${}으로 표현할 때 우선순위는 아래와 같다.
page > request > session > application

request.setAttribute("address", "서울시");
....
session.setAttribute("address", "부산시");
...
<h1>${address}<h1> // ${address}는 '서울시'가 출력된다.
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

</body>
</html>