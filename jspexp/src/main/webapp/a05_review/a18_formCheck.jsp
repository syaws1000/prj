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
		let price = "${param.price}"
		if(price!=""){
			alert("가격이 너무 비싸네요 다시 입력!!")
		}
	});
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>가격 체크</h2>

</div>
<%-- 
price를 입력해서 
a19_process.jsp?price=3000 에 가격을 출력 하게 처리..	

가격 : @@@

출력이 완료되면 분기 조건으로 10000이상이면 다시 a18_formCheck.jsp로 이동
미만이면  a20_result.jsp	 적절한 가격 @@@ 원 표시..
--%>
<div class="container">
	<form id="frm01" class="form" action="a19_process.jsp" >
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="가격" name="price"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">가격 확인</button>
 	</nav>
	</form>
</div>	
</body>
</html>