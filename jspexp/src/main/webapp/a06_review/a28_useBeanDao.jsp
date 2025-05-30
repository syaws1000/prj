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
<jsp:useBean id="dao" class="jspexp.a10_database.A03_DeptDao"/>
<c:set var="dept" value="${dao.getDept(20)}"></c:set>
<div class="jumbotron text-center">
  <h2>부서정보</h2>

</div>
    <div class="container">

        
        <form action="등록처리Servlet" method="post">
            <div class="form-group">
                <label for="title">부서번호</label>
                <input type="text" value="${dept.deptno}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="author">부서명</label>
                <input type="text"  value="${dept.dname}"  class="form-control" id="author" name="author" placeholder="작성자를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="author">부서위치</label>
                <input type="text"  value="${dept.loc}"  class="form-control" id="author" name="author" placeholder="작성자를 입력하세요" required>
            </div>

            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>>