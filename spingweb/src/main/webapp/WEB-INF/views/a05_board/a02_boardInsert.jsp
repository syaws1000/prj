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

// refno subject content writer
 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/css/com.css" >
<style>
	td{text-align:center;}
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		let sessCk = "${mem.name}"==""
		if(sessCk){
			alert("로그인 하셔야 합니다.")
			location.href="login"
		}
		let msg = "${msg}"
		if(msg!=""){
			if(!confirm(msg+"\n계속 등록하시겠습니까?")){
				location.href="boardList"
			}
		}
		$("#regBtn").click(function(){
			if(confirm("게시물 등록하시겠습니까?")){
				$("form").attr("action","boardInsert")
				$("form").submit();
			}
		})
		$("#lstBtn").click(function(){ 
			location.href="boardList"
		})		
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>게시판 등록</h2>

</div>
<%-- 
		refno subject content writer
--%>
   <div class="container">
        <form  method="post" enctype="multipart/form-data" >
        	<input type="hidden" name="refno" value="${(empty re.refno)? 0 : re.refno}"/>
            <div class="form-group">
                <label for="subject">제목</label>
                <input type="text" value="${re.subject }" class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" 
                	placeholder="내용을 입력하세요" required>${re.content}</textarea>
            </div>
            <div class="form-group">
                <label for="writer">작성자</label>
                <input type="hidden" id="writer" name="writer" value="${mem.id}"/>
                <input type="text" class="form-control" value="${mem.name} [ ${mem.id} ] " readonly>
            </div>
              <div class="form-group">
                <label for="reports">첨부파일</label>
                <input type="file"  multiple="multiple"  class="form-control" id="reports" name="reports" placeholder="파일을 첨부하세요" >
                <%-- 한개가 아닌 여러개의 파일을 등록시 활용하는 속성(ctrl 선택) --%>
            </div>          
            <button id="regBtn" type="button" class="btn btn-primary">등록</button>
	    	<button id="lstBtn" type="button" class="btn btn-info">메인</button>              
        </form>
      </div>  
</body>
</html>