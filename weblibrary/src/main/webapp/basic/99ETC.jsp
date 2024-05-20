<%-- 
URL 과 URI 의 차이점
URL(Uniform Resource Locator)은 인터넷에서 접근 가능한 자원의 주소를 일관되게 표현할 수 있는 형식을 의미한다.
URI(Uniform Resource Identifier)는 존재하는 자원을 식별하기 위한 일반적인 식별자를 규정하는 것이다.
예를들어
http://jspstudy.co.kr/jspstudy/board/List.jsp?table=one 에서
URL 은 http://jspstudy.co.kr/jspstudy/board/List.jsp?table=one 이고 
URI 는 jspstudy/board/List.jsp?table=one 이 된다.
URI 는 요청된 URL에서 http, 호스트명, port 번호 등을 뺀 나머지라고 생각하면 된다.
--%>

<%-- 
쿠키와 세션의 차이점
웹페이지 운영에 필요한 정보를 개인PC에서 저장 및 관리를 한다면 그 데이터는 쿠키
                 정보를 서버에서 저장 및 관리를 한다면 그 데이터는 세션
--%>

<%-- 
<% %>와 <script>의 차이점

<%
	이것으로 감싸여져 있는 부분은 JSP 코드중에 JAVA 구현부분입니다.
	이 부분은 서버에서 실행이 됩니다.
%>          
<script>
	이 부분으로 감싸여져 있는 부분은 스크립트 부분입니다.
	사용자에게 html 로 전송된 이후에 실행되는 부분으로 html 의 일부분입니다.
</script>

두개는 좀 다른 의미로 자바는 프로그램적인 부분이고 스크립트는 마크업랭귀지의 일부분으로
사용자 환경에서 실행되는 명령어에 해당한다.
따라서 <script></script> 를 <% %> 로 바꾸면 오류가 날 수밖에 없다.
<% %>속에 들어가는 구문은 java 문법을 따르며
<script></script>속에 들어가는 구문은 script 문법을 따르게 되어 있다.
명령어와 문법 표현 방식이 전혀 다르다고 봐야한다.
--%>

<%-- 

<script>와 <script type="text/javascript">의 차이
    
<script></script> : Text를 통해 스크립트를 구현하겠다는 의미이다.
<script type="text/javascript"></script> : 예전 javascript외의 스크립트언어들이 자주 사용되었는데 브라우저가 javascript를 인식하게 하기 위해 적어주었다.
웹표준은 2번의 형택가 맞지만, HTML5에서는 디폴트로 js를 지정해주기 때문에 안적어도 된다. 
다만 하위 호환성을 위해서는 적어주는 것이 좋다.
--%>

<%-- 

소스에서 찾아보기
request.setCharacterEncoding("EUC-KR");
             
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