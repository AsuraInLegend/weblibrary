<%-- 
JSP ������ ��Ƽ��(Directive). ������-1
--%>

<%-- 
�����ڴ� Ŭ���̾�Ʈ�� ��û�� jsp �������� ������ �� �� �ʿ��� ������ JSP �����̳ʿ� �˸��� ������ �Ѵ�.
Ǯ�����ڸ� jsp �������� '�̷��� ó���� �Ͻÿ�'��� ���ø� ������ ��.
���´� '<%@... %>' �� ���Ѵ�. 

1. page 	<%@ page ... %>
page ���� ���� �Ӽ��� �ִ�. ���ͳ��� ���� ã�ƺ��� ���عٶ�.
���߿� import �� �߿��ϴ�. �ڹ� Ŭ����(��: class simpanUtil)�� jsp ���������� ����ϰ� ���� �� import �� �̿��Ѵ�.

2. include	<%@ include ... %>
���� page�� �ٸ� page�� �߰��ϰ� ���� �� ����Ѵ�.
�������������� �������� ���Ǵ� ����(������ �Լ�)�� �ϳ��� ������ �ȿ� ������ �� ����� ���ϴ� ���������� include �� �� ȣ��(���)�� �� �ִ�.
[02ActionTag.jsp]���� ��޵Ǵ� <jsp:include ... /> �� ����� ����ϴ� �������� �����Ѵ�.
include '������'�� ���Խ�ų ������ ������ü(text ��ü)�� �������� �־� servlet �ҽ��� �Բ� ��ȯ�ȴ�.
�̷��� �Ǹ� ���Ե� �������� ���Ե� �������� ������ ����� �� �ִ�.
������
include '�׼��±�'�� ��� ���Խ�ų �������� ó��������� ���Խ�Ų��.

3. taglib	<%@ taglib ... %>
[01PageDirective.jsp] ���������� ������ �����Ѵ�.
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="simpan.spi.common.simpanUtil" %> <!-- simpanUtil Ŭ������ jsp ���������� ����Ϸ� �Ѵ�.  -->

<%@ include file="spiCommonInclude.jsp" %> <!-- �� ���ο� spiCommonInclude.jsp �������� ������ �״�� ����. �������� �ִ� �Լ� ȣ���� ������.  -->
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