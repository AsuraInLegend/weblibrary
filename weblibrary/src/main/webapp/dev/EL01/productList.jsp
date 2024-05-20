<%-- 
표현 언어. Expression Language
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL 기본 예제</title>
</head>
<body>
<h2>EL 기본 예제 - 상품 목록</h2>
<hr />
<!--
페이지 주소
http://localhost:8081/weblibrary/dev/EL01/productSel.jsp
-->
<!-- 
아래 코드의 핵심.

EL01.Product 클래스의 객체가 session 안에 product 라는 ID로 저장된다.
마치 session.setAttribute("product", EL01.Propduct 의 객체) 와 같이 넣어진다.
이후 submit 버튼이 눌리게 되면 select 에서 선택된 값(이 값은 파라메터 'sel'에 저장된다.)과 같이 post 에 실려 productSel.jsp 로 전달된다.
   
-->
<form name="form1" method="post" action="productSel.jsp">
	<jsp:useBean id="product" class="EL01.Product" scope="session"/>
	<select name="sel">
	<%
		for(String item : product.getProductList()){
			out.println("<option>" + item + "</option>");
		}
	%>	
	</select>
	<input type="submit" value="선택" />
</form>


</body>
</html>