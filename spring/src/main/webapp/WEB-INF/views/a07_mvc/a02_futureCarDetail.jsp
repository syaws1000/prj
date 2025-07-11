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
				location.href="unicornList"
			}
		}
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>차량  상세</h2>
</div>
    <div class="container">
<%-- // carName carFeature fuelType releaseDate topSpeed --%>
        
        <form  method="post">
            <div class="form-group">
                <label for="carName">차량 이름 </label>
                <input value="${car.carName}"  type="text" class="form-control" id="carName" name="carName" placeholder="차량 이름을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="carFeature">차량 특징</label>
                <input value="${car.carFeature}"  type="text" class="form-control" id="carFeature" name="carFeature" 
                	placeholder="차량 특징 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="fuelType">연료 유형 </label>
                <input  value="${car.fuelType}"  type="text" class="form-control" id="fuelType" name="fuelType" placeholder="연료유형을 입력하세요" required>
            </div>                
            <div class="form-group">
                <label for="releaseDate">등록일</label>
                
                <input  value='<fmt:formatDate value="${car.releaseDate}" pattern="yyyy-MM-dd"/>'  type="date" class="form-control" id="releaseDate" name="releaseDate" required>
            </div>
            <div class="form-group">
                <label for="topSpeed">최고속도</label>
                <input  value="${car.topSpeed}"  type="text" class="form-control" id="topSpeed" name="topSpeed" required>
            </div>
            <button type="button" class="btn btn-info">수정</button>
            <button type="button" class="btn btn-warning">삭제</button>
            <button type="button" class="btn btn-success">메인화면</button>
        </form>
      </div>  
</body>
</html>