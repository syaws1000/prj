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
/*
# jquery에서 출력 처리관련 action
1. text   $("선택자").text()
2. html   $("선택자").html()
3. val
	$("[name=age]").val()  : 저장된 value 값을 가져오는 action 메서드
	$("[name=loc]").val("서울")  : 저장된 value 값을 설정하는 action 메서드
	

# jquery에서 속성 처리관련 action
1. attr
2. css
 */
	$(document).ready(function(){
		$("#sumBtn").click(()=>{
			let kor = parseInt( $("[name=kor]").val() ) // 읽기 val()와 숫자형 변환
			let eng = parseInt( $("[name=eng]").val() )
			$("[name=sum]").val(kor+eng) // 합산된 결과를 쓰기 val() 처리.
		})
		// ex) 물건명name, 가격price, 갯수cnt를 지정하여 총비용을 input 요소에 출력하세요..
		$("#calPay").click(()=>{
			let price = $("[name=price]").val()
			let cnt = $("[name=cnt]").val()  
			$("[name=sumPay]").val(price*cnt) // 가격과 갯수를 곱해서 처리..
		})
	});
	// ex) input
</script>
</head>
<body>
<div class="jumbotron text-center">
  <h2>여러가지 action 속성</h2>
</div>
<div class="container">
	<form id="frm02" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="물건명" name="pname"  class="form-control mr-sm-2" />+
	    <input placeholder="가격" name="price"  class="form-control mr-sm-2"/>=
	    <input placeholder="갯수" name="cnt"  class="form-control mr-sm-2"/>
	    <input placeholder="총비용" name="sumPay"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="button" id="calPay">합산</button>
 	</nav>
	</form>
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="국어" name="kor"  class="form-control mr-sm-2" />+
	    <input placeholder="영어" name="eng"  class="form-control mr-sm-2"/>=
	    <input placeholder="합산" name="sum"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="button" id="sumBtn">합산</button>
 	</nav>
	</form>
	<h2 id="show"></h2>
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