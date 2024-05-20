

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

	// log 와 그 친구들
	console.log('기본');
	console.info('정보');
	console.warn('경고')	
	console.error('에러');

	// dir
	function f() { return true; }
	console.log(f);
	console.dir(f);
	
	// count
	// 몇 번 호출되었나를 로깅하고 싶을 때 사용
	console.count('카운터1'); // 카운터1: 1
	console.count('카운터1'); // 카운터1: 2
	console.count('카운터2'); // 카운터2: 1
	console.count('카운터2'); // 카운터2: 2
	console.count('카운터1'); // 카운터1: 3
	
	// time, timeEnd
	// 코드 수행 시간을 확인할 때 유용합니다. 
	// 인자는 타이머의 이름입니다. 
	// time과 timeEnd에 같은 타이머 이름을 주어야 정상적으로 작동합니다.
	console.time('타이머');
	for (var i = 0; i < 1000000; i++) 
		z = 5;
	console.timeEnd('타이머'); // 타이머: 6.76611328125ms
	
</script>

</body>
</html>