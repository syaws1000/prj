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
		
    	$("#mainBtn").click(function(){
			location.href="customerList"
    	})		
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>고객 상세(${cus.customerName} - ${param.customerId})</h2>
</div>
   <div class="container">
        <form  method="post">
             <div class="form-group">
                <label for="customerId">고객아이디</label>
                <input type="text" value="${cus.customerId}" class="form-control" id="customerId" name="customerId"  readOnly required>
            </div>       
            <div class="form-group">
                <label for="customerName">이름</label>
                <input type="text" value="${cus.customerName}"  class="form-control" id="customerName" name="customerName" placeholder="이름을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="customerEmail">메일</label>
                <input type="text" value="${cus.customerEmail}"  class="form-control" id="customerEmail" name="customerEmail" placeholder="메일를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="customerPhone">전화번호</label>
                <input type="text" value="${cus.customerPhone}"  class="form-control" id="customerPhone" name="customerPhone" placeholder="전화번호를 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="customerAddress">주소</label>
                <textarea class="form-control" id="customerAddress" name="customerAddress"
                 rows="5" placeholder="주소를 입력하세요" required>${cus.customerAddress}</textarea>
            </div>
            <button type="button" id="uptBtn" class="btn btn-primary">수정</button>
            <button type="button" id="delBtn" class="btn btn-warning">삭제</button>
            <button type="button" class="btn btn-info" id="mainBtn">메인화면</button>
        </form>
      </div>  
</body>
</html>