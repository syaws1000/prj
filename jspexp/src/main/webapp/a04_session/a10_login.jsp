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
    /* Gradient background */
    body {
      background: linear-gradient(to right, #6a11cb, #2575fc);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .card {
      padding: 2rem;
      border-radius: 1rem;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .btn-primary {
      background-color: #6a11cb;
      border: none;
    }
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		let id = "${memReq.id}"
		if(id!=""){
			alert(id+" 로그인 실패");
		}
	});
</script>
</head>
	<c:set var="mem" value="${null}" scope="session"/>
	<%-- 세션을 삭제하는 처리.. --%>
<body>
  <div class="card shadow-lg" style="width: 100%; max-width: 400px;">
    <h2 class="text-center">로그인</h2>
    <p class="text-center">Please sign in to your account.</p>

    <form action="a11_process.jsp" method="post">
      <div class="mb-3">
        <label for="email" class="form-label">아이디</label>
        <input type="text" name="id" class="form-control" id="email" placeholder="아이디 입력" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">패스워드</label>
        <input type="password" name="pwd" class="form-control" id="password" placeholder="패스워드 입력" required>
      </div>
      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="rememberMe">
        <label class="form-check-label" for="rememberMe">Remember me</label>
      </div>
      <div class="d-grid">
        <button type="submit" class="btn btn-primary">로그인</button>
      </div>
      <div class="text-center mt-3">
        <a href="#">Forgot password?</a>
      </div>
    </form>
  </div>
</body>
</html>