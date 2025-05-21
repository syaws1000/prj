<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
<%-- post 방식 한글 encoding 처리 --%>
<!DOCTYPE html>
<%--
# form의 get/post 방식
1. html form 태그는 사용자가 데이터를 입력하고 서버로 전송하는 데 사용됩니다.
	이 때, 데이터 전송 방식으로 get과 post 방식이 있습니다.
	이 두 방식의 차이점을 이해하는 것이 매우 중요합니다.
2. get 방식
	1) get 방식은 url에 데이터를 포함시켜 서버로 전송합니다. 주로 검색이나 필터링과 같은
		읽기 작업에 사용됩니다.
	2) url에 데이터를 담기 때문에 보안에 취약하며, 전송할 수 있는 데이터 크기가 제한적입니다.
	3) url에 데이터를 표시하므로 사용자 데이터를 쉽게 확인할 수 있습니다.
	# 요약
	1. url에 데이터를 포함하여 전송
	2. 데이터 크기 제한(웹 서버나 브라우저에 따라 다름)
	3. 보안에 취약(url에 데이터가 표시되므로)
	4. form에 속성을 설정하지 않으면 default로 get방식으로 전송된다. - URL을 통해서 LINK/JS로 처리..
3. post 방식
	1) post방식은 데이터를 http 본문(body)에 담아서 전송합니다. 데이터 크기가 제한 없이 
		전송될 수 있어 보안이 필요한 작업이나 데이터의 크기가 큰 경우 사용됩니다.
	2) get방식과 달리 url에 데이터가 표시되지 않으므로, 보안이 필요한 데이터를 전송할 때 적합합니다.
	# 요약
	1. url에 데이터를 표시하지 않음
	2. 데이터 크기 제한이 없음
	3. 보안에 필요한 데이터 전송에 사용
	4. form에 속성으로 method="post"로 지정하여야 한다.

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