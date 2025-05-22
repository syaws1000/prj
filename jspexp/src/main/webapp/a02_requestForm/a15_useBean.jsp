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
# 요청값 처리의 최종 단계 useBean
1. <jsp:useBean> 태그는 jsp에서 javaBeans 객체를 생성하거나 찾을 때 사용하는 태그입니다.
   이 태그는 JavaBean 객체를 선언하고, 해당 객체를 jsp페이지에서 사용할 수 있도록 범위(scope)를 
   설정하며, 필요에 따라 javaBean의 프로퍼티의 값을 할당할  수도 있습니다.
2. 목적 : javaBean을 jsp에서 사용하기 위해 객체를 생성하거나 이미 존재하는 객체를 찾아서 jsp페이지에서
	사용할 수 있도록 합니다..
3. 기본형식
	<jsp:useBean id="emp" class="@@@.Emp" scope="page">
		<jsp:setProperty name="emp" property="*">
	</jsp>
	1) 속성  
		id: javaBean을 참조할 변수명(객체명)입니다. jsp 페이지에서 이 이름으로 객체에 접급할 수 있습니다.
		class : 생성할 javabean 클래스의 완전한 클래스 이름입니다. class 속성은 필수로 작성해야 합니다.
		scope : javaBean 객체의 범위를 정의하는 속성입니다. page/request/session/application 중 하나를 지정
		type : 선택적 속성으로, 객체 타입을 지정하는데 사용됩니다.
		beanName: jsp 페이지에서 이미 존재하는 javaBean 객체를 찾아 사용하고자 할 때, 사용하는 속성입니다.
4. 단계별 예제..
	1) 객체 생성하여 속성할당 해보기..
	2) 요청값을 처리해보기..
	3) dao 연동등을 처리하여 화면을 구성하기..
	

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
		
--%>
<div class="container">
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