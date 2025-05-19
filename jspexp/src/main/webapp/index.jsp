<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/com/bootstrap.min.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		// document.querySelector("h2").innerText = "jsp시작"
		$("h2").text("양현수 site(192.168.0.135)")
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>양현수 site(192.168.0.135)</h2>

</div>
<%-- 
# jsp 주석 처리..		
--%>
<%--  jsp 주석은 화면에 처리가 되지 않기에 활용도가 높습니다.. --%>
<!--  html 주석에는 제한된 내용이 많다. front단에서만 주로 사용하고, 특수키 사용시 주의 하여야 한다.
	특히 태그 사용시 중복된 내용에서는 에러가 발생.. -->
<%--
# 웹프로그래밍
1. 웹 서버와 클라이언트를 통해서 원하는 정보를 처리해주는 개발 프로그래밍을 말한다.
	클라이언트(브라우저) <===> 서버(톰캣)
	네트웍망을 통해 ip/도메인 주소를 통해서 서비스를 주고 받는 처리를 하는 프로그래밍	
	1) url 구성요소
		http://localhost:8080/jspexp/a01_start/a01_jsp_start.jsp
		http: 프로토콜- 패킷 방식을 말하고, 화면을 나타내는데 최적화된 프로토콜
		localhost/ip/도메인주소 - 특정 서버를 네트웍망에서 찾아갈 때 사용
		8080 : 네트워크를 통해 찾아간 특정 서버에서 여러가지 service를 제공할 때,
			구분하기 위하여 사용한다. ps) 1521 : DB 서버
		jspexp/a01_start/ 해당 서버의 경로명
		a01_jsp_start.jsp : 특정한 서비스의 자원명
2. jsp란 java를 기반으로 한 웹 프로그래밍 기술로, 동적인 웹 페이지를 생성하는데 사용한다.
	java server page
3. jsp는 html코드 내에 java 코드를 삽입하여 서버 측에서 동적으로 컨테츠를 생성하고 클라이언트에게 전달하는 방식을 제공한다.

	클라이언트 요청(url 브라우저 주소창에 주소입력) ==> 서버단 처리(jsp ==> java(servlet) html+java ==> html만들어
		==> 클라이언트에 최종 html 코드를 전달 ==> 클라이언트 즉 브라우저는 이 html 코드를 해석하여 화면에 출력..
		 

 --%>	


<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name=""  class="form-control mr-sm-2" />
	    <input placeholder="내용" name=""  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="50%">
   	<col width="15%">
   	<col width="15%">
   	<col width="10%">
    <thead>
    
      <tr class="table-success text-center">
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    </tbody>
	</table>    
    
</div>
</body>
</html>
