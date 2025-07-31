package web.com.springweb.a00_config;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {

	@ExceptionHandler(Exception.class)
	public String handleException(Exception e, Model d) {
		d.addAttribute("errorMessage", e.getMessage());
		return "WEB-INF\\views\\errorPage.jsp";
	}
}
