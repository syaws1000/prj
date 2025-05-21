<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<%--
# jsp의 Form과 요청값 처리
1. jsp에서 form은 html 페이지 내에서 사용자가 데이터를 입력하고 서버로 전송하는 방법을 
	제공합니다.
2. jsp에서 요청값을 주로 HTTP요청을 통해 전달됩니다. 사용자가 html form을 통해 데이터를
	입력하고 제출하면, jsp페이지는 해당 데이터를 http 요청 객체(request)에서 꺼내어 처리할 수 있습니다.
3. 요청값 처리 단계
	1) html form 작성 : 사용자는 데이터를 입력할 수 있는 폼을 작성합니다.
	2) 폼 제출 : 사용자가 폼을 제출하면 데이터를 서버로 전송합니다. 이때, 폼의 method 속성(get 또는 post)에
		따라 데이터가 서버로 전송됩니다.
	3) 서버 측 처리 : jsp에서는 request.getParameter()/${param.@@@}를 사용하여 폼 데이터를 처리하고,
		이를 활용하여 동적인 웹 페이지를 생성합니다.
	4) 응답 생성 : 데이터를 처리한 후, jsp 페이지가 결과를 사용자에게 출력합니다.
4. 핵심 프로세스
	1) 일반적으로 특정한 페이지에서 특정한 페이지로 이동할 때,
		<a href="이동할페이지.jsp">페이지이동</a>
		즉, url로 이동할페이지.jsp로 페이지를 전환하여 이동한다.
	2) 이 때, 위 form에 특정데이터를 입력하면 아래의 형식으로 페이지 이동과 함께 이동할 페이지에 데이터를 전송한다.
		이동할페이지.jsp?요청key=요청값
	3) 이렇게 페이지가 이동하면서 요청key와 요청값을 해당 페이지에서는 request.getParameter("요청키")로
		요청키에 맞는 요청값을 받아서, 이 요청값에 따라서 데이터베이스를 처리하거나, 페이지에 대한 비지니스로직으로
		처리하게 된다..
			
		
		
		
				

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
  <h2>타이틀</h2>

</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name=""  class="form-control mr-sm-2" />
	    <input placeholder="내용" name=""  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped">
   	<col width="10%">
   	<col width="50%">
   	<col width="15%">
   	<col width="15%">
   	<col width="10%">
    <thead>
    
      <tr class="table-success text-center">
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회</th>
      </tr>
    </thead>	
    <tbody>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    	<tr><td></td><td></td><td></td><td></td><td></td></tr>
    </tbody>
	</table>    
    
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