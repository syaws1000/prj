<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgColor="${param.ch_color}">
	<h2>전달되어온 정보</h2>
	<!-- 
	<form action="a02_receiveData.jsp">
		<input name="id" value="himan"
		<input name="pwd" value="1111"
		<input type="submit">
	
	a02_receiveData.jsp?id=himan&pwd=1111
	아이디:${param.id}
	패스워드:${param.pwd}
	
	
	 -->
	<h3>아이디:${param.id}</h3>
	<h3>패스워드:${param.pwd}</h3>
	<!--  name email phone myIntro -->
	<h3>${param.name}</h3>
	<h3>${param.email}</h3>
	<h3>${param.phone}</h3>
	<h3>${param.myIntro}</h3>
	<!-- date title content -->
	<h3>일기정보</h3>
	<h4>${param.date}</h4>
	<h4>${param.title}</h4>
	<h4>${param.content}</h4>
	<h3>선택된 색상:${param.ch_color}</h3>
	<h3>좋아하는 요일 선택</h3><!-- 선택한 것만 전달 -->
	<h4>${paramValues.day[0]}</h4>
	<h4>${paramValues.day[1]}</h4>
	<h4>${paramValues.day[2]}</h4>
	<h4>${paramValues.day[3]}</h4>
	<h4>${paramValues.day[4]}</h4>
	<h4>${paramValues.day[5]}</h4>
	<h4>${paramValues.day[6]}</h4>
	<%--
	${param.요청key} : 한개 데이터 전송시
	?day=월&day=화&day=목&day=토
	${paramValues.여러개요청키[0]}
	동일한 이름으로 여러개의 데이터를 전송할 때,
	배열명[index번호]  : 
		index번호(0부터시작) 구분해서 전달 받는다. 
	${paramValues.day[0]}
	${paramValues.day[1]}
	${paramValues.day[2]}
	${paramValues.day[3]}
	 --%>
	
	
</body>
</html>