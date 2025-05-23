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
# jquery의 선택자
1. jquery의 선택자는 css 선택자와 유사한 문법을 사용하여 html 요소를 선택하고, 선택된
요소에 대해 다양한 작업을 수행할 수 있게 해줍니다. jquery 선택자는 html 문서에서 요소를
쉽게 찾고 조작하는 데 중요한 역할을 합니다.
2. 기본 형식
	jquery 선택자는 주로 $() 함수 안에 넣어 사용합니다. 이 함수는 css 스타일의 선택자를
	사용하여  DOM에서 요소를 선택하여, 선택된 요소의 메서드를 호출하여 조작할 수 있습니다.
	$("selector").action()
	selector : html 요소를 선택하는 기준(css 선택자와 유사)
	action : 선택된 요소에 대해 실행할 작업(예) text(), css(), click() 등)
3. 선택자의 종류
	1) id 선택자 : 태그의 속성이 id값을 가진 요소를 선택합니다.
		$("#선택자아이디")
		<h2 id="ch01"></h2>
		$("#ch01").text("선택했습니다. 아이디를!!")
	2) class 선택자 : 특정한 클래스 값을 가진 모든 요소를 선택합니다.
	    $(".클래스명")
	    <h2 class="cls01"></h2>
	    <h2 class="cls01"></h2>
	    <h2 class="cls01"></h2>
	    $(".cls01").text("모든 cls01 클래스 한꺼번에 변경")
	 3) 태그 선택자 : 특정 html 태그를 선택합니다.
	 	$("태그명")
	 	<p>오늘의 영어</p>
	 	$("p").text("오늘의 프로그래밍!!")
	 4) 그외 속성 선택자($("input[type=text]")), 전체 선택자($("*"))
	    자식/자손 선택자($("div .cls01")) 현제선택자$("#first+#second")
	    조합선택자($("#header, .content"))
	    
 
 */
	$(document).ready(function(){
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>타이틀</h2>

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