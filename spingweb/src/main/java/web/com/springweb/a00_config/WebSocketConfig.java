package web.com.springweb.a00_config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import web.com.springweb.a08_chatting.A01_ChattingHandler;

@Configuration
@EnableWebSocket
public class WebSocketConfig implements WebSocketConfigurer{
	// 웹소켓통신으로 사용할 Handler 객체 등록
	private final A01_ChattingHandler chatHandler;

	public WebSocketConfig(A01_ChattingHandler chatHandler) {
		this.chatHandler = chatHandler;
	}
	@Override
	public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
		// backend에서 있는 A01_ChattingHandler를 front에서 chat로 호출 가능 하게 설정..
		registry.addHandler(chatHandler, "/chat").setAllowedOrigins("*");
		
	}
}
