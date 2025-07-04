package web.com.spring.a05_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A05_FunnyMovieController {

	@Autowired(required=false)
	private A05_FunnyMovieService service;
	
	// http://localhost:5052/funnyMovieDetail
	// http://localhost:5052/funnyMovieDetail?laughPoints=귀여운 미니언들
	@GetMapping("funnyMovieDetail")
	public String funnyMovieDetail(@RequestParam("laughPoints") String laughPoints, Model d) {
		d.addAttribute("movie", service.getFunnyMovie(laughPoints));
		return "WEB-INF\\views\\a05_mvc\\a05_funnyMovie.jsp";
	}
}
