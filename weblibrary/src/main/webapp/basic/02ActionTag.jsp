<%-- 
�׼� �±�
--%>

<%-- 
�����ڿ� �±� ���°� �����ϴ�.
�����ڴ� '<%@... %>' �� ����Ѵ�.
�׼� �±״� XML�� ��� �� ���� ������ ������ �ִ�. �����ڿ� ��ũ��Ʈ ��Ҹ� ���캼 �� �ַ� ��ũ��Ʈ �������θ� �ٷ������
�����ڿ� ��ũ��Ʈ ��ҵ� XML ������ �����ϰ� �ִ�.
�׼��±״� '<jsp:�±� ...> </jsp:�±�>' �Ǵ� '<jsp:�±� ... />' �� ����Ѵ�.
ũ�� 6���� �׼� �±װ� ����.

1. include 	<jsp:include ... />
�������� include �� ����� ����� �������� ��������� �������� ��Ȯ�ϴ�. [00PageDirective.jsp] �������� �������� �ۼ��� �ξ���.

include �׼� �±״� ���Ե� jsp �������� �Ķ���͸� ������ �� �� �ִ�. �׼� �±� ��ü �ȿ� <jsp:param> �±׸� �̿��ϸ� �ȴ�.
<jsp:include page="URL" flush="true">
	<jsp:param name="�Ķ���͸�1" value="��1"/>
	<jsp:param name="�Ķ���͸�2" value="��2"/>
</jsp:include> 
�Ʒ� �ҽ��� ���� A.jsp �������� B.jsp �������� �׼��±׸� �̿��Ͽ� include ���״�.
A.jsp ���������� B.jsp �������� �Ķ���͸� �Ѱ��ִµ� �̸��� siteName �̴�. A.jsp �������� ��ܿ� siteName �� ����Ǿ� �ִµ�
�̴� <jsp:param>�±� �ȿ��ִ� �Ķ���Ϳ� ���� �ٸ� �����̴�. ���� B.jsp �������� ������ siteName ���� �ٸ� �����̴�.
��������� A.jsp �������� siteName ���� 'www.naver.com'�� B.jsp �������� siteName ���� 'www.google.com' �� ��µǴ� ���� �� �� �ִ�.
�� ���� �������� ������ siteName �̶�� ������ ���� �ٸ� ������ �����ȴ�. ������ include �� �̿��ߴٸ� ������ �� �� ����� ������ �����ȴ�. 
�̰� ū �������̶� �� �� �ִ�.

2. forward <jsp:forward ... />
jsp ������ ���� forward �� ������ �Ǹ� forward �±װ� �ִ� jsp �������� ��� ������ ������ forward �±װ� �����ϴ� �ٸ� �������� �̵��ϰ� �ȴ�.
<jsp:include> �׼� �±׿� ���������� �Ķ���͸� ������ �� �� �ִ�.
<jsp:forward page="URL">
	<jsp:param name="�Ķ���͸�1" value="��1"/>
	<jsp:param name="�Ķ���͸�2" value="��2"/>
</jsp:include> 
����� ���ΰ�ü�� response �� sendRedirect() �Լ��� �������� �˰� �־�� �Ѵ�.

�ʿ��ϴٸ� ���ͳݿ��� ������ �߰��� ã�ƺ���.
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

<%=siteName %> <!-- www.naver.com �� ����ִ�. -->
</body> 
</html>

<!-- B.jsp  -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%
	String siteName = request.getParameter("siteName");
%>

<%=siteName %> <!-- www.google.com �� ����ִ�. -->




