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
  <h2>상상속 동물 상세</h2>
</div>
    <div class="container">
        <form  method="post">
        <%--
        ${ani.unicornId} ${uni.unicornName} ${uni,unicornSpecialAbility}
         --%>
            <div class="form-group">
                <label for="animalId">동물아이디</label>
                <input type="text" readonly value="${ani.animalId}" class="form-control" id="animalId" name="animalId" placeholder="동물명 입력하세요" required>
            </div>
                   
            <div class="form-group">
                <label for="animalName">동물명</label>
                <input type="text" value="${ani.animalName}"  class="form-control" id="animalName" name="animalName" placeholder="동물명 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="animalAbility">능력 </label>
                <input type="text" value="${ani.animalAbility}"  class="form-control" id="animalAbility" name="animalAbility" placeholder="능력을 입력하세요" required>
            </div>
                       
            <div class="form-group">
                <label for="habitat">습관</label>
                <input type="text" value="${ani.habitat}"  class="form-control" id="habitat" name="habitat" 
                	placeholder="습관을 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-info">수정</button>
            <button type="submit" class="btn btn-warning">삭제</button>
            <button type="submit" class="btn btn-success">메인화면으로</button>
        </form>
      </div>  
</body>
</html>