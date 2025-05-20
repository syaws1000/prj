<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import = "jspexp.a01_vo.Emp01"
    import = "jspexp.a01_vo.Product"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<%--
# EL(Expression Language)
1. 동적인 콘텐츠 생성을 위해 사용되는 기술로, 동적 데이터 표현을 간단하고
직관적으로 처리할 수 있게 해준다.
2. 핵심 기능
	1) 객체 데이터 접근 : javaBean 프로퍼티에 직접 접근할 수 있습니다.
	2) 연산자 사용 : 숫자 연산, 비교 연산들을 지원
	3) 기본적인 데이터 타입 : EL은 문자열, 숫자, boolean, 객체등을 처리할 수 있다.
3. 문법
	1) ${expression}: EL에서 표현식을 사용하여 값을 출력합니다.
	2) ${} 내부에는 변수, 연산자 메소드 호출 등을 포함할 수 있습니다.

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
<%
// scope별(page,request, session, application)로 key/value 데이터 할당(메모리+시간적범위)
request.setAttribute("no1", 10);  // scope 범위로 데이터를 할당 처리..
request.setAttribute("no2", 20);  // scope 범위로 데이터를 할당 처리..
request.setAttribute("name01", "홍길동");  // scope 범위로 데이터를 할당 처리..
request.setAttribute("arr01", new String[]{"사과","바나나","딸기"});  // scope 범위로 데이터를 할당 처리..
request.setAttribute("p01", new Emp01("홍길동","사원",3000));  // scope 범위로 데이터를 할당 처리..
// ex1) 물건명과 물건가격, 갯수를 단일 변수로 선언하고,
request.setAttribute("pname","사과");
request.setAttribute("price",3000);
request.setAttribute("cnt",2);
// ex2) 물건가격과 갯수를 int[]형 배열로 선언
request.setAttribute("buyInfo", new int[]{4500,2});
// ex3) 물건명 가격 갯수가 있는 class를 선언 후, 객체 생성하여 pro01에 할당..
request.setAttribute("prod", new Product("사과",3000,2));
// 위 선언한 내용을 아래에서 el 태그로 출력 하세요..
%> 
<body>
<div class="jumbotron text-center">
  <h2>물건명:${pname}</h2>
  <h2>가격:${price}</h2>
  <h2>갯수:${cnt}</h2>
  <h2>가격[배열]:${buyInfo[0]}</h2>
  <h2>갯수[배열]:${buyInfo[1]}</h2>
  <h2>물건명[객체]:${prod.name}</h2>
  <h2>가격[객체]:${prod.price}</h2>
  <h2>갯수[객체]:${prod.cnt}</h2>


  <h2>번호1:${no1}</h2>
  <h2>번호2:${no2}</h2>
  <h2>합산:${no1 + no2}</h2>
  <h2>이름:${name01}</h2>
  <h2>배열:${arr01[0]},${arr01[1]},${arr01[2]}</h2>
  <h2>객체:${p01.getEname()}, ${p01.job}, ${p01.sal}</h2>
  <%-- p01.job이지만, 생략해서 처리된 것이지 실제 p01.getJob()을 처리한 것을 간편하게 나타낸것.. --%>
	
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