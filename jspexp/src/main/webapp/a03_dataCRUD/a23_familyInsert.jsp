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
<jsp:useBean id="ins" class="jspexp.a10_database.dto.Family"/>
<jsp:setProperty property="*" name="ins"/>
<jsp:useBean id="dao" class="jspexp.a10_database.A04_FamilyDao" />
<c:if test="${not empty ins.name}">
	<c:set var="insCnt" value="${dao.insertFamily(ins)}"/> 
	<%-- ins(등록정보-name, parentId)로 데이터를 받아서 dao 메서드에 매개변수로 전달 --%>
</c:if>
<script type="text/javascript">
	$(document).ready(function(){
		//let name = "${sch.name}"  // java코드 ==> javascript 코드
		//if(name!="")
		//	alert(name)
		let insCnt = "${insCnt}"
		if(insCnt>0){
			if(!confirm("등록성공!!\n계속 등록하시겠습니까?")){
				// 취소를 클릭시, 전체 리스트 화면이동..
				location.href="a22_familySchList.jsp";
			}
		}
			
	});
</script>
</head>
<body>
   <div class="jumbotron text-center">
        <h2>가족 등록</h2>
    </div>
    <div class="container">
        <form method="post">
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="이름 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="parentId">부모아이디</label>
                <input type="number" class="form-control" id="parentId" name="parentId" 
                	placeholder="부모아이디 등록" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>