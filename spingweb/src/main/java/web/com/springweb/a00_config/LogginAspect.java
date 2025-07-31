package web.com.springweb.a00_config;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogginAspect {  // 특정 시점에 수행할 Advice 객체 선언 내용..
	// 특정한 서비스패키지하위 수행되는 객체의 메서드가 수행되면 수행된 시간을 출력..
	// * 접근제어자 상관없이
	// web.com.springweb.a04_mvc.a02_service. : 해당 패키지
	// .*.*(..) : 하위있는 객체안 있는 메서드 - 해당 이름 상관없이..
	// (..) : 매개변수 상관없이..   -- 시점을 지정 PointCut
	@Around("execution(* web.com.springweb.a04_mvc.a02_service.*.*(..))") 
	public Object logExceptionTime(ProceedingJoinPoint joinPoint) throws Throwable {
		
		Object proceed = joinPoint.proceed(); // 실행되는 시점에  정보를 가져오는 객체
		
		return proceed;
	}
	
	
	// 특정한 패키지의 하위에 있는 모든 메서드에서 에러가 발생시 처리할 내용을 구현..
}
