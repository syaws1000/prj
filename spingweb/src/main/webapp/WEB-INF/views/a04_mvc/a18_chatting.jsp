<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="UTF-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/com/bootstrap.min.css">
<style>
	.input-group-text{width:100%;background-color:linen;
		color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
	#chatArea{
		width:80%;height:200px;overflow-y:scroll;text-align:left;
		border:1px solid green;
		padding-right:15px;
	}
</style>
<script src="${path}/com/jquery-3.7.1.js"></script>
<script src="${path}/com/bootstrap.min.js"></script>
<script type="text/javascript">
	let socketServer = "${socketServer}"
	let wsocket = null
	
	$(document).ready(function() {
		$("#enterBtn").click(function(){
			// 클이언트 단에서 서버와 연결 처리..
			wsocket = new WebSocket(socketServer)
			// handler와 연결된 메서드
			// 접속시 처리할 내용을 처리해주는 메서드
			wsocket.onopen = function(evt){
				console.log(evt)
				// 실제 메시지를 전달달할 때, 사용되는 메서드 이것을 호출하면
				// handler에 있는 handleTextMessage() 호출되어 메시지를 전달한다.
				wsocket.send($("#id").val()+"님: 입장합니다.")
			}
			// 서버에서 메시지를 전송이 되었을 때, 받는 처리하는 기능 함수..
			wsocket.onmessage = function(evt){
				//alert(evt.data) // evt.data 서버에서 전송된 메시지..
				console.log(evt.data)
				revMsg(evt.data)
				//$("#chatMessageArea").append(evt.data+"<br>")
			}
			
		})
		$("#exitBtn").click(function(){
			if(confirm($("#id").val()+"님 채팅방 접속을 종료하시겠습니까?")){
				wsocket.send($("#id").val()+"님: 접속 종료합니다.")
				wsocket.close()
				$("#chatMessageArea").text("") // 입력된 메시치 초기화..
				$("#id").val("").focus() // 접속한 아이디명 초기화 하고, 해당 아이디입력한 곳에 focus위치 처리..
			}
		})
		$("#sendBtn").click(function(){
			// 버튼을 클릭시, 접속한 아이디명과 입력한 메시지를 전송 처리..
			sendMsg()
		})
		// 입력 후, enter 클릭시 메시지 전송..
		$("#msg").keyup(function(){
			if(event.keyCode==13){  // 키보드에 키마다 고유 키코드가 있는데, 13은 enter키를 의미..
				sendMsg()
				
			}
		})
		
	});
	function sendMsg(){
		wsocket.send( $("#id").val()+":"+$("#msg").val() )
		$("#msg").val("") // 메시지 입력 창 초기화 처리..
	}
	// 최대 크기 함수 위에 전역변수로 선언..
	var mx = 0
	function revMsg(msg){
		// 1. 보내는 메시지 오른쪽, 받는 메시지 왼쪽 정렬 처리..
		var alignOpt = "left"
		var msgArr = msg.split(":") // 사용자명:메시지  구분하여 처리  ["사용자명","메시지"]
		var sndId = msgArr[0]// 보내는 사람 메시지 id
		if($("#id").val() == sndId){
			// 보내는 사람과 받는 사람의 아이디가 동일 하면 현재 접속한 사람이 보낸 메시지. ==> 정렬 오른쪽
			alignOpt = "right"
			msg = msgArr[1]  // 내가 보낸 메시지이기에 id삭제..
		}
		// 정렬 처리된 메시지 
		var msgObj = $("<div></div>").text(msg).attr("align", alignOpt).css("width",$("#chatArea").width()-20)
		$("#chatMessageArea").append(msgObj)
		//$("#chatMessageArea").append(msg+"<br>")
		// 2. 메시지 스크롤 처리..(최하단에 있는 메시지 내용 확인할 수 있게 자동 스크롤 처리..)
		//   1) 전체 해당 데이터의 높이를 구하기
		// 	 2) 포함하고 있는 부모 객체(#chatArea)에서 스크롤 기능 메서드로 스크롤되게 처리 scrollTop()
		var height = parseInt($("#chatMessageArea").height())
		mx += height + 20
		$("#chatArea").scrollTop(mx)
	}	
	
</script>
</head>

<body>
	<div class="jumbotron text-center">
		<h2>채팅</h2>
	</div>
	<div class="container">
		<div class="input-group mb-3">
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">입장할이름</span>
			</div>
			<input id="id" class="form-control" placeholder="접속할 아이디 입력" />
			<input id="enterBtn"  class="btn btn-primary" value="채팅방입장"/>
			<input id="exitBtn"  class="btn btn-danger" value="채팅방나가기"/>
		</div>
		<div class="input-group mb-3">
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">메시지</span>
			</div>
			<div id="chatArea" style="overflow-x:hidden" class="input-group-append">
				<div id="chatMessageArea"></div>
			</div>
		</div>	
		<div class="input-group mb-3">
			<div class="input-group-prepend ">
				<span class="input-group-text  justify-content-center">메시지 전송</span>
			</div>
			<input id="msg" class="form-control" placeholder="전송할 메시지 입력" />
			<input id="sendBtn"  class="btn btn-success" value="메시지전송"/>
		</div>		
	</div>
</body>
</html>