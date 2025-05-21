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
  <h2>타이틀</h2>

</div>
<%-- 
# forEach 구문 패턴2
1. <c:forEach>는 jstl에서 제공하는 반복문 태그로 java 컬렉션 객체나 배열을 
	순차적으로 반복하여 데이터를 처리하는 데 사용됩니다. 주로 리스트, 배열, 맵 등을
	반복할 때, 유용하게 사용됩니다.
2. 기본 형식
	empList가 dao에서 받아온 List<Emp> 일 때..
	<c:forEach var="emp" items="${empList}" varStatus="sts">
		${sts.count} ${emp.empno} ${emp.ename}
	</c>		
	1) items : 반복할 데이터의 컬렉션 객체나 배열을 지정합니다. 예를 들어,
		List, Set, Map, 배열 등이 될 수 있습니다.
	2) var : 반복문 내에서 사용할 변수의 이름을 지정합니다. 각 반복에서 해당
		항목을 이 변수에 할당하여 사용할 수 있습니다.
	3) varStatus : 반복문에 대한 상태 정보를 담는 변수입니다. 이 속성은
		반복문의 인덱스(index), 반복 횟수(count), 마지막 항목 여부(last),
		첫번째 항목 여부(first) 등을 알 수 있습니다.
	4) begin : 반복의 시작 인덱스를 지정합니다. 기본값은 0입니다.
	5) end : 반복의 종료 인덱스를 지정합니다. 이 값은 반복문이 끝날 인덱스를
		지정하여, 기본값을 items의 크기입니다.
	6) step : 반복문에서 항목을 건너뒤는 간격을 지정합니다. 예를 들어, step="2"
		두번째 항목마다 반복을 진행합니다.
--%>
<%
	request.setAttribute("fruits", new String[]{"사과","바나나","딸기"});
%>
<div class="container">
	<c:forEach var="fruit" items="${fruits}" varStatus="sts">
		<h2>${sts.count}) ${fruit}[${sts.first},${sts.last}]</h2>
	</c:forEach>
<%
// points로 점수를 배열로 선언하여 forEach 구문에 의해서 학생들의 점수를 리스트해보세요..
	request.setAttribute("points", new int[]{70,80,90});
%>	
	<c:forEach var="point" items="${points}" varStatus = "sts">
		<h2>${sts.count}) ${point}</h2>
	</c:forEach>	
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