package web.com.springweb.a10_multi;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.service.annotation.GetExchange;

@Controller
public class MutiLangController {

	// http://localhost:5070/multi
	@GetMapping("multi")
	public String show() {
		return "WEB-INF\\views\\a08_multi.jsp";
	}
}
