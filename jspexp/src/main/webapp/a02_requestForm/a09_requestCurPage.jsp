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
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>요청을 현재 페이지에 처리했을 때....</h2>

</div>
<%-- 
# 요청호출페이지와 요청값을 처리하는 페이지가 동일한 페이지 일 때,
1. 물리적인 파일은 하나이나, 논리적인 파일은 두개인 것으로 생각하여야 한다.
2. 처리 기본 형식
	1) form의 .action 속성이 생략되어야 한다..'
	2) 요청값을 받을 때, 
		- 요청값을 받지 않을 때와 요청값을 받을 때를 구분하여 처리한다.
		a09_requestCurPage.jsp?call=오길동			
		
  a10_reqisterMember.jsp
  	  form 으로 아이디, 이름과 패스워스를 회원가입으로 입력되게 하고,
  	  가입된 결과를 출력할 때는 조건을 달아서 아이디, 이름, 패스워드가 출력되게 하고, 입력되기 전에는 해당 
  	  내용이 출력되지 않게 처리..		
--%>
<div class="container">
	<c:if test="${not empty param.call}">  <%-- jsp "" 이거나 null ==> empty
	                                                공백이 아니고 null아닐 때 ==> not empty
	                                        --%>
		<h2>요청값: ${param.call}</h2>
	</c:if>
	<form id="frm01" class="form"  >
		
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="요청값 전달" name="call" value="${param.call}" class="form-control mr-sm-2" />
	    <%-- value는 이전에 입력값을 요청후, 표현할 때, 사용된다. --%>
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