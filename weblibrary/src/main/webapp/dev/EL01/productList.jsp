<%-- 
ǥ�� ���. Expression Language
--%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL �⺻ ����</title>
</head>
<body>
<h2>EL �⺻ ���� - ��ǰ ���</h2>
<hr />
<!--
������ �ּ�
http://localhost:8081/weblibrary/dev/EL01/productSel.jsp
-->
<!-- 
�Ʒ� �ڵ��� �ٽ�.

EL01.Product Ŭ������ ��ü�� session �ȿ� product ��� ID�� ����ȴ�.
��ġ session.setAttribute("product", EL01.Propduct �� ��ü) �� ���� �־�����.
���� submit ��ư�� ������ �Ǹ� select ���� ���õ� ��(�� ���� �Ķ���� 'sel'�� ����ȴ�.)�� ���� post �� �Ƿ� productSel.jsp �� ���޵ȴ�.
   
-->
<form name="form1" method="post" action="productSel.jsp">
	<jsp:useBean id="product" class="EL01.Product" scope="session"/>
	<select name="sel">
	<%
		for(String item : product.getProductList()){
			out.println("<option>" + item + "</option>");
		}
	%>	
	</select>
	<input type="submit" value="����" />
</form>


</body>
</html>