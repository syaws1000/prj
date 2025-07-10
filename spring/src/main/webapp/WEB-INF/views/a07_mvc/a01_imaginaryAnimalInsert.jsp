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
		let msg = "${msg}"
		if(msg!=""){
			if(!confirm(msg+"\n계속 등록하시겠습니까?")){
				location.href="imaginaryAnimalList"
			}
		}
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>상상속 동물 등록</h2>
</div>
    <div class="container">
        <form  method="post">
            <div class="form-group">
                <label for="animalName">동물명</label>
                <input type="text" class="form-control" id="animalName" name="animalName" placeholder="동물명 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="animalAbility">능력 </label>
                <input type="text" class="form-control" id="animalAbility" name="animalAbility" placeholder="능력을 입력하세요" required>
            </div>
                       
            <div class="form-group">
                <label for="habitat">습관</label>
                <input type="text" class="form-control" id="habitat" name="habitat" 
                	placeholder="습관을 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>