<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
	/*
	# 폼요소 꾸미기
	1. 폼의 여러가지 입력 처리할 때, css 내용을 처리할 수 있다.
	2. 기본형식
		input[속성=속성값]{속성:속성값;}
	*/
	input[type=text]{color:red;} 
	/* 속성중에 type이 text인것의 css 속성 설정*/
	/* ex) type이 password인 것의 배경색상(background-color) 노랑색(yellow)로 설정하세요..*/
	input[type=password]{background-color:yellow;}
	input[name=age]{border:2px solid skyblue;border-radius:5px;}
	/* ex) 하단에 name으로 prodName을 설정하여 물건명 정보를 입력하게 하고,
		위와 같이 border와 border-radius 속성을 설정해보세요. */
	input[name=prodName]{border:1px dotted orange;border-radius:7px;}	
	input[type=text]:focus{background-color:pink;font-size:120%;}
	/*
	ex) type name이 age인 내용을 클릭시,  배경색상과 글자 크기가 변경되게 처리해보세요..
	*/
	input[name=age]:focus{background-color:orange;font-size:150%;
		border-radius:20px;
  		border: 5px dotted blue !important;
  		outline: none; /* 기본 outline 제거 */		
	}

}
	</style>
</head>
<body>
	
	<form>
		물건명:<input name="prodName"/><br>
		아이디:<input type="text" name="id" required><br>
		패스워드:<input type="password" name="pwd" required><br>
		나이:<input name="age"/><br>
		<input type="submit">	
	</form>
	<h2>전달된 아이디:${param.id}</h2>
	<h2>전달된 패스워드:${param.pwd}</h2>
	<h2>결과:${ (param.id=='himan' and param.pwd == '7777') ? '로그인성공':'로그인실패'}</h2>
	
</body>
</html>