<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import = "jspexp.a10_database.A02_EmpDao"
    import = "jspexp.a01_vo.Order"
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
<script type="text/javascript">
	$(document).ready(function(){
	
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>DB 연동 처리..</h2>

</div>
<%-- 
		
--%>
<div class="container">
    <h3>주문리스트(script)</h3>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
      <tr class="table-success text-center">
        <th>주문아이디</th>
        <th>마법사이름</th>
        <th>주문날짜</th>
        <th>주문수량</th>
      </tr>
    </thead>	
    <%
    A02_EmpDao dao = new A02_EmpDao();
    %>
    <tbody>
    	<%
    	for(Order o:dao.getOrderAll()){
    	%>
    	<tr><td><%=o.getOrderId()%></td><td><%=o.getWizardName()%></td>
    		<td><%=o.getOrderDate() %></td><td><%=o.getOrderAmount()%></td></tr>
    	<%
    	}
    	%>
    </tbody>
	</table>    


   <h3>주문리스트(jstl)</h3>
   <table class="table table-hover table-striped">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
   	<col width="25%">
    <thead>
      <tr class="table-success text-center">
        <th>주문아이디</th>
        <th>마법사이름</th>
        <th>주문날짜</th>
        <th>주문수량</th>
      </tr>
    </thead>	
    <%
    request.setAttribute("orders", dao.getOrderAll());
    %>
    <tbody>
    	<c:forEach var="o" items="${orders }">
    	<tr><td>${o.orderId}</td><td>${o.wizardName}</td>
    		<td>${o.orderDate}</td><td>${o.orderAmount}</td></tr>    	
    	</c:forEach>
    </tbody>
	</table>    
</div>
</body>
</html>