<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL 예제</title>
</head>
<body>
<h2>EL 예제 - 상품선택</h2>
<hr />

<!-- 
이 페이지가 호출되는 시점에 session 에는 두 개의 큰 값이 전달된다.
하나는 EL01.Product 클래스의 객체인 product 이고
두번째는 파라메터 형태의 sel 로 넘어오는 값이다.

그 중에 sel 은 request.getParameter("sel") 과 같은 방법으로 구할 수 있으나,
표현언어를 이용한 단순화를 통해 ${param.sel} 로 표현할 수 있고
두번째 product 는 객체이므로 아래와 같은 코드를 사용하여 두 수의 합을 계산할 수 있다. 
-->

선택한 상품은 : ${param.sel}<br/>
num1 + num2 = ${product.num1 + product.num2 }<br/>
</body>
</html>