<%-- 
ǥ�� ���. Expression Language
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
<!--
1. �����
ǥ������ ����ϱ� ���ؼ��� attribute �Ǵ� parameter ���� JSP ���Ͽ��� ����� �뵵�� ����ϴ� �����.
���� �Ʒ��� ���� ����� ���� ����	

2. ǥ����� ���ο��� ��밡���� ������.
ũ�� ��ȣ �����ڿ� �����ܾ� �����ڷ� ������.
��ȣ ������ ��� :  /,   %,   &&, ||,  !,  ==, !=,  <,  >, <=, >= 
�ܾ� ������ ��� : div, mod, and, or, not, eq, ne, lt, gt, le, ge 
-->

<%
	// �Ϲ� ���� ����
	int nValue1 = 10;

	//request �� setAttribute �� �̿��ؼ� nValue2, nValue3 �� ���ε���.
	request.setAttribute("nValue2", 10);
	request.setAttribute("nValue3", 100);
%>

.......
	<!-- ${nValue} -->	<!-- �Ϲ����� ���� ����� ������ ǥ������ ��� �Ұ��ϴ�. -->
	
	${nValue2}			<!-- ���ε��� ����� ����� �� �ִ�. -->
	<br>
	
	${nValue3 + 10}		<!-- + ������ ��� -->
	<br> 
	
	${nValue3 - 10}		<!-- - ������ ��� -->
	<br>
	
	${nValue3 eq 100}	<!-- eq ������ ��� -->
	<br>
	
	${nValue3 ne 200}	<!-- eq ������ ��� -->
	<br>

</body>
</html>