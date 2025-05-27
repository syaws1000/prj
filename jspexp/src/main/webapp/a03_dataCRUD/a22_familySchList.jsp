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
	$(document).ready(function(){
		$("#regBtn").click(()=>{
			alert("등록화면이동")
			location.href="a23_familyInsert.jsp";
		})
	});
</script>
</head>
<%--
  1. 요청값 1개씩 확인
  <h3>${param.name}</h3>
  <h3>${param.pname}</h3>
  2. 요청값을 usebean으로 확인..
  <h4>${f.name}</h4>
  <h4>${f.pname}</h4>
 --%>
<body>
<div class="jumbotron text-center">
  <h2>가족정보</h2>
  <h3>요청값 처리 연습</h3>

  <jsp:useBean id="sch" class="jspexp.a10_database.dto.Family"/>
  <jsp:setProperty property="*" name="sch"/>
</div>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="이름" name="name" value="${sch.name}" class="form-control mr-sm-2" />
	    <input placeholder="부모이름" name="pname" value="${sch.pname}"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" type="button" id="regBtn">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
      <tr class="table-success text-center">
        <th>아이디</th>
        <th>이름</th>
        <th>부모아이디</th>
        <th>부모명</th>
      </tr>
    </thead>	
    <jsp:useBean id="dao" class="jspexp.a10_database.A04_FamilyDao"/>
    <tbody>
    	<c:forEach var="fa" items="${dao.getFamilySch(sch)}">
    		<tr><td>${fa.personId}</td><td>${fa.name}</td>
    			<td>${fa.parentId}</td><td>${fa.pname}</td></tr>
    	</c:forEach>
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