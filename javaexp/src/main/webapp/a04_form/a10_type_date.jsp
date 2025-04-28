<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>날짜 처리 예제</h2>
	<h3>내 스케줄 확인하기</h3>
	<form>
		한달 선택:<input type="month" name="month"/><br>
		주 선택:<input type="week" name="week" /><br>
		날짜 선택:<input type="date" name="date" /><br>
		시간 선택:<input type="time" name="time" /><br>
		날짜와 시간 선택:<input type="datetime-local" name="datetime" /><br>
		<input type="submit" value="일정확인"/>
	</form>
	<h3>선택된 일정</h3>
	<h4>월단위:${param.month}</h4>
	<h4>주단위:${param.week}</h4>
	<h4>날짜단위:${param.date}</h4>
	<h4>시간단위:${param.time}</h4>
	<h4>날짜와 시간 단위:${param.datetime}</h4>
	
	<!-- 
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