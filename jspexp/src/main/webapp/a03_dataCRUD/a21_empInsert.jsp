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
        <h2>사원 등록</h2>
    </div>
    <div class="container">
        <form method="post">
            <div class="form-group">
                <label for="ename">사원명</label>
                <input type="text" class="form-control" id="ename" name="ename" placeholder="사원명을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="job">직책명</label>
                <input type="text" class="form-control" id="job" name="job" placeholder="직책명 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="mgr">관리자번호</label>
                <input type="number" class="form-control" id="mgr" name="mgr" placeholder="관리자번호 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="hiredateStr">입사일</label>
                <input type="date" class="form-control" id="hiredateStr" name="hiredateStr" placeholder="입사일 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="sal">급여</label>
                <input type="number" class="form-control" id="sal" name="sal" placeholder="급여 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="comm">보너스</label>
                <input type="number" class="form-control" id="comm" name="comm" placeholder="보너스 입력하세요" required>
            </div>
             <div class="form-group">
                <label for="deptno">부서번호</label>
                <input type="number" class="form-control" id="deptno" name="deptno" placeholder="부서번호 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
            <button type="button" class="btn btn-success"
            	onclick="location.href='a19_empSchList.jsp'">메인화면 이동</button>
        </form>
      </div>  
</body>
</html>