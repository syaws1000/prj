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
        <h2>부서 등록</h2>
    </div>
    <div class="container">
        <form  method="post">
            <div class="form-group">
                <label for="deptno">부서번호</label>
                <input type="number" class="form-control" id="deptno" name="deptno" placeholder="부서번호를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="dname">부서명</label>
                <input type="text" class="form-control" id="dname" name="dname" placeholder="부서명을 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="loc">부서위치</label>
                <input type="text" class="form-control" id="loc" name="loc" placeholder="부서위치를 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>