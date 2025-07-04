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
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>웃긴 영화!!</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="웃음 요소" name="laughPoints" value="${param.laughPoints}" class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">Search</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="34%">
   	<col width="33%">
    <thead>
      <tr class="table-success text-center">
        <th>아이디</th>
        <th>영화제목</th>
        <th>웃음포인트</th>
      </tr>
    </thead>	
    <%--	private int movieId;
	private String moviename;
	private String laughPoints; --%>
    <tbody>
    	<tr><td>${movie.movieId}</td><td>${movie.moviename}</td><td>${movie.laughPoints}</td></tr>
    </tbody>
	</table>    
    
</div>
</body>
</html>