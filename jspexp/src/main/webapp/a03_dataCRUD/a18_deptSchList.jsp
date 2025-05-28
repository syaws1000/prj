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
		$("#regBtn").click(  ()=>{
			alert("부서정보 등록 페이지 이동")
			location.href="a19_deptInsert.jsp";	
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>부서정보검색</h2>

</div>
<jsp:useBean id="dao" class="jspexp.a10_database.A03_DeptDao"/>
<%-- 
A03_DeptDao dao = new A03_DeptDao();		
--%>
<jsp:useBean id="sch" class="jspexp.a10_database.dto.Dept"/>
<%--
Dept sch = new Dept();
 --%>
<jsp:setProperty property="*" name="sch"/>
<%--
sch.setDname(request.getParameter("dname")); 
// <input  name="dname"  입력 후 submit를 클릭시, 받는 내용
sch.setLoc(request.getParameter("loc"));

<c:forEach var="dept" items="${dao.getDeptSch(sch)}">
  	<tr><td>${dept.deptno}</td>
  		<td>${dept.dname}</td>
  		<td>${dept.loc}</td></tr>

for(Dept dept:dao.getDeptSch(sch)){
	dept.getDeptno();
	dept.getDname();
	dept.getLoc();
}  	
  	
 --%>
 
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서명" name="dname" value="${param.dname}"  class="form-control mr-sm-2" />
	    <input placeholder="부서위치" name="loc"  value="${param.loc}"   class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" type="button" id="regBtn">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="34%">
   	<col width="33%">
    <thead>
      
      <tr class="table-success text-center">
        <th>부서번호</th>
        <th>부서명</th>
        <th>부서위치</th>
      </tr>
    </thead>	

    <tbody>
    	<c:forEach var="dept" items="${dao.getDeptSch(sch)}">
    	<tr ondblclick="goPage(${dept.deptno})" >
    		<td>${dept.deptno}</td><td>${dept.dname}</td><td>${dept.loc}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
	<script type="text/javascript">
		function goPage(deptno){
			location.href="a20_deptDetail.jsp?deptno="+deptno
		}
	</script>
    
</div>
</body>
</html>