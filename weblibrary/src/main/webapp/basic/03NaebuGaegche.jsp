<%-- 
내부객체란?
jsp 페이지를 작성할 때 페이지내부에서 아무런 include 또는 선언 과 같은 동작없이 사용할 수 있는 객체를 의미한다.
이 객체들 안에 있는 다양한 함수를 호출해서 활용할 수 있다는 뜻이 된다.

종류와 간단한 설명 
request		: 파라메터를 포함한 요청을 담고 있는 객체
response	: 요청에 대한 응답을 담고 있는 객체
out			: 페이지 내용을 담고 있는 출력 객체
session		: 세션 정보를 담고있는 객체
application	: 어플리케이션 context(문맥) 의 모든 페이지가 공유할 데이터를 담고있는 객체	
pageContext	: 페이지 실행에 필요한 context(문맥) 정버를 담고있는 객체
page		: jsp 페이지의 서블릿 객체
config		: jsp 페이지의 서블릿 설정 데이터 초기화 정보 객체
exception	: jsp 페이지의 예외처리 객체

1. request
request 객체는 브라어저에서 jsp 페이지로 전달되는 데이터의 묶음으로, HTTP 헤어와 HTTP 바디로 구성되어 있다.
jsp 컨테이너는 요청된 HTTP 메시지를 통해 HttpServletRequest 객체 타입의 request 객체명으로 사용한다.

- 파라메터 구하는 함수
String getParameter("파라메터 이름") : 이전 페이지의 form 안에 있는 name 목록에 묶여서 전달되는 파라메터 값을 구할 수 있습니다. 

- 웹 브라우저와 웹 서버의 정보를 가져오기 위해서도 사용되는 함수
String getMethod() : get 방식인지 post 방식인지 리턴
String getRequestURI() : 요청에 사용된 URL로부터 URI를 리턴
String getQueryString() : 요청에 사용된 Query 문장을 리턴
String getRemoteHost() : 클라이언트의 호스트 이름을 리턴
String getRemoteAddr() : 클라이언트의 주소를 리턴
String getServerName() : 서버의 도메인 이름을 리턴
int    getServerPort() : 서버의 포토 번호 리턴

2. response
response 객체는 요청을 시도한 클라이언트로 전송할 응답을 나타내는 데이터의 묶음이다.
jsp 컨테이너는 요청된 HTTP 메시지를 통해 HttpServletResponse 객체 타입의 response 객체명을 사용한다.

3. out
jsp 페이지의 결과를 클라이언트에 전송해 주는 출력 객체로서, 클라이언트에게 보내는 모든 정보는 out 객체를 통해서 전달된다.
<%=변수%> 등의 코드도 out.println(변수) 와 같은 코드로 변환된다.

4. session
5. application
6. pageContext
...
다른 페이지에서 설명함.
	
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

<%
	String masterID = request.getParameter("masterID");
%>

</body>
</html>