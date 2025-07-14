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
		let msg = "${msg}"
		if(msg!=""){
			alert(msg)
		}
		// uptBtn delBtn maiBtn
		$("#uptBtn").click( function(){ 
			$("form").attr("action","unicornUpdate")
			$("form").submit()
		
		} )
		$("#delBtn").click( function(){ } )
		$("#maiBtn").click( function(){ 
			location.href="unicornList"
		} )
	});
</script>
</head>

<body>
<div class="jumbotron text-center">
  <h2>유니콘 상세</h2>
</div>
    <div class="container">
<%-- //unicornId unicornName unicornSpecialAbility 



수정 ==> 수정대상데이터 서버에 전송(unicornId, unicornName, unicornSpecialAbility) ==> 
	name="unicornId" value="변경할 데이터"
	name="unicornName" value="변경할 데이터"
	name="unicornSpecialAbility" value="변경할 데이터"  ==> submit()  updateUnicon 컨트롤러 지정..
==> 이속성을 포함한 객체로 받을 수 있다.  ImaginaryAnimal upt( controller) ==> service ==> dao
sql을 통해서 처리하고, 그 결과값을 등록이 성공되면 1, 실패하면 0을 리턴해준다.. ==> 1 "수정성공", 0 "수정실패" 메시지로 전달
==> 모델 데이터 msg로 설정 해서 ==> 화면 javascript로 출력 let msg = "${msg}"

# 수정 처리 개발 순서
1. update 문작성
	dao 처리
2. service 단에서 1 ==> 수정 성공, 0은 수정실패 메시지 처리
3. controller msg 모델 처리  updateUnicon 설정.
4. jsp(메시지 및 수정 controller 호출 처리)



	
unicornId unicornName unicornSpecialAbility
--%>
        
        <form  method="post">
            <div class="form-group">
                <label for="unicornId">유니콘 아이디 </label>
                <input value="${uni.unicornId}" type="text" class="form-control" id="unicornId" name="unicornId" placeholder="유니콘 이름을 입력하세요" required>
            </div>        
            <div class="form-group">
                <label for="unicornName">유니콘 이름 </label>
                <input value="${uni.unicornName}"  type="text" class="form-control" id="unicornName" name="unicornName" placeholder="유니콘 이름을 입력하세요" required>
            </div>
            <div class="form-group">
                <label for="unicornSpecialAbility">유니콘 특별 기능</label>
                <input value="${uni.unicornSpecialAbility}"  type="text" class="form-control" id="unicornSpecialAbility" name="unicornSpecialAbility" 
                	placeholder="유니콘 특별 기능 입력하세요" required>
            </div>
            <%--
uptBtn delBtn maiBtn
             --%>
            <button id="uptBtn" type="button" class="btn btn-warning">수정</button>
            <button id="delBtn"  type="button" class="btn btn-danger">삭제</button>
            <button id="maiBtn"  type="button" class="btn btn-info">메인</button>
        </form>
      </div>  
</body>
</html>