

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<script>

	// log �� �� ģ����
	console.log('�⺻');
	console.info('����');
	console.warn('���')	
	console.error('����');

	// dir
	function f() { return true; }
	console.log(f);
	console.dir(f);
	
	// count
	// �� �� ȣ��Ǿ����� �α��ϰ� ���� �� ���
	console.count('ī����1'); // ī����1: 1
	console.count('ī����1'); // ī����1: 2
	console.count('ī����2'); // ī����2: 1
	console.count('ī����2'); // ī����2: 2
	console.count('ī����1'); // ī����1: 3
	
	// time, timeEnd
	// �ڵ� ���� �ð��� Ȯ���� �� �����մϴ�. 
	// ���ڴ� Ÿ�̸��� �̸��Դϴ�. 
	// time�� timeEnd�� ���� Ÿ�̸� �̸��� �־�� ���������� �۵��մϴ�.
	console.time('Ÿ�̸�');
	for (var i = 0; i < 1000000; i++) 
		z = 5;
	console.timeEnd('Ÿ�̸�'); // Ÿ�̸�: 6.76611328125ms
	
</script>

</body>
</html>