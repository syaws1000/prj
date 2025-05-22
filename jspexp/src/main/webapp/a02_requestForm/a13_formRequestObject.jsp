<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import = "jspexp.a01_vo.Product"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="UTF-8"/> 
<!DOCTYPE html>
<%--
# 요청값을 객체로 만드는 방법.
1. 요청값 하나하나를 선언하여 객체의 생성자나 메서드에 할당처리
	- java코드
	- jstl/el코드
	1) 처리 순서..
		요청 form 만들기
		위 요청 form에 받을 수 있는 class 만들기
		요청 처리했을 때, 해당 요청값을 객체에 할당하여 할당된 내용 확인 확인하기..
2. 자동 객체 할당 하는 useBean 사용방법..(*****)
	- useBean을 활용하면 session scope로 설정하고, 요청값 자동 set메서드에 찾아가서 설정이 가능하다.

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
<%
// 요청 처리되었을 때, 자바 코드
String name = request.getParameter("name");
String priceStr = request.getParameter("price");
String cntStr = request.getParameter("cnt");
int price = 0; int cnt = 0;
if(priceStr!=null) price = Integer.parseInt(priceStr); // 요청값을 문자열이기에 Integer.parseInt() 형변환
if(cntStr!=null) cnt = Integer.parseInt(cntStr);
// 요청값을 받은 후 객체로 할당.
Product prod = new Product(name,price,cnt);
request.setAttribute("prod", new Product());
%>
${prod.setName(param.name)}
${prod.setPrice(param.price)}
${prod.setCnt(param.cnt)}
<%-- el/jstl로 처리해서 출력하세요.. --%>
<div class="container">
	<form id="frm01" class="form"  method="post">
  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="물건입력" name="name"  class="form-control mr-sm-2" />
	    <input placeholder="가격입력" name="price"  class="form-control mr-sm-2"/>
	    <input placeholder="갯수입력" name="cnt"  class="form-control mr-sm-2"/>
	    <button class="btn btn-info" type="submit">구매</button>
 	</nav>
	</form>
	<h3>요청 처리된 객체(jstl/e)</h3>
	<h2>${prod.name}</h2>
	<h2>${prod.price}</h2>
	<h2>${prod.cnt}</h2>
	<h2>요청처리된 객체(구매정보)</h2>
	<h3><%=prod.getName() %></h3>
	<h3><%=prod.getPrice() %></h3>
	<h3><%=prod.getCnt() %></h3>
<%--
ex) 이름, 나이, 사는 곳을 입력하여 Person객체에 할당하고, 해당 내용을 출력하세요..
    a14_formRequestObject.jsp
 --%>
</div>
</body>
</html>