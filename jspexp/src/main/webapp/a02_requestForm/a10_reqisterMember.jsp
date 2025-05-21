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
  <h2>회원가입</h2>

</div>
<%-- 
  	  form 으로 아이디, 이름과 패스워스를 회원가입으로 입력되게 하고,
  	  가입된 결과를 출력할 때는 조건을 달아서 아이디, 이름, 패스워드가 출력되게 하고, 입력되기 전에는 해당 
  	  내용이 출력되지 않게 처리..			
--%>
<div class="container">
	<form id="frm01" class="form">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="아이디" name="id"  class="form-control mr-sm-2" />
	    <input placeholder="이름" name="name"  class="form-control mr-sm-2"/>
	    <input placeholder="패스워드" name="pwd"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">회원가입</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
 	</nav>
	</form>
	<c:if test="${not empty param.id}">
		<h2 class="text-center">회원가입내용..</h2>
	    <table class="table table-hover table-striped">
	   	<col width="33%">
	   	<col width="34%">
	   	<col width="33%">
	    <thead>
	      <tr class="table-success text-center">
	        <th>아이디</th>
	        <th>이름</th>
	        <th>패스워드</th>
	      </tr>
	    </thead>	
	    <tbody>
	    	<tr><td>${param.id}</td><td>${param.name}</td><td>${param.pwd}</td></tr>
	    </tbody>
		</table>    
    </c:if>
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