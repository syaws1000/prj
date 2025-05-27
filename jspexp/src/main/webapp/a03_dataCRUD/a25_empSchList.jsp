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
		/*
	    <button class="btn btn-success" id="regBtn"
	        type="button">등록</button>		
		*/
		$("#regBtn").click(()=>{
			alert("사원정보 등록")
			location.href="a21_empInsert.jsp";
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>사원정보리스트</h2>

</div>
<%-- 
		
--%>
<jsp:useBean id="sch" class="jspexp.a10_database.dto.Emp"/>
<jsp:setProperty property="*" name="sch"/>
<jsp:useBean id="dao" class="jspexp.a10_database.A02_EmpDao"/>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="사원명" name="ename" value="${sch.ename}"  class="form-control mr-sm-2" />
	    <input placeholder="직책명" name="job" value="${sch.job}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" id="regBtn"
	        type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
   	<col width="20%">
    <thead>
    
      <tr class="table-success text-center">
        <th>사원번호</th>
        <th>사원명</th>
        <th>직책명</th>
        <th>급여</th>
        <th>부서번호</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="emp" items="${dao.getEmpSch(sch)}">
    	<tr><td>${emp.empno}</td><td>${emp.ename}</td><td>${emp.job}</td>
    		<td>${emp.sal}</td><td>${emp.deptno}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
</div>
</body>
</html>