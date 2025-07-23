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
			alert(msg)
		}
	});
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>메일 발송</h2>
</div>
   <div class="container">
        <form method="post">
            <div class="form-group">
                <label for="receiver">수신자</label>
                <input type="text" class="form-control" id="receiver" name="receiver" placeholder="수신자를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="sender">발신자</label>
                <input type="text" readonly value="${sender}" class="form-control" id="sender" name="sender" >
            </div>     
             <div class="form-group">
                <label for="title">제목</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>                     
            <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">메일발송</button>
        </form>
      </div>  
</body>
</html>