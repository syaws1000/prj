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
		let sessId = "${mem.id}"	
		let writer = $("[name=writer]").val()
		if(sessId!=writer){
			$("#uptBtn").hide()
			$("#delBtn").hide()
		}
		let msg = "${msg}"
		if(msg!=""){
			alert(msg)
			if(msg.indexOf("삭제")>=0){ // 삭제라는 키워드가 시작되는 index리턴, 즉, 삭제 성공/삭제 실패일 시, 리스트로 바로 이동
				location.href="boardList"
			}
		}
		$("#uptBtn").click(function(){ 
			if(confirm("수정하시겠습니까?")){
				//if(writer != sessId){
				//	alert("수정 권한을 작성자에게만 있습니다.")
				//}else{
					//alert("수정 수행")
					//  boardUpdate boardDelete
					$("form").attr("action","boardUpdate")
					$("form").submit()
				//}
			}
		})
		$("#delBtn").click(function(){ 
			if(confirm("삭제하시겠습니까?")){
				//if(writer != sessId){
				//	alert("삭제 권한을 작성자에게만 있습니다.")
				//}else{
					$("form").attr("action","boardDelete")
					$("form").submit()
				//}				
			}
		})
		$("#repBtn").click(function(){ 

		})
		$("#lstBtn").click(function(){ 
			location.href="boardList"
		})
        function download(fname){
        	location.href="download?fileName="+fname
        }    	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>게시물 상세</h2>
</div>

 <div class="container">
    <form  method="post">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="no">번호</label>
                <input type="text" readonly class="form-control" id="no" name="no" value="${board.no}" required>
            </div>
            <div class="form-group">
                <label for="subject">제목</label>
                <input type="text" class="form-control" id="subject" name="subject" value="${board.subject}" required>
            </div>
            <div class="form-group">
                <label for="writer">작성자</label>
                <input type="text" class="form-control" id="writer" readonly name="writer" value="${board.writer}" required>
            </div>              
        
            <div class="form-group">
                <label for="no">첨부파일</label><br>
                <c:forEach var="bfile" items="${bfiles}">
                    <button ondblclick="download('${bfile.fname}')" type="button" 
                    class="btn btn-info">${bfile.fname}</button> 
                </c:forEach>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="refno">상위번호</label>
                <input type="text" readonly class="form-control" id="refno" name="refno" value="${board.refno}" required>
            </div>
            <div class="form-group">
                <label for="regdte">등록일</label>
                <input type="text" class="form-control" readonly value="<fmt:formatDate value='${board.regdte}'/>">
            </div>      


            <div class="form-group">
                <label for="uptdte">수정일</label>
                <input type="text" class="form-control" readonly value="<fmt:formatDate value='${board.uptdte}'/>">
            </div>

            <div class="form-group">
                <label for="readcnt">조회수</label>
                <input type="text" class="form-control" readonly id="readcnt" value="${board.readcnt}">
            </div>            
        </div>
        <div class="col-md-12">
                <div class="form-group">
                <label for="content">내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" placeholder="내용을 입력하세요">${board.content}</textarea>
        </div>
	    <button id="uptBtn" type="button" class="btn btn-primary">수정</button>
	    <button id="delBtn"  type="button" class="btn btn-danger">삭제</button>
	    <button id="repBtn" type="button" class="btn btn-warning">답글</button>
	    <button id="lstBtn" type="button" class="btn btn-info">메인</button>        
    </div>

   </form>	
</div>
</body>
</html>