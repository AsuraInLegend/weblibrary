<%-- 
getHostURL
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
	<form action="result.jsp">
	���̵� : <input type="text" size=20/><br>
	��й�ȣ : <input type="password" size=20/><br>
	<input type="submit" value="�α���"/>
	<input type="reset" value="�ٽ��Է�"/>
	</form>
	
	<br><br>
	
	<!-- 
		 �ϵ��ڵ��� �ּҰ� �ٲ�� �׶����� ������ ����Ѵ�.
	     ��ũ��Ʈ���� ����ϸ� �ڵ� ���ص��� ��������.
	     ǥ�� �� ����ϸ� �ܼ��� �ش�.
	-->
	<!-- <a hred="http://localhost:8090/pro14/test01/memberform.jsp">ȸ������</a> -->
	<!-- <a hred="<%request.getContextPath()%>/test01/memberform.jsp">ȸ������</a> -->
	<a hred="${pageContext.request.contextPath}/test01/memberform.jsp">ȸ������</a>

</body>
</html>