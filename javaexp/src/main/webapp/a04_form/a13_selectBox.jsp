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
a13_selectBox.jsp
1. 여행하고 싶은 도시(multiple, size 옵션 설정)
	서울, 부산, 대구, 인천, 제주
2. 최근 다녀온 나라(전송값과 화면에 보이는 값을 다르게 설정)
	미국(USA), 중국(CHN), 일본(JPN), 한국(KOR)
 -->
<form>
	<h2>여행하고 싶은 도시</h2>
	<select name="city" multiple size="3">
		<option>서울</option>
		<option>부산</option>
		<option>대구</option>
		<option>인천</option>
		<option>제주</option>
	</select>
	<h2>최근 다녀온 나라</h2>
	<select name="nation">
		<option value="USA">미국</option>
		<option value="CHN">중국</option>
		<option value="JPN">일본</option>
		<option value="KOR">한국</option>
	</select>	
	<input type="submit"/>
</form> 
<h2>도시 선택:${paramValues.city[0]} ${paramValues.city[1]} ${paramValues.city[2]} 
			${paramValues.city[3]} ${paramValues.city[4]} </h2>
<h2>최근 다녀온 나라:${param.nation}</h2>			
</body>
</html>