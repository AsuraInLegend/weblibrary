<%-- 
���� ��ü-1
--%>

<%-- 
���ΰ�ü��?
jsp �������� �ۼ��� �� ���������ο��� �ƹ��� include �Ǵ� ���� �� ���� ���۾��� ����� �� �ִ� ��ü�� �ǹ��Ѵ�.
�� ��ü�� �ȿ� �ִ� �پ��� �Լ��� ȣ���ؼ� Ȱ���� �� �ִٴ� ���� �ȴ�.
���⼭ �߿��� ���� ��ũ��Ʈ����(<script></script>)�� �ƴ� java����(<% %>)���� ����� �� �ִٴ� ���̴�.

������ ������ ���� 
request		: �Ķ���͸� ������ ��û�� ��� �ִ� ��ü
response	: ��û�� ���� ������ ��� �ִ� ��ü
out			: ������ ������ ��� �ִ� ��� ��ü
session		: ���� ������ ����ִ� ��ü
application	: ���ø����̼� context(����) �� ��� �������� ������ �����͸� ����ִ� ��ü	
pageContext	: ������ ���࿡ �ʿ��� context(����) ������ ����ִ� ��ü
page		: jsp �������� ���� ��ü
config		: jsp �������� ���� ���� ������ �ʱ�ȭ ���� ��ü
exception	: jsp �������� ����ó�� ��ü

1. request
request ��ü�� ���������� jsp �������� ���޵Ǵ� �������� ��������, HTTP ���� HTTP �ٵ�� �����Ǿ� �ִ�.
jsp �����̳ʴ� ��û�� HTTP �޽����� ���� HttpServletRequest ��ü Ÿ���� request ��ü������ ����Ѵ�.

- �Ķ���� ���ϴ� �Լ�
String getParameter("�Ķ���� �̸�") : ���� �������� form �ȿ� �ִ� name ��Ͽ� ������ ���޵Ǵ� �Ķ���� ���� ���� �� �ֽ��ϴ�. 
								   jsp ������������ get, post �� ���� ��� ��� ��û�Ǵ� �Ű������鿡 ���ؼ� 
								   request.getParameter("...")���� ���� ������ �� �ִ�.
								   
- �� �������� �� ������ ������ �������� ���ؼ��� ���Ǵ� �Լ�
String getMethod() : get ������� post ������� ����
String getRequestURI() : ��û�� ���� URL�κ��� URI�� ����
String getQueryString() : ��û�� ���� Query ������ ����
String getRemoteHost() : Ŭ���̾�Ʈ�� ȣ��Ʈ �̸��� ����
String getRemoteAddr() : Ŭ���̾�Ʈ�� �ּҸ� ����
String getServerName() : ������ ������ �̸��� ����
int    getServerPort() : ������ ���� ��ȣ ����

2. response
response ��ü�� ��û�� �õ��� Ŭ���̾�Ʈ�� ������ ������ ��Ÿ���� �������� �����̴�.
jsp �����̳ʴ� ��û�� HTTP �޽����� ���� HttpServletResponse ��ü Ÿ���� response ��ü���� ����Ѵ�.
response ���� �˾ƾ� �� �Լ��� �׸� ���� �ʴ� �Ʒ� �ִ� �Ѱ� ����?

void sendRedirect() : �������� �̵���Ű�� �Լ�
					  Ŭ���̾�Ʈ������ ��û�� ������ �Ϸ��� �� �� 3�� �������� �̵��ϰ� ���� �� ���
					  ���� ��� �α��� �� �ٸ� �������� �̵��� ���� ���� ������ �ʿ��� ��.
					  �׼� �±��� <jsp:forward ... /> �� �������� �˰� �־�� �Ѵ�.
					  
3. out
jsp �������� ����� Ŭ���̾�Ʈ�� ������ �ִ� ��� ��ü�μ�, Ŭ���̾�Ʈ���� ������ ��� ������ out ��ü�� ���ؼ� ���޵ȴ�.
<%=����%> ���� �ڵ嵵 out.println(����) �� ���� �ڵ�� ��ȯ�ȴ�.

4. session
5. application
6. pageContext
...
�ٸ� ���������� ������.
	
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

<!-- request ��뿹�� -->
<%
	// 
	String masterID = request.getParameter("masterID");		/* �ϳ��� name�� �ϳ��� ���� ������� �� */
		
	String [] hobby = request.getParameterValues("hobby");	/* �ϳ��� name�� �������� ���� �迭 ���·� ������� �� */
%>


<!-- response ��뿹�� -->
ȣ��Ǵ� login.jsp �������� id ���� �����ϱ� ���ؼ�...
response.sendRedirect()�� get �Ǵ� post ������� �Ķ����(���⼭�� id)�� ���� �����ؾ� �Ѵ�.
<jsp:forward>�� ��� login.jsp ��������� request.getParameter("id"); �� �̿��Ͽ� �Ķ���͸� ������ �� �ִ�.
<%
	String id = request.getParameter("id");

	response.sendRedirect("login.jsp?id=" + id);
%>
	<jsp:forward page="login.jsp">
	
	
<!-- out ��뿹 -->
<%
	String nickName = "���Ѿ���";
%>
�� ������ <%=nickName %> �Դϴ�. <!-- html �������� �������� ������ ������ ��� -->
<%
	// ��ũ���긴 �������� �������� ������ ������ ���
	out.println("�� ������ " + nickName + " �Դϴ�.");
%>
</body>
</html>