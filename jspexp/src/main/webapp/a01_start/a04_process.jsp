<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<%--
# 비교 연산자/논리 연산자에 의한 조건문 반복문 처리..
1. script
	<%%> scriptlet과 out.println(), <%=%> expression을 활용하여,
	자바 코드에 의해 처리된다.
2. el/jstl
	el의 비교 연산식/논리연산식에 jstl의 <c:if> <c:choose><c:when> 구문과
	<c:forEach> 구문에 의해서 조건문과 반복문이 처리된다.

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
  <h2>script 조건문 처리</h2>
  <%
  int point = 50;
  
  if(point>=60){
	  out.println("<h3>합격</h3>");
  }else{
	  out.println("<h3>불합격</h3>");
  }
  
  // ex) int 나이를 설정하고,  18세 이상일 때는 성인 그외는 미성년자로 출력하세요..
  int age = 25;
  out.println("<h2>입력한 나이:"+age+"</h2>");
  if(age<18){
	  out.println("<h3>안녕하세요! 미성년자 여러분!</h3");
  }else if(age>=18 && age < 60){
	  out.println("<h3>안녕하세요!! 성인 여러분!!</h3>");
  }else{
	  out.println("<h3>안녕하세요!! 황금 노년의 여유!!</h3>");
  }
  
  request.setAttribute("age", 25);
  %>
  <h1>el/jstl을 활용한 조건문 처리</h1>
  <c:if test="${age>=18}"><h2>성년이므로 통과</h2></c:if>  
  <%-- jstl에서는 if else 형식으로 할 수 없고 choose when 구문에 의해 처리된다. --%>
  <c:choose>
  	<c:when test="${age<18}">
  		<h2>안녕하세요! 미성년자 친구..</h2>
  	</c:when>
  	<%-- else 문이 포함되어 위의 조건을 제외하고... --%>
  	<c:when test="${age<65 }">
  		<h2>안녕하세요!! 성인 여러분!!</h2>
  	</c:when>
  	<c:otherwise>
  		<h2>안녕하세요! 황금 노년을 즐기세요..</h2>
  	</c:otherwise>
  </c:choose>
  <%
  request.setAttribute("ranNo", (int)(Math.random()*10+1)); // 임의의 수 1~10
  request.setAttribute("chNo",5); // 선택한 수..
  %> 
  <h2>임의의 수:${ranNo}</h2>
  <c:choose>
  	<c:when test="${ranNo==chNo}">
  		<h3>빙고!! 숫자를 맞추었습니다.</h3>
  	</c:when>
  	<c:when test="${chNo>ranNo}">
  		<h3>틀렸습니다. 보다 큰 숫자를 입력하셨네요.</h3>
  	</c:when>
  	<c:otherwise>
  		<h3>틀렸습니다. 보다 작은 숫자를 입력하셨네요.</h3>
  	</c:otherwise>
  </c:choose>
</div>
<%-- 
chNo와 ranNo	비교해서, 동일하면 빙고!! 숫자를 맞추었습니다.
chNo>ranNo보다 크면  틀렸습니다. 보다 큰 숫자를 입력하셨네요.
        그외                보다 작은 숫자를 입력하셨네요..
		
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