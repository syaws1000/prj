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
# jquery에 속성 처리 관련 attr, css 메서드
1. jquery에서 DOM 요소의 속성, 스타일을 쉽게 읽고 수정할 수 있도록 다양한 메서드를
	제공합니다. attr(), css()는 그 중에서도 가장 기본적이고 중요한 메서드입니다.
	이 두 메서드는 각각 요소의 속성과 스타일을 처리하는 데 사용됩니다.
2. attr() 메서드 속성 처리
	attr() 메서드는 html 요소의 속성을 읽거나 수정하는 데 사용됩니다.
	attr() 메서드를 통해 id, class, href, src, value 와 같은 속성값을 가져오거나
	설정할 수 있습니다.
	1) 기본 형식.
		$("선택자").attr("속성") : 해당 선택자의 속성에 할당된 속성값 가져오기.
		$("선택자").attr("속성","속성값") : 해당 선택자의 속성과 속성값 설정하기..
	2) 다중의 속성 지정하기
		$("선택자").attr({속성:속성값, 속성2:속성2값,...})
 */
	$(document).ready(function(){
		
		$("h2").eq(0).click(()=>{
			$("h2").eq(0).attr("align","left")
		})
		$("h2").eq(1).click(()=>{
			$("h2").eq(1).attr("align","right")
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>정렬처리.(왼쪽으로)</h2>
  <h2>정렬처리.(오른쪽으로)</h2>

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