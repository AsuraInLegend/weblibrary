<%-- 
액션 태그
--%>

<%-- 
지시자와 태그 형태가 상이하다.
지시자는 '<%@... %>' 를 사용한다.
액션 태그는 XML에 기반 한 구문 형식을 가지고 있다. 지시자와 스크립트 요소를 살펴볼 때 주로 스크립트 형식으로만 다루었으나
지시자와 스크립트 요소도 XML 형식을 지원하고 있다.
액션태그는 '<jsp:태그 ...> </jsp:태그>' 또는 '<jsp:태그 ... />' 를 사용한다.
크게 6가지 액션 태그가 있음.

1. include 	<jsp:include ... />
지시자의 include 와 비슷한 기능을 목적으로 사용하지만 차이점이 명확하다. [00PageDirective.jsp] 페이지에 차이점을 작성해 두었음.

include 액션 태그는 포함될 jsp 페이지에 파라메터를 전달해 줄 수 있다. 액션 태그 몸체 안에 <jsp:param> 태그를 이용하면 된다.
<jsp:include page="URL" flush="true">
	<jsp:param name="파라메터명1" value="값1"/>
	<jsp:param name="파라메터명2" value="값2"/>
</jsp:include> 
아래 소스를 보면 A.jsp 페이지에 B.jsp 페이지를 액션태그를 이용하여 include 시켰다.
A.jsp 페이지에서 B.jsp 페이지로 파라메터를 넘겨주는데 이름이 siteName 이다. A.jsp 페이지에 상단에 siteName 이 선언되어 있는데
이는 <jsp:param>태그 안에있는 파라메터와 서로 다른 변수이다. 물론 B.jsp 페이지에 선언한 siteName 과도 다른 변수이다.
결과적으로 A.jsp 페이지의 siteName 에는 'www.naver.com'이 B.jsp 페이지의 siteName 에는 'www.google.com' 이 출력되는 것을 볼 수 있다.
두 개의 페이지에 선언한 siteName 이라는 변수는 서로 다른 변수로 인정된다. 지시자 include 를 이용했다면 변수가 두 번 선언된 것으로 인정된다. 
이게 큰 차이점이라 볼 수 있다.

2. forward <jsp:forward ... />
jsp 페이지 내에 forward 를 만나게 되면 forward 태그가 있던 jsp 페이지의 모든 내용을 버리고 forward 태그가 지정하는 다른 페이지로 이동하게 된다.
<jsp:include> 액션 태그와 마찬가리로 파라메터를 전달해 줄 수 있다.
<jsp:forward page="URL">
	<jsp:param name="파라메터명1" value="값1"/>
	<jsp:param name="파라메터명2" value="값2"/>
</jsp:include> 
참고로 내부객체인 response 의 sendRedirect() 함수와 차이점을 알고 있어야 한다.

필요하다면 인터넷에서 정보를 추가로 찾아보자.
3. plug-in
4. useBean
5. setProperty
6. getProperty

--%>

<!-- A.jsp  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String siteName = "www.naver.com";
%>
<html>
<body>
<h1>Include Tag Example1</h1>
<jsp:include page="B.jsp">
	<jsp:param name="siteName" value="www.google.com"/>
</jsp:include>

<%=siteName %> <!-- www.naver.com 이 들어있다. -->
</body> 
</html>

<!-- B.jsp  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String siteName = request.getParameter("siteName");
%>

<%=siteName %> <!-- www.google.com 이 들어있다. -->




