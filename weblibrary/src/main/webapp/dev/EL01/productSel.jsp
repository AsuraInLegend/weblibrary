<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL ����</title>
</head>
<body>
<h2>EL ���� - ��ǰ����</h2>
<hr />

<!-- 
�� �������� ȣ��Ǵ� ������ session ���� �� ���� ū ���� ���޵ȴ�.
�ϳ��� EL01.Product Ŭ������ ��ü�� product �̰�
�ι�°�� �Ķ���� ������ sel �� �Ѿ���� ���̴�.

�� �߿� sel �� request.getParameter("sel") �� ���� ������� ���� �� ������,
ǥ���� �̿��� �ܼ�ȭ�� ���� ${param.sel} �� ǥ���� �� �ְ�
�ι�° product �� ��ü�̹Ƿ� �Ʒ��� ���� �ڵ带 ����Ͽ� �� ���� ���� ����� �� �ִ�. 
-->

������ ��ǰ�� : ${param.sel}<br/>
num1 + num2 = ${product.num1 + product.num2 }<br/>
</body>
</html>