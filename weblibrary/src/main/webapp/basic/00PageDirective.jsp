<%-- 
JSP 페이지 디렉티브(Directive)
지시자는 클라이언트의 요청에 jsp 페이지가 실행이 될 때 필요한 정보를 JSP 컨테이너에 알리는 역할을 한다.
풀이하자면 jsp 페이지에 '이렇게 처리를 하시오'라는 지시를 내리는 것.
형태는 '<%@... %>' 를 취한다. 

1. page 	<%@ page ... %>
page 에는 많은 속성이 있다. 인터넷을 통해 찾아보고 이해바람.
그중에 import 가 중요하다. jsp 페이지 내에서 package 이름을 지정하지 않고 클래스를 사용하고 싶을 때 사용하는 속성.

2. include	<%@ include ... %>
현재 page에 다른 page를 추가하고 싶을 때 사용.
여러페이지에서 공통으로 사용되는 동작(보통은 함수)을 하나의 페이지 안에 구현한 후 사용을 원하는 페이지에서 include 한 후 호출(사용)할 수 있다.

3. taglib	<%@ taglib ... %>
01PageDirective.jsp 페이지에서 별도 설명
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="simpan.spi.common.simpanUtil" %> <!-- simpanUtil 클래스를 jsp 페이지에서 사용하려 한다.  -->

<%@ include file="spiCommonInclude.jsp" %> <!-- 이 라인에 spiCommonInclude.jsp 페이지의 내용을 삽입. 페이지에 있는 함수 호출이 가능함.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



</body>
<%@ include file="spiCommonInclude.jsp" %> <!-- 태그들 사이에도 포함이 가능하다.  -->
</html>