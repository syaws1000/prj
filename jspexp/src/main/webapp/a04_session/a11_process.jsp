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
<jsp:useBean id="dao" class="jspexp.a10_database.A06_MemberDao2"/>
<jsp:useBean id="memReq" class="jspexp.a10_database.dto.MemberDto" scope="request"/>
<jsp:setProperty property="*" name="memReq"/>
<c:set var="pgMem" value="${dao.login(memReq}"/>
<body>
  <c:choose>
  	<c:when test="${not empty pgMem}">
  		<c:set var="mem" value="${pgMem}" scope="session"/>
  		<jsp:forward page="a12_main.jsp"/>	
  	</c:when>
  	<c:otherwise>
  		<jsp:forward page="a10_login.jsp"/>
  	</c:otherwise>
  </c:choose>
<%-- 
A06_MemberDao2 dao = new A06_MemberDao2();
MemberDto memReq = new MemberDto();
?id=@@@&pwd=@@@
memReq.setId(request.getParameter("id"));
memReq.setPwd(request.getParameter("pwd"));
MemberDto pgMem = dao.login(memReq);
if(pgMem!=null){
	session.setAttribute("mem", pgMem);
	<jsp:forward page="a12_main.jsp"/>	
}else{
	<jsp:forward page="a10_login.jsp"/>
}




1. USEBEAN설정
// jspexp.a10_database.dto.MemberDto
// jspexp.a10_database.A06_MemberDao2
2. 조건에 따른  main화면 또는 로그인화면 이동 처리..		
--%>
</body>
</html>