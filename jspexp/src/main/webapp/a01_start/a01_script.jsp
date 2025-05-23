<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="jspexp.a01_vo.Board"
    import = "jspexp.a01_vo.Emp01"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<%--
# jsp에서 사용되는 코드
1. jsp(java server page)에서는 스크립트릿(scriptlet)과 el(expression language), 
jstl(javaserver pages standard tag library)을 사용하여 동적 웹 페이지를 작성합니다.
2. jsp에서 사용되는 scriptlet, el, jstl
	1) script - 자바 코드를 jsp안에 직접 작성하는 방식으로 구성요소로 scriplet(<%%>),
				expression(<%=%>), declaration(<%!%>) 등이 있다.
	2) el(${}) - 자바 코드를 간단한 표현식으로 대체하여 출력만 할 수 있는 표현 언어를 말한다.
				${변수명}
	3) jstl(<c:...>) - jsp에서 반복, 조건문, 포맷 등을 처리할 수 있도록 도와주는 표준 태그 라이브러리
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
  <%
  // java코드를 활용할 수 있는 scriptlet
  int sum = 10 + 20;
  out.println("합계:"+sum); // out : 내장된 객체를 화면에 출력을 처리해주는 객체(이미 선언이 되어 참조변수로 사용가능)
  out.println("<h2>"+sum+"</h2>");
  // ex) String으로 이름,  age로 나이, loc로 사는 곳을 변수를 할당하여, out.println()을 이용하여, 화면에 출력하세요.
  String name = "홍길동";
  int age = 25;
  String loc = "성남";
  out.println("<h3>이름:"+name+"</h3>");
  out.println("<h3>나이:"+age+"</h3>");
  out.println("<h3>사는곳:"+loc+"</h3>");
  %>
  <%-- expression은 html 화면에 특정한 자바의 변수를 출력할 때, 주로 활용된다.. <%=변수명%> --%>
  <h1>expression 활용하여 출력 처리..</h1>
  <h2>이름:<%=name%></h2>
  <h2>나이:<%=age%></h2>
  <h2>사는곳:<%=loc%></h2>
</div>
<%-- 
		
--%>
<div class="container">
	<form id="frm01" class="form"  method="post">
	<%
	String pname="사과";
	int price= 3000;
	%>
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="제목" name="" value="<%=pname %>" class="form-control mr-sm-2" />
	    
	    <input placeholder="내용" name="" value="<%=price%>" class="form-control mr-sm-2"/>
	    
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
        <th>조회수</th>
      </tr>
    </thead>
    <%
    // 위 항목의 번호, 제목, 작성자, 작성일, 조회수로 문자열과 정수형으로 선언하고, 아래에
    // 출력하세요..
    // 1단계 : 변수 ---
    int no = 1; String title="첫게시물"; String writer="홍길동"; String writeDate="2025-05-20";
    int readCnt = 3;
    // 2단계 : 문자열 배열
    String bArry[]={"2","문서파일입니다.","마길동","2025-05-21","2"};
    // 3단계 : 객체
    //  Board(int no, String title, String writer, String writeDate, int readCnt)
    Board bd = new Board(3, "객체로만들기","프로그래머","2025-05-01",3);
    
    %>	
    <tbody>
    	<tr><td><%=no%></td><td><%=title%></td><td><%=writer%></td>
    		<td><%=writeDate %></td><td><%=readCnt %></td></tr>
    	<tr><td><%=bArry[0]%></td><td><%=bArry[1]%></td><td><%=bArry[2]%></td>
    		<td><%=bArry[3]%></td><td><%=bArry[4]%></td></tr>
    	<tr><td><%=bd.getNo()%></td><td><%=bd.getTitle()%></td><td><%=bd.getWriter()%></td>
    		<td><%=bd.getWriteDate()%></td><td><%=bd.getReadCnt()%></td></tr>
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
      <%
      // Emp01 클래스 선언,  ename, job, sal 선언   
      // jsp import
      // 객체 생성
      
      Emp01 emp = new Emp01("홍길동","사원",3500.0);
      %>
      <div class="modal-body">
		<form id="frm02" class="form"  method="post">
	     <div class="row">
	      <div class="col">
	        <input type="text" class="form-control" value="<%=emp.getEname()%>" placeholder="사원명 입력" name="ename">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" value="<%=emp.getJob()%>" placeholder="직책명 입력" name="job">
	      </div>
	      <div class="col">
	        <input type="text" class="form-control" value="<%=emp.getSal()%>" placeholder="급여 입력" name="sal">
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
