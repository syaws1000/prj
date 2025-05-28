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
<jsp:useBean id="ins" class="jspexp.a10_database.dto.Dept"/>
<jsp:setProperty property="*" name="ins"/>
<%--
name="deptno" value="10"
name="dname" value="회계팀"
name="loc" value="서울"
<input type="submit" ==> 클릭..

?deptno=10&dname=회계팀&loc=서울

Dept ins = new Dept();
ins.setDeptno(request.getParameter("deptno"));
ins.setDname(request.getParameter("dname"));
ins.setLoc(request.getParameter("loc"));

ins : 입력값이 담겨진 Dept 객체 생성..

int insCnt = dao.insertDept(ins) : Database에 등록 처리..

javascript
let insCnt = ${insCnt}
if(insCnt>0){
	alert("등록성공")
}
 --%>

<jsp:useBean id="dao" class="jspexp.a10_database.A03_DeptDao"/>
<c:if test="${not empty ins.dname}"><%-- 초기 입력값이 없는 화면과 입력 후, DB처리가 필요할 때를 구분.. --%>
 	<c:set var="insCnt" value="${dao.insertDept(ins)}" />
</c:if>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var insCnt = "${insCnt}"	
		if(insCnt>0){
			alert("부서정보 등록 성공")
			location.href="a18_deptSchList.jsp"
		}
	
	});
</script>
</head>

<body>
   <div class="jumbotron text-center">
        <h2>부서 등록</h2>
    </div>
    <div class="container">
        <form  method="post">
            <div class="form-group">
                <label for="deptno">부서번호</label>
                <input type="number" class="form-control" id="deptno" name="deptno" placeholder="부서번호를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="dname">부서명</label>
                <input type="text" class="form-control" id="dname" name="dname" placeholder="부서명을 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="loc">부서위치</label>
                <input type="text" class="form-control" id="loc" name="loc" placeholder="부서위치를 입력하세요" required>
            </div>
            <button type="submit" class="btn btn-primary">등록</button>
        </form>
      </div>  
</body>
</html>