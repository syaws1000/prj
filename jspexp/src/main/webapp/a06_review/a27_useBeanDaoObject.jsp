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
  <h2>Dto/VO 단일 객체 리턴하는 dao 처리</h2>
  <jsp:useBean id="dao" class="jspexp.a10_database.A05_ExpDao"/>
  <c:set var="stu" value="${dao.getStudent(2)}"/><%-- Student stu = dao.getStudent(1) --%>
  <h3>학생번호:${stu.no}</h3> <%-- stu.getNo() --%>
  <h3>학생이름:${stu.name}</h3>
  <h3>국어:${stu.kor}</h3>
  <h3>영어:${stu.eng}</h3>
  <h3>수학:${stu.math}</h3>
</div>
<%-- 
ex) a28_useBeanDao.jsp
	A03_DeptDao에 있는 getDept(10)  부서정보를 
	value에 할당해서 출력하세요..		
--%>
   <div class="container">
        <form action="등록처리Servlet" method="post">
            <div class="form-group">
                <label for="title">학생번호</label>
                <input type="text" value="${stu.no}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="title">학생명</label>
                <input type="text" value="${stu.name}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="title">국어</label>
                <input type="text" value="${stu.kor}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="title">영어</label>
                <input type="text" value="${stu.eng}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="title">수학</label>
                <input type="text" value="${stu.math}" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>