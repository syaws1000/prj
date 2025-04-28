<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
# 콤보박스 select 처리하기
1. 특정한 form요소에서 선택을 하고, 전송시 해당 선택에 연결된 데이터를 서버에 전송 처리하는
	것을 말한다.
2. 기본 형식
	<select name="요청key">
		<option>요청값선택1</option>
		<option>요청값선택2</option>
		<option>요청값선택3</option>
	</select>
3. 화면에 보이는 것과 요청전송되는 데이터가 다른 경우
	<select name="요청key">
		<option value="요청값1">레이블1</option>	
		<option value="요청값2">레이블2</option>	
		<option value="요청값3">레이블3</option>	
	</select>
4. 속성
	1) select
		name="요청key"
		multiple : 선택을 다중으로 할 때.
		size="숫자" : 선택을 보이게 할 때..
	2) option
		selected : 초기에 선택할 내용을 선택되어지게 하는 옵션
-->
<h2>단일 콤보 선택</h2>
<form>
	<label>나라선택</label>
	<select name="country">
		<option>한국</option>
		<option>일본</option>
		<option>미국</option>
	</select><br>
	<label>과일선택</label>
	<select name="fruit">
		<option value="apple">사과</option>
		<option value="orange">오렌지</option>
		<option value="kiwi">키위</option>
	</select><br>
	<label>자동차선택(초기선택)</label>
	<select name="car">
		<option>BMW</option>
		<option selected>벤츠</option>
		<option>아우디</option>
		<option>현대</option>
	</select><br>
	<label>취미선택(다중선택)</label>
	<select name="hobby" size="2" multiple>
		<option>독서</option>
		<option>운동</option>
		<option>음악</option>
		<option>여행</option>
	</select><br>	
	<label>좋아하는 음식</label>
	<select name="food">
		<option>짜장면</option>
		<option>짬뽕</option>
		<option>탕수육</option>
	</select>
	<input type="submit"/><br>
	마지막선택:${param.food}<br>
	
	선택1:${param.country}, 선택2:${param.fruit}, 선택3:${param.car}<br>
	선택4:${paramValues.hobby[0]} ${paramValues.hobby[1]} ${paramValues.hobby[2]}
		${paramValues.hobby[3]} 
	

</form>
<!-- 
a13_selectBox.jsp
1. 여행하고 싶은 도시(multiple, size 옵션 설정)
	서울, 부산, 대구, 인천, 제주
2. 최근 다녀온 나라(전송값과 화면에 보이는 값을 다르게 설정)
	미국(USA), 중국(CHN), 일본(JPN), 한국(KOR)
 -->




</body>
</html>