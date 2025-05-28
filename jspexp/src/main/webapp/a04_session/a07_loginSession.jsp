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
# login을 통한 session 값 처리 예제..
1. login id와 pwd를 확인하여, 해당 id/pwd DB에 값이 있으면 session을
	설정해서 다른 페이지에 이동하더라도 권한과 이름을 출력가능하게 처리하고,
	만약에 없으면 다시 login 화면으로 이동하여 하여 처리하게 한다.
	

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
  <h2>로그인</h2>
</div>
<div class="container">
	<form id="frm01" class="form" action="a08_loginDB.jsp" method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="아이디" name="id"  class="form-control mr-sm-2" />
	    <input placeholder="패스워드" name="pwd"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">로그인</button>
 	</nav>
	</form>
</div>
</body>
</html>