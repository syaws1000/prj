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
  <h2>고객 등록</h2>
</div>
<%-- 
customerId customerName customerEmail customerPhone customerAddress		
--%>
    <div class="container">

        <form  method="post">
            <div class="form-group">
                <label for="customerName">이름</label>
                <input type="text" class="form-control" id="customerName" name="customerName" placeholder="이름을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="customerEmail">메일</label>
                <input type="text" class="form-control" id="customerEmail" name="customerEmail" placeholder="메일를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="customerPhone">전화번호</label>
                <input type="text" class="form-control" id="customerPhone" name="customerPhone" placeholder="전화번호를 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="customerAddress">주소</label>
                <textarea class="form-control" id="content" name="customerAddress" rows="5" placeholder="주소를 입력하세요" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
            <button type="button" class="btn btn-success" id="mainBtn">메인화면</button>
            <script type="text/javascript">
            	$("#mainBtn").click(function(){
					location.href="customerList"
            	})
            </script>
        </form>
      </div>  
</body>
</html>