<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgColor="${param.color}">
<!-- 
# radio box 처리
1. check box가 다중의 내용을 처리하는 것이라면,
2. radio box는 여러 개 중에 하나를 선택하여 처리하는 것이라고 할 수 있다.
 -->
	<h2>내가 가장 좋아 하는 색상 선택${param.color}</h2>
	<!-- ${param.color} 처리되는 것은 .jsp일때만 가능하다. -->
	<form> <!-- action이 생략되면 현재 페이지를 로딩 한다. -->
		<!--
		form에 action값이 없으면 현재페이지를 다시 호출한다.(단, jsp에서만 가능)
		
		ctrl+alt+화살표 아래 : 줄복사
		  -->
		<input type="radio" name="color" value="red">빨강<br>
		<!-- 
		html의 주석, 실행에 영향을 미치지 않는다.
		<input  : 태그의 시작
		 type="radio"  속성 = "속성값"
		 -->
		<input type="radio" name="color" value="blue">파랑<br>
		<input type="radio" name="color" value="green">초록<br>
		<input type="radio" name="color" value="yellow">노랑<br>
		<input type="submit" value="색상선택"/>
	</form> 
	<!-- 
	ex) a09_choiceOne.jsp
		가장 좋아하는 과일
		()사과  name="fruit" value="사과"
		()바나나
		()딸기
		()오렌지
		[선택]		
		선택된 과일:@@@  ${param.fruit}
	 -->
	
	
</body>
</html>