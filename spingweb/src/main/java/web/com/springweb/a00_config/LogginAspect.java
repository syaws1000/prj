package web.com.springweb.a00_config;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
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
		long start = System.currentTimeMillis(); // 해당 시간의 1/1000초단위 시간..
		
		Object proceed = joinPoint.proceed(); // 실행되는 시점에  정보를 가져오는 객체
		
		long executionTime = System.currentTimeMillis() - start; 
		//  현재 마지막 수행 시간에서 시작시간을 빼면 해당 메서드의 수행 시간 출력
		// joinPoint.getSignature() : 해당 객체와 기능 메서드에 대한 정보
		System.out.println(joinPoint.getSignature()+" 수행시간:"+executionTime+"밀리 세컨드(ms - 1/1000초)");
		return proceed;
	}
	
	
	// 특정한 패키지의 하위에 있는 모든 메서드에서 에러가 발생시 처리할 내용을 구현..
	// execution(* web.com.springweb..service..*(..) )
	// execution(* web.com.springweb..*Service..*(..) )
	@AfterThrowing(pointcut="execution(* web.com.springweb..service..*(..) ) ||  "
			+ "execution(* web.com.springweb..*Service..*(..) )", throwing="ex")
	public void logAfterThrowing(JoinPoint joinPoint, Throwable ex) {
		System.out.println("### 예외 발생 ###");
		System.out.println("클래스/메서드:"+joinPoint.getSignature());
		System.out.println("예외 타입:"+ex.getClass().getName());
		System.out.println("예외 메시지:"+ex.getMessage());
	}
	
	
	
	
	
}
