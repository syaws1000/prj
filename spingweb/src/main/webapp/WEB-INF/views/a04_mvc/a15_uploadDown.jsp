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
  <h2>업로드 다운로드 연습2</h2>
</div>
<div class="container">
	<form id="frm01" class="form" enctype="multipart/form-data"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input type="file" multiple="multiple" placeholder="파일첨부" name="reports"  class="form-control mr-sm-2" />
	    <button class="btn btn-info" type="submit">업로드</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="80%">
    <thead>
      <tr class="table-success text-center">
        <th>번호</th>
        <th>파일명</th>
      </tr>
    </thead>	
    <tbody>
    	<c:forEach var="fname" items="${flist}" varStatus="sts">
    		<tr ondblclick="download('${fname}')"><td>${sts.count}</td><td>${fname}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
	<script type="text/javascript">
		function download(fname){
	
			if(confirm(fname+" 다운하시겠습니까?")){
				location.href="download5?downFile="+fname
			}
		}
	</script>
</div>
</body>
</html>