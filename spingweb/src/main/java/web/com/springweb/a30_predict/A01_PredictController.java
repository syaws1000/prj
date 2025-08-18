package web.com.springweb.a30_predict;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class A01_PredictController {
	
	
	// http://localhost:5050/predict
	@GetMapping("predict")
	public String predictChart() {
		return "a30_predict\\a01_predictByUser.html";
	}

}
