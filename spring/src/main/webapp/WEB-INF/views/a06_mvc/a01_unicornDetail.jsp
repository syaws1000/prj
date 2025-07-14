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
  <h2>유니콘 상세</h2>
</div>
    <div class="container">
<%-- //unicornId unicornName unicornSpecialAbility --%>
        
        <form  method="post">
            <div class="form-group">
                <label for="unicornId">유니콘 아이디 </label>
                <input value="${uni.unicornId}" type="text" class="form-control" id="unicornId" name="unicornId" placeholder="유니콘 이름을 입력하세요" required>
            </div>        
            <div class="form-group">
                <label for="unicornName">유니콘 이름 </label>
                <input value="${uni.unicornName}"  type="text" class="form-control" id="unicornName" name="unicornName" placeholder="유니콘 이름을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="unicornSpecialAbility">유니콘 특별 기능</label>
                <input value="${uni.unicornSpecialAbility}"  type="text" class="form-control" id="unicornSpecialAbility" name="unicornSpecialAbility" 
                	placeholder="유니콘 특별 기능 입력하세요" required>
            </div>
            <button id="uptBtn" type="button" class="btn btn-primary">수정</button>
            <button id="delBtn"  type="button" class="btn btn-waring">삭제</button>
            <button id="maiBtn"  type="button" class="btn btn-info">메인</button>
        </form>
      </div>  
</body>
</html>