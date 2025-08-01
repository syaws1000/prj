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
		$("#regBtn").click(function(){
			location.href="unicornInsert"
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>유니콘 리스트</h2>

</div>

<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="유니콘명" name="unicornName"  value="${param.unicornName}" class="form-control mr-sm-2" />
	    <input placeholder="유니콘특별능력" name="unicornSpecialAbility" value="${param.unicornSpecialAbility}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button id="regBtn" class="btn btn-success" type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="20%">
   	<col width="30%">
   	<col width="50%">
    <thead>
      <tr class="table-success text-center">
        <th>아이디</th>
        <th>유니콘명</th>
        <th>특별기능</th>
        <%--// 입력 : unicornName unicornSpecialAbility // 출력 : unicornId unicornName unicornSpecialAbility	
        			d.addAttribute("list", service.unicornZooList(sch));
        	 --%>
      </tr>
    </thead>	
    
    
    <tbody>
    	<c:forEach var="uni" items="${list}">
    	
    		<tr ondblclick="goDetail(${uni.unicornId})"><td>${uni.unicornId}</td><td>${uni.unicornName}</td><td>${uni.unicornSpecialAbility}</td></tr>
    	</c:forEach>
    </tbody>
	</table>    
	<script type="text/javascript">
	function goDetail(id){
		location.href="unicornDetail?unicornId="+id
	}
	
	</script>
    
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">타이틀</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" placeholder="직책명 입력" name="job">
	      </div>
	     </div>
	    </form> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>