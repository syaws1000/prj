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
# jquery이벤트 개요와 주요 속성
1. 이벤트는 사용자가 웹 페이지와 상호작용할 때 발생하는 동작(클릭, 마우스 오버, 키 입력 등)을
처리하는 방법입니다. jquery에서는 DOM요소에 이벤트 리스너를 쉽게 연결하고 이벤트에 대한 처리를
할 수 있습니다.
2. 주요 이벤트 종류
	1) 클릭 이벤트(click) : 사용자가 버튼이나 링크 등을 클릭할 때 발생합니다.
	2) 마우스 오버/아웃 이벤트(mouseover, mouseout):마우스를 요소 위에 올리거나 떼었을 때 발생합니다.
	3) 입력값 변경 이벤트(input, change):폼의 입력 값이 변경되었을 때 발생합니다.
	4) 폼 제출 이벤트(submit):폼이 제출될 때 발생합니다.
	5) 키보드 이벤트(keydown, keyup, keypress):사용자가 키보드에서 키를 눌렀을 때 발생합니다.
	6) 윈도우 크기 조정 이벤트(resize) : 브라우저 창 크기가 변경될 때 발생합니다.
	7) 타이머 이벤트(setTimeout, setInterval) : 일정 시간이 지난 후 또는 주기적으로 발생하는 이벤트입니다.
3. 이벤트 기본 사용법
	1) $(선택자).이벤트명(함수) 형식으로 사용됩니다.
		selector : 이벤트를 감지할 DOM요소
		이벤트명 : 이벤트 종류(click, mouseenter, keydown등)
		function : 이벤트 발생시 실행될 콜백 함수..
		

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
		$("h2").mouseover(()=>{
			// 마우서 오버된 객체 지정 ==> $(this)
			//$(this).css("color","lightgreen")
			$("h2").css("background","lightgreen");
			console.log("마우스 오버")
		})
		$("h2").mouseout(()=>{
			// 마우스 오버했다가 벗어났을 때 객체 지정 ==> $(this)
			$("h2").css("background","yellow")
			console.log("마우스 아웃")
		})
		// #div01 마우스 오버했을 때, 배경색상이 파랑색, 마우스 아웃했을 때, 배경색상이 빨강색으로 변경되게 하세요..
	});
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>마우스 커서를 올려보세요..</h2>
  <div id="div01" style="width:200px;height:200px;border:1px solid green"></div>
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