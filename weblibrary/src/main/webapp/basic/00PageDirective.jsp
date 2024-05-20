<%-- 
JSP 페이지 디렉티브(Directive). 지시자-1
--%>

<%-- 
지시자는 클라이언트의 요청에 jsp 페이지가 실행이 될 때 필요한 정보를 JSP 컨테이너에 알리는 역할을 한다.
풀이하자면 jsp 페이지에 '이렇게 처리를 하시오'라는 지시를 내리는 것.
형태는 '<%@... %>' 를 취한다. 

1. page 	<%@ page ... %>
page 에는 많은 속성이 있다. 인터넷을 통해 찾아보고 이해바람.
그중에 import 가 중요하다. 자바 클래스(예: class simpanUtil)를 jsp 페이지에서 사용하고 싶을 때 import 를 이용한다.

2. include	<%@ include ... %>
현재 page에 다른 page를 추가하고 싶을 때 사용한다.
여러페이지에서 공통으로 사용되는 동작(보통은 함수)을 하나의 페이지 안에 구현한 후 사용을 원하는 페이지에서 include 한 후 호출(사용)할 수 있다.
[02ActionTag.jsp]에서 언급되는 <jsp:include ... /> 와 기능이 비슷하다 차이점이 존재한다.
include '지시자'는 포함시킬 파일의 내용전체(text 자체)를 페이지에 넣어 servlet 소스로 함께 변환된다.
이렇게 되면 포함된 페이지가 포함될 페이지의 변수를 사용할 수 있다.
하지만
include '액션태그'의 경우 포함시킬 페이지의 처리결과만을 포함시킨다.

3. taglib	<%@ taglib ... %>
[01PageDirective.jsp] 페이지에서 별도로 설명한다.
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="simpan.spi.common.simpanUtil" %> <!-- simpanUtil 클래스를 jsp 페이지에서 사용하려 한다.  -->

<%@ include file="spiCommonInclude.jsp" %> <!-- 이 라인에 spiCommonInclude.jsp 페이지의 내용을 그대로 삽입. 페이지에 있는 함수 호출이 가능함.  -->
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