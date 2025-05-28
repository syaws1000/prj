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
# session scope
1. 웹 개발에서 중요한 개념으로, 사용자가 웹 애플리케이션에 접속한 후 세션이 유지되는 동안
사용할 수 있는 저장 공간을 말한다. 이를 통해 로그인 정보나 사용자 설정과 같은 데이터를 
유지하고 관리 할 수 있습니다. 세션은 사용자가 웹사이트를 떠날 때까지 유지되며, 다시 접속할
때 이전 상태를 복원하는데 사용됩니다.
2. session scope 범위
	1) page scope : 페이지 내에서만 유효한 범위, 현재 페이지에서만 접근 가능
	2) request scope : 한 http 요청에 대해서만 유효한 범위, 서버로부터 클라이어트로
		보내진 데이터가 요청이 끝나면 소멸된다
	3) session scope : 클라이언트가 서버와 연결되어 있는 세션 동안 유효화 범위,
		사용자가 웹 애플리케이션을 사용하는 동안 데이터를 유지
	4) application scope : 애프리케이션이 시작되고 종료될 때까지 유효한 범위,
		모든 클라이언트에서 공유되는 데이터
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
<c:set var="var01" value="페이지범위"  scope="page"/>
<c:set var="var02" value="요청범위"  scope="request"/>
<c:set var="var03" value="세션범위"  scope="session"/>
<c:set var="var04" value="어플리케이션범위"  scope="application"/>
<div class="jumbotron text-center">

  <h2>세션 scope 확인</h2>
  <h3>${var01}</h3>
  <h3>${var02}</h3>
  <h3>${var03}</h3>
  <h3>${var04}</h3>
  <a href="a02_session.jsp">페이지 이동시 과연 session scope?</a>

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