package web.com.springweb.a06_board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_BoardService {
	@Autowired(required=false)
	private A03_BoardDao dao;
}
