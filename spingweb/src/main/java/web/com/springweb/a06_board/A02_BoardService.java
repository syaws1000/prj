package web.com.springweb.a06_board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_BoardService {
	@Autowired(required=false)
	private A03_BoardDao dao;
	
	public List<Board> getBoardList(BoardSch sch){
		if(sch.getSubject()==null) sch.setSubject("");
		if(sch.getWriter()==null) sch.setWriter("");
		
		sch.setSubject("%"+sch.getSubject()+"%");
		sch.setWriter("%"+sch.getWriter()+"%");
		
		return dao.getBoardList(sch);
	}
	
	public String insertBoard(Board ins) {
		return dao.insertBoard(ins)>0?"등록성공":"등록실패";
	}
	
	
}
