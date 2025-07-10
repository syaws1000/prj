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
		$("#regBtn").click(function(){
			location.href="boardInsert"
		})
		let sessCk = "${mem.name}"==""
		if(sessCk){
			alert("로그인 하셔야 합니다.")
			location.href="login"
		}
	});
	function logout(){
		if(confirm("로그아웃하시겠습니까?")){
			location.href="logout"
		}
	}
	function goDetail(no){
		location.href="boardDetail?no="+no
	}
			
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>게시판리스트</h2>
</div>
<%-- 
		
--%>
<div class="container">
 <h6 class="text-right" ondblclick="logout()">${mem.name} 로그인중</h6>
	<form id="frm01" class="form" >
		<input type="hidden" name="curPage" value="1"/>
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name="subject" value="${param.subject}" class="form-control mr-sm-2" />
	    <input placeholder="작성자" name="writer" value="${param.writer}" class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">Search</button>
	    <button class="btn btn-success" id="regBtn" type="button">등록</button>
 	</nav>
	</form>
   <table class="table table-hover table-striped" >
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
        <th>조회수</th>
      </tr>
    </thead>	
    <tbody>
    <%--
    css 설정
 	.subject{
 	
		padding-left:var(--level-padding,0); /* 기본 padding-left 설정*/
	}   
     --%>
    	<c:forEach var="b" items="${blist}">
    	<tr ondblclick="goDetail(${b.no})"><td>${b.cnt}</td>
    		<%-- 자식의 계층 레벨에 따라 제목에 들여쓰기 적용 --%>
            <td  style="text-align:left;padding-left:${(b.level-1)*20}px;">
                 ${b.subject}
            </td>  
    		<%--
    		<td class="text-left" >
    			<c:forEach var="i" begin="0" end="${b.level-1}">&nbsp;&nbsp;&nbsp;</c:forEach>
    			${b.subject}</td>
    		--%>	
    		<td>${b.writer}</td>
    		<td><fmt:formatDate value="${b.regdte}" /></td>
    		<td>${b.readcnt}</td></tr>
    	</c:forEach>
    </tbody>
	</table>       
	<%--  //  count  pageSize  curPage pageCount  startBlock endBlock --%>
	<ul class="pagination">
	  <li class="page-item"><a class="page-link" href="#">Previous</a></li>
	  <c:forEach var="pcnt" begin="1" end="${sch.pageCount}">
	  	<li class="page-item ${sch.curPage==pcnt?'active':''}">
	  		<a class="page-link" href="javascript:goPage(${pcnt})">${pcnt}</a></li>
	  						<%-- 현재 클릭한 페이번호와 출력하는 페이지 번호가 같을 때, active(활성화 css 처리) --%>
	  </c:forEach>
	  
	  <li class="page-item"><a class="page-link" href="#">Next</a></li>
	</ul>
	<script type="text/javascript">
		// <input type="hidden" name="curPage" value="1"/>
		function goPage(pcnt){
			$("[name=curPage]").val(pcnt)
			$("form").submit()
		}
	
	</script>
	
</div>
</body>
</html>