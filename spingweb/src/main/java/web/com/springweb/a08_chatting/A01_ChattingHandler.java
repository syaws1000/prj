package web.com.springweb.a08_chatting;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

// 스프링 컨테이너에서 chatHandler라는 이름으로 등록하는데 이는 front단에서 chat로 호출한다.
// ws:localhost:5050/chat js로 호출시, chatHandeler backend연동 WebSocketConfig에서 처리 해준다.
@Component("chatHandler")
public class A01_ChattingHandler extends TextWebSocketHandler{
	// 접속한 클라이언트를 할당(소켓아이디, 소켓세션) - 메시지 전송 시 활용
	private Map<String, WebSocketSession> users = new ConcurrentHashMap();
	
	
	// 접속시 처리되는 메서드 - 필드에 있는 users를 할당 처리한다.
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		System.out.println("[소켓 서버단] 접속되었습니다!!"+session.getId());
		// 접속할 때 마다, 하나씩 할당 처리
		users.put(session.getId(), session); // 아이디와 세션을 key/value로 할당 누적 처리..
	}

	// 메시지를 받아서 접속한 클라이언트에게 전달하는 메서드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println("[소켓 메시지 전송]"+session.getId()+":"+message.getPayload());
		// 접속한 소켓 클라이언트에게 메시지 전송
		for(WebSocketSession ws:users.values()) {
			ws.sendMessage(message);
		}
	}
	// 특정한 클라이언트가 접속을 종료했을 때, 처리할 내용
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		System.out.println("[소켑 접속 종료]"+session.getId());
		users.remove(session.getId()); // 전역변수에 있는 접속자에서 제외 처리..
	}
	// 채팅시 에러 발생시 예외 처리 내용
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		System.out.println("[에러 발생]"+session.getId()+", 예외발생:"+exception.getMessage());
	}


	
	
	

}
