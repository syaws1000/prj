<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
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
/*
# jquery
1. javascript 라이브러리로, html 문서 탐색, 이벤트 처리, 애니메이션, ajax 요청등을
간단하게 작성할 수 있도록 합니다. jquery는 웹 개발자들이 복잡한 javascript 코드를 보다
효율적이고 쉽게 작성할 수 있게 해주는 도구입니다.
	1) 특징
	- HTML/DOM 탐색 : 웹 페이지의 DOM을 쉽게 탐색하고 수정할 수 있습니다.
		document.querySelector("선택자")
		==> $("선택")
	- 이벤트 처리 : 클릭, 마우스 이벤트, 키보드 이벤트 등을 손쉽게 처리할 수 있습니다.
		$("선택").click()
		$("선택").hover()
		$("선택").show() $("선택").hide()
	- ajax : 비동기 http요청을 쉽게 다룰 수 있습니다.
		동기 : 하나의 이벤트에 하나의 기능 처리
		비동기 : 하나의 이벤트가 처리되더라도 다른 여러가 기능들도 처리 가능..
		# 주로 화면에 화면 전환이 없이, 바로 javascript로 서버와 접속해 데이터를 가져오는 기능을 한다.
		ex) 회원 가입화면에서 등록된 회원아이디는 서버의 DB에 접속해서 확인을 해야하는데,
			가입화면이 닫혀지지 않는 상황에서 ajax를 이용해서 javascript로 등록 여부를 확인할 수 있다.
	- 애니메이션 및 효과 : 요소를 숨기거나 표시하는 애니메시션, 슬라이드, 페이드 효과 등을
		간단히 구현할 수 있습니다.
	- 클로스 브라우저 호환성 : jquery는 다양한 웹 브라우저에서 동일한 방식으로 작동하도록
		해줍니다.
2. jquery 기본 사용번
	1) jquery 문법
		$()는 jquery의 핵심 함수로, html 요소를 선택하고 조작하는데 사용합니다.
		$(선택자).action();
 */
 	// DOM 즉 body에 있는 모든 태그를 객체로 인식할 수 있는 loading 준비된 상황에서
 	// 선택자를 지정해서 처리하겠다는 말..
	$(document).ready(function(){
		// body 안에 h2를 선택해서 text를  해당 내용으로 변경 처리..
		// text("출력할 문자 자체 데이터") : 저장
		// text() ==> 가져오기 처리..
		$("h2").text("로딩 후, 텍스트 변환") // 쓰기
		//alert("DOM객체 내용 읽기:"+$("#ckno").text()) // 읽기
		// html() : 태그를 랜더링(해석) 적용해서 출력,  text() 문자열 그대로 출력..
		$(".show").html("<h2>안녕하세요(태그를 쓰기 처리..)</h2>")
		$(".show1").text("<h2>안녕하세요(태그를 쓰기 처리..)</h2>")
		/*
		ex1) h1에 오늘의 인삿말을 대체해서 출력되게 하세요..
		ex2) h3의 내용을 가져와서, 다시 h3에 구매할 물건인 사과, 바나나를 처리하여
			결국은 구매할 물건:사과, 바나나 출력되게 하세요.. text() 가져오기(읽기) text("쓰기") 를 활용
		ex3) class="show2" div에 ul/li이용해서 구매할 물건 리스트 3개를 출력하세요.. 
		*/
		$("h1").text("Hello!!");
		//let cont = $("h3").text()
		//alert(cont)
		$("h3").text($("h3").text()+"사과, 바나나")
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
	<h1>오늘의 인삿말 처리</h1>
	<h3>구매할 물건:</h3>
	<div class="show2"></div>
  <h2>타이틀</h2>
  <div class="show"></div>
  <div class="show1"></div>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name=""  class="form-control mr-sm-2" />
	    <input placeholder="내용" name=""  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
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
        <th id="ckno">번호</th>
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
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" placeholder="직책명 입력" name="job">
	      </div>
	     </div>
	    </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>