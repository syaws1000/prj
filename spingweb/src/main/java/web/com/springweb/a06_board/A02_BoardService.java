package web.com.springweb.a06_board;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import web.com.springweb.vo.Member;

@Service
public class A02_BoardService {
	@Autowired(required=false)
	private A03_BoardDao dao;
	
	public Member login(Member sch) {
		return dao.login(sch);
	}
	
	
	public List<Board> getBoardList(BoardSch sch){
		if(sch.getSubject()==null) sch.setSubject("");
		if(sch.getWriter()==null) sch.setWriter("");
		
		sch.setSubject("%"+sch.getSubject()+"%");
		sch.setWriter("%"+sch.getWriter()+"%");
		
		return dao.getBoardList(sch);
	}
	
	@Value("${user.upload}")
	private String path;
	public String insertBoard(Board ins) {
		String msg = "";
		// 0. 등록시 기본 정보를 저장..
		msg = dao.insertBoard(ins)>0?"등록성공\\n":"등록실패\\n";
		// 1. 파일업로드
		try {
			int cnt = 0;
			for(MultipartFile mf:ins.getReports()) {
				String fname=mf.getOriginalFilename();
				if(!fname.equals("")) {
					File file = new File(path,fname);
					mf.transferTo(file);
					// 2. 파일정보 저장.
					cnt += dao.insertFile(new FileDto(fname,"게시판파일업로드:"+ins.getSubject()));
				}
				
			}
			msg+=cnt+"건 파일 등록 성공";
		} catch (IllegalStateException e) {
			msg+="[파일상태예외]"+e.getMessage();
		} catch (IOException e) {
			msg+="[파일업로드 및 DB 연동 예외]"+e.getMessage();
		} catch (Exception e) {
			msg+="[일반 예외]"+e.getMessage();
		}		
		return msg;
	}
	public Board getDetail(int no) {
		// 상세조회시, 조회수 카운트 업
		dao.uptReadCnt(no);
		return dao.getBoard(no);
	}		
	public Board getBoard(int no) {
		// 상세조회시, 조회수 카운트 업
		return dao.getBoard(no);
	}		
	public List<FileDto> getFile(int no){
		return dao.getFile(no);
	}	
	public String  updateBoard(Board upt) {
		return dao.updateBoard(upt)>0?"수정성공":"수정실패";
	}
	public String deleteBoard(int no) {
		return dao.deleteBoard(no)>0?"삭제성공":"삭제실패";
	}
	
	
}
