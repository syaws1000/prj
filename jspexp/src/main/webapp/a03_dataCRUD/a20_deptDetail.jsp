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
<jsp:useBean id="dao" class="jspexp.a10_database.A03_DeptDao"/>
<jsp:useBean id="d" class="jspexp.a10_database.dto.Dept"/>
<jsp:setProperty property="*" name="d"/>



<c:if test="${param.proc=='upt'}">
	<c:set var="uptCnt" value="${dao.updateDept01(d)}"></c:set>
</c:if>
<c:if test="${param.proc=='del'}">
	<c:set var="delCnt" value="${dao.deleteDept01(d.deptno)}"></c:set>
</c:if>

<script type="text/javascript">
	$(document).ready(function(){
		let uptCnt = "${uptCnt}"
		if(uptCnt>0){
			alert("수정했습니다.")
		}
		let delCnt = "${delCnt}"
		if(delCnt>0){
			alert("삭제했습니다.")
			location.href="a18_deptSchList.jsp";
		}		
		// uptBtn delBtn mainBtn
		$("#uptBtn").click(()=>{
			if(confirm("수정하시겠습니까?")){
				// <input type="hidden" name="proc" />
				// 값을 변경해서 DAO 기능메서드를 선택적으로 처리할 때, 사용된다.
				// 
				
				$("[name=proc]").val("upt")
				$("form").submit() //<input type="submit" 클릭하는 것과 동일한 효과
			}
		})
		$("#delBtn").click(()=>{
			if(confirm("삭제하시겠습니까?")){
				$("[name=proc]").val("del")
				$("form").submit()				
			}
		})
		$("#mainBtn").click(()=>{
			alert("리스트 화면 이동")
			location.href="a18_deptSchList.jsp";
		})
	});
</script>
</head>
<c:set var="dept" value="${dao.getDept(param.deptno)}"/>
<%-- 
Dept dept = dao.getDept(request.getParameter("deptno"));


dao기능메서드 getDept에 매개변수로 요청값 deptno전송해서 결과값 검색된 dept를 받음.. --%>
<body>
   <div class="jumbotron text-center">
        <h2>부서 상세(${param.deptno})</h2>
    </div>
    <div class="container">
        <form  method="post">
        	<input type="hidden" name="proc" value="upt"/>
            <div class="form-group">
                <label for="deptno">부서번호</label>
                <input type="number" value="${dept.deptno}" class="form-control" id="deptno" name="deptno" placeholder="부서번호를 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="dname">부서명</label>
                <input type="text" value="${dept.dname}"  class="form-control" id="dname" name="dname" placeholder="부서명을 입력하세요" required>
            </div>

            <div class="form-group">
                <label for="loc">부서위치</label>
                <input type="text"  value="${dept.loc}"  class="form-control" id="loc" name="loc" placeholder="부서위치를 입력하세요" required>
            </div>
            <button type="button" id="uptBtn" class="btn btn-info">수정</button>
            <button type="button" id="delBtn" class="btn btn-danger">삭제</button>
            <button type="button" id="mainBtn" class="btn btn-success">메인</button>
        </form>
      </div>  
</body>
</html>