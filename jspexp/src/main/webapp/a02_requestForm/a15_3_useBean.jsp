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
 물건명(pname), 가격(pay), 갯수(count)를 요청키로 form 에서 데이터를 전송해서 출력되게 처리하세요

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
<jsp:useBean id="pro" class="jspexp.a01_vo.ProductVO"/>
<jsp:setProperty property="*" name="pro"/>
<%-- 요청값을 객체로 만들어지면, dao 기능메서드의 매개변수롤 전달 가능..
	dao.inserXXX(pro)   --%>
<body>
<div class="jumbotron text-center">
  <h2>요청값</h2>
  <h2>${pro.pname}</h2>
  <h2>${pro.pay}</h2>
  <h2>${pro.count}</h2>
<jsp:useBean id="bk" class="jspexp.a01_vo.BookVO"/>
<jsp:setProperty property="*" name="bk"/>
  <h2>${bk.bkTitle}</h2>
  <h2>${bk.price}</h2>
  <h2>${bk.writer}</h2>
</div>
<%-- 
	ex) 도서명(bkTitle), 가격(price), 저자(writer)로 요청값을 form으로 만들고 BookVO 객체로 useBean으로
	처리되어 출력되게 하세요..


	ex) 물건명(name), 가격(price), 구매자(buyer)..
	    [   ]    [   ]  [    ]
	    
--%>
<div class="container">
	<form id="frm02" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="도서명" name="bkTitle"  class="form-control mr-sm-2" />
	    <input placeholder="가격" name="price"  class="form-control mr-sm-2"/>
	    <input placeholder="저자" name="writer"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" 
	    	data-toggle="modal" data-target="#exampleModalCenter"
	        type="button">등록</button>
 	</nav>
 	</form>

	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="물건명" name="pname"  class="form-control mr-sm-2" />
	    <input placeholder="가격" name="pay"  class="form-control mr-sm-2"/>
	    <input placeholder="갯수" name="count"  class="form-control mr-sm-2"/>
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