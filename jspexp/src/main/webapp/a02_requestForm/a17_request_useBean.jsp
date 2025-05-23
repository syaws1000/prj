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
# useBean이용한 요청값 처리.
1. useBean을 이용하면 객체의 메서드를 호출하거나 요청값 할당하지 않더라도,
	자동으로 특정한 설정에 의해서 객체에 요청값이 할당 처리된다.
2. 요청값과 useBean 객체에 할당되는 기본 형식..
   ?name=홍길동&age=25&loc=서울
   
   useBean 내부에 setName , setAge, setLoc로 위 내용을 받을 수 있는 매개변수 type이 설정되어 있으면
   자동으로 요청값을 객체에 할당이 된다. setProperty  property="*"
   

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
  <h2>useBean을 통한 객체 처리..</h2>

</div>
<%-- 
# useBean이용한 요청값 처리.
1. useBean을 이용하면 객체의 메서드를 호출하거나 요청값 할당하지 않더라도,
   자동으로 특정한 설정에 의해서 객체에 요청값이 할당 처리된다.
2. 요청값과 useBean 객체에 할당되는 기본 형식..
   ?name=홍길동&age=25&loc=서울
   
   useBean 내부에서 setName, setAge, setLoc로 위 내용을 받을 수 있는
   매개변수 type이 설정되어 있으면 자동으로 요청값이 객체에 할당된다. setProperty property="*"

		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="이름" name="name"  class="form-control mr-sm-2" />
	    <input placeholder="나이" name="age"  class="form-control mr-sm-2"/>
	    <input placeholder="사는곳" name="loc"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">등록</button>
 	</nav>
	</form>
	<%-- ?name=홍길동&age=25&loc=수원 --
		  setName(), setAge(), setLoc()	
	--%>
	<jsp:useBean id="p01" class="jspexp.a01_vo.Person" />
	<jsp:setProperty property="*" name="p01"/>
	<h1>요청으로 받아온 값</h1>
	<h2>${p01.getName()}</h2>
	<h2>${p01.age}</h2>
	<h2>${p01.loc}</h2>	
	<form id="frm02" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="부서번호" name="deptno"  class="form-control mr-sm-2" />
	    <input placeholder="부서명" name="dname"  class="form-control mr-sm-2"/>
	    <input placeholder="부서위치" name="loc"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">부서등록</button>
 	</nav>
	</form>	
	<jsp:useBean id="dept" class="jspexp.a10_database.dto.Dept"/>
	<jsp:setProperty property="*" name="dept"/>
	<h1>요청값으로 받아온 값</h1>
	<h2>${dept.deptno}</h2>
	<h2>${dept.dname}</h2>
	<h2>${dept.loc}</h2>
	<%--
	ex1) 부서번호, 부서명, 부서위치를 등록하는 form을 만들고,
		요청에 의해 useBean을 처리하여 출력되게 하세요..
	ex2) 나라이름, 수도, 인구 정보를 등록하는 form을 만들고,
		 VO를 생성하고, useBean의해서 등록된 나라정보를 출력하세요..
	===============	 
	ex3) 요리명 재료 난이도를 등록하는 form을 만들고,
		 VO를 생성하고, useBean의해서 등록된 요리레시피 정보를 출력하세요.
		 	 	
	 --%>
	<form id="frm03" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="나라이름" name="name"  class="form-control mr-sm-2" />
	    <input placeholder="수도" name="capital"  class="form-control mr-sm-2"/>
	    <input placeholder="인구수" name="population"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">부서등록</button>
 	</nav>
	</form>	
	<jsp:useBean id="ctr" class="jspexp.a01_vo.Country"/>
	<jsp:setProperty property="*" name="ctr"/>
	<h1>요청값으로 받아온 값</h1>
	<h2>${ctr.name}</h2>
	<h2>${ctr.capital}</h2>
	<h2>${ctr.population}</h2>	
	<%--
	ex3) 요리명 재료 난이도를 등록하는 form을 만들고,
		 VO를 생성하고, useBean의해서 등록된 요리레시피 정보를 출력하세요.
	 --%>	
	<form id="frm03" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="요리명" name="name"  class="form-control mr-sm-2" />
	    <input placeholder="재료" name="ingredients"  class="form-control mr-sm-2"/>
	    <input placeholder="난이도" name="difficulty"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">요리등록</button>
 	</nav>
	</form>	
	<jsp:useBean id="rec" class="jspexp.a01_vo.Recipe"/>
	<jsp:setProperty property="*" name="rec"/>
	<h1>요청값으로 받아온 값</h1>
	<h2>${rec.name}</h2>
	<h2>${rec.ingredients}</h2>
	<h2>${rec.difficulty}</h2>
	
	
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