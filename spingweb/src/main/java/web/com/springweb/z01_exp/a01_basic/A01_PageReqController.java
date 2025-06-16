package web.com.springweb.z01_exp.a01_basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class A01_PageReqController {

	// http://localhost:5050/exp001_req
	@RequestMapping("exp001_req")
	public String exp001_req() {
		return "WEB-INF\\views\\z01_exp\\a01_callPageReq\\a01_callPage.jsp";
	}
}
