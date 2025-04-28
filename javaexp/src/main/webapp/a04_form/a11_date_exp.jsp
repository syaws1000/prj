<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>상담 예야 등록 폼</h2>
	<form>
		이름:<input type="text" name="name1"/><br>
		전화번호:<input type="tel" name="tel1"/><br>
		예약날짜:<input type="date" name="date1"/><br>
		예약시간:<input type="time" name="time1"/><br>
		요청사항:<br>
		<textarea name="req1" cols="20" rows="5"></textarea><br>
		<input type="submit" value="예약등록">
	</form>
	<h2>등록 내용</h2>
	<h3>이름:${param.name1}</h3>
	<h3>전화번호:${param.tel1}</h3>
	<h3>예약날짜:${param.date1}</h3>
	<h3>예약시간:${param.time1}</h3>
	<h3>요청사항:${param.req1}</h3>
	
	<!-- 
	a11_date_exp.jsp?name1=홍길동&tel1=010-8888-9999&date1=2025-03-28&time1=09%3A00&req1=잘+해주세요..%5E%5E
	
	ex) a11_date_exp.jsp
	상담 예약 등록 폼
	이름:[     ]   type="text"  name="name1"
	전화번호:[    ]  type="tel"
	예약날짜:[    ]  type="date"  name="date1"
	예약시간:[    ]  type="time"
	요청사항: <textarea name="req1" cols="5" rows="10">
	[등록]
	==> 등록 버튼 클릭시
	등록된 예약 내용  h2
	이름 : @@@   ${param.name1}
	전화번호 : @@@
	예약날짜 : @@@ ${param.date1}
	예약시간 : @@@
	요청사항 : @@@ ${param.req1}
	 -->
</body>
</html>