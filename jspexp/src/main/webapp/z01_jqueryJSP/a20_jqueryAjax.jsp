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
<script type="text/javascript">
	$(document).ready(function(){
		$("#ckBtn").click(function(){
			let idVal = $("[name]").val()
			$.ajax({
				url:"a21_ajaxData.jsp",
				data:{id:idVal}, // 요청값 id=입력한아이디값
				success:function(rs){ // 서버에서 비동기적으로 가져온값..
					//alert(rs)
					if(rs>0){
						alert(idVal+"중복된 아이디입니다.")
					}else{
						alert(idVal+" 등록 가능한 아이디입니다.")
					}
				},
				error:function(err){
					console.log(err)
				}
				
			})
		})
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>회원중복아이디 등록 체크</h2>

</div>
<%--
# jquery Ajax
1. ajax(Asynchronous javascript and xml)는 웹 페이지를 다시 로드하지 않고,
백그라운드에서 서버와 데이터를 주고 받을 수 있는 기술입니다. jquery에서 제공하는 $.ajax()메서드는
이러한 비동기 http 요청을 간편하게 처리할 수 있도록 도와줍니다. ajax를 사용하면 페이지를 새로 고침하지
않고도 서버와 상호작용하여 데이터를 가져오거나 보낼 수 있습니다.
2. 주요 속성
	1) url : 요청을 보낼 서버의 url
	2) type : 요청의 http 메서드(get,post등)
	3) data : 서버에 보낼 데이터
	4) dateType : 서버로부터 받기를 기대하는 데이터 형식(xml, json, html, text등)
	5) success : 요청이 성공했을 때  실행될 콜백 함수
	6) error : 요청이 실패했을 때, 실행될 콜백 함수..
	 
3. 처리 순서
	1) json 형식의 데이터를 특정 지정 page에서 처리	 
	2) 웹에서 jquery 형식 이벤트에 호출,
	3) 받은 json데이터를 화면에 처리..
		
--%>
<div class="container">

  	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	    <input placeholder="아이디를 입력하세요" name="id"   class="form-control mr-sm-2" />
	    <button class="btn btn-info" id="ckBtn" type="button">중복체크</button>
 	</nav>
</div> 	
</body>
</html>