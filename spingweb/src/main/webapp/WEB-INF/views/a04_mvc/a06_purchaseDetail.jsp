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
			if(confirm(msg+"\n조회화면으로 이동하시겠습니까?")){
				location.href="purchaseList"
			}
		}
		$("#uptBtn").click(function(){
			if(confirm("수정하시겠습니까?")){
				$("form").attr("action","purchaseUpdate")
				$("form").submit()
			}
		})	
		$("#delBtn").click(function(){
			if(confirm("삭제하시겠습니까?")){
				$("form").attr("action","purchaseDelete")
				$("form").submit()
			}
		})
		// combo box의 내용 중에 하나를 선택하게 합니다.
		$("#customerId").val("${pu.customerId}")
		
	    $("#mainBtn").click(function(){
			location.href="purchaseList"
	    })		
	
	});
	
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>구매 상세${param.purchaseId}</h2>
</div>
   <div class="container">
        <form  method="post">
            <div class="form-group">
                <label for="purchaseId">구매아이디</label>
                <input type="text" value="${pu.purchaseId}" class="form-control" id="purchaseId" name="purchaseId" readOnly placeholder="구매 아이디 입력하세요" required>
            </div>       
            <div class="form-group">
                <label for="prodName">물건명</label>
                <input type="text" value="${pu.prodName}"  class="form-control" id="prodName" name="prodName" placeholder="물건명을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="customerId">고객명</label>
                <select  class="form-control" id="customerId" name="customerId">
                	<c:forEach var="c" items="${custCombo}" >
                	<option value="${c.customerId}">${c.customerName} [ ${c.customerId} ]</option>
                	</c:forEach>
                </select>           
            </div>
            <div class="form-group">
                <label for="purchaseDate">구매일</label>
                
                <input type="date" 
                value='<fmt:formatDate value="${pu.purchaseDate}" pattern="yyyy-MM-dd"/>' class="form-control"  id="purchaseDate" name="purchaseDate" placeholder="구매일을 입력하세요" required>
                <%--날짜데이터를 화면에 yyyy-MM-dd 출력.. --%>
            </div>
             <div class="form-group">
                <label for="purchaseAmount">구매수량</label>
                <input type="text" value="${pu.purchaseAmount}" class="form-control" id="purchaseAmount" name="purchaseAmount" placeholder="구매수량 입력하세요" required>
            </div>           
            <button type="button" id="uptBtn" class="btn btn-primary">수정</button>
            <button type="button" id="delBtn" class="btn btn-warning">삭제</button>
            <button type="button" class="btn btn-info" id="mainBtn">메인화면</button>
        </form>
      </div>  
</body>
</html>