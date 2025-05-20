<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
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
  <h2>jstl의 변수 선언과 반복문</h2>

</div>
<%-- 
# jstl로 변수 선언 방법
1. 간단하게 <c:set var="변수명" value="데이터" scope="page/request/session/application"/>
	1) 기존에 변수의 종류와 크기에 따라서 설정했지만, page의 진행/서버 처리 단위에 따라서	시간적/공간적 단위가 범위 추가된다.
	2) 기본적으로 설정하지 않으면(scope) 현재 페이지에서만 처리가 된다..
	3) 호출시 ${변수명} 호출 가능하다..	
	4) 어디에 선언되든지 전역변수로 설정이 된다.
--%>
<c:set var="no01" value="1000"/>
<c:set var="no02" value="2000"/>
<c:set var="no03" value="${no01+no02}"/>
<c:set var="str01" value="안녕하세요"/>
<%
for(int cnt=1;cnt<=10;cnt++){
%>
	<h2>카운트:<%=cnt%></h2>
<%
}
%>
<div class="container">
	<h2>${no01}, ${no02}, ${no03}, ${str01}</h2>
   <table class="table table-hover table-striped">
   	<col width="33%">
   	<col width="34%">
   	<col width="33%">
    <tbody>
    	<%
    	for(int cnt=1;cnt<=9;cnt++){
    		if(cnt%3==1){
    			out.println("<tr class='table-success text-center'>");
    		}
			out.println("<td>"+cnt+"</td>");
			if(cnt%3==0){
				out.println("</tr>");
			}    		
    	}
    	%>
    </tbody>
	</table>  	
	<%--
	ex) for을 이용해서 1~20까지 출력하되, 3의 배수일 때는 짝!! 이라고 출력되게 하세요..
	 --%>
	<%
	for(int cnt=1;cnt<=20;cnt++){
		if(cnt%3==0){
			out.println("<h2>짝</h2>");
		}else{
			out.println("<h2>"+cnt+"</h2>");
		}
	}
	%>
	<%--
	# jstl의 반복문 형식
	1. <c:forEach var="단위데이터" begin="시작번호" end="마지막번호" step="증감단위">
	2. <c:forEach var="단위데이터" items="배열형데이터" >
	--%>
	<c:forEach var="cnt" begin="1" end="10" step="1">
		<span>${cnt},</span>
	</c:forEach>
	<%--
	ex) 50~70까지 2씩 증가하여 h2로 출력하세요..
	 --%> 
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
    <tbody>
    	<c:forEach var="cnt" begin="50" end="80" step="2">
    	<c:if test="${(cnt-50)%8==0}">
    	<tr>
    	</c:if>
    		<td>${cnt}</td>
    	<c:if test="${(cnt-56)%8==0}">	
    	</tr>
    	</c:if>
    	</c:forEach>
    </tbody>
	</table>   	
	
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