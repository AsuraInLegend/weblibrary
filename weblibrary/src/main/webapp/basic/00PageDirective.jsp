<%-- 
JSP ������ ��Ƽ��(Directive)
�����ڴ� Ŭ���̾�Ʈ�� ��û�� jsp �������� ������ �� �� �ʿ��� ������ JSP �����̳ʿ� �˸��� ������ �Ѵ�.
Ǯ�����ڸ� jsp �������� '�̷��� ó���� �Ͻÿ�'��� ���ø� ������ ��.
���´� '<%@... %>' �� ���Ѵ�. 

1. page 	<%@ page ... %>
page ���� ���� �Ӽ��� �ִ�. ���ͳ��� ���� ã�ƺ��� ���عٶ�.
���߿� import �� �߿��ϴ�. jsp ������ ������ package �̸��� �������� �ʰ� Ŭ������ ����ϰ� ���� �� ����ϴ� �Ӽ�.

2. include	<%@ include ... %>
���� page�� �ٸ� page�� �߰��ϰ� ���� �� ���.
�������������� �������� ���Ǵ� ����(������ �Լ�)�� �ϳ��� ������ �ȿ� ������ �� ����� ���ϴ� ���������� include �� �� ȣ��(���)�� �� �ִ�.

3. taglib	<%@ taglib ... %>
01PageDirective.jsp ���������� ���� ����
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="simpan.spi.common.simpanUtil" %> <!-- simpanUtil Ŭ������ jsp ���������� ����Ϸ� �Ѵ�.  -->

<%@ include file="spiCommonInclude.jsp" %> <!-- �� ���ο� spiCommonInclude.jsp �������� ������ ����. �������� �ִ� �Լ� ȣ���� ������.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>



</body>
<%@ include file="spiCommonInclude.jsp" %> <!-- �±׵� ���̿��� ������ �����ϴ�.  -->
</html>