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
<link href="https://fonts.googleapis.com/css2?family=Spoqa+Han+Sans:wght@400;700&display=swap" rel="stylesheet">

<style>
	td{text-align:center;}
	span{ font-family: 'Spoqa Han Sans', sans-serif;;font-size:15pt;}
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
  <h2>이미지정보</h2>

</div>
<%-- 
		
--%>
<div class="container">
        <form  method="post">
            <div class="form-group">
                <label for="no">번호</label>
                <input value="${imgOb.no}" type="text" class="form-control" id="no" name="no" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="author"></label>
                <span>${imgOb.title }</span>
            
            </div>            
            <div class="form-group">
                <label for="content">이미지</label><br>
                <img src="img/${imgOb.imgsrc}" class="img-thumbnail" alt="Cinque Terre">
            </div>

            <button type="submit" class="btn btn-primary">등록</button>
        </form>
    
</div>

</body>
</html>