package web.com.springweb.a04_mvc.a02_service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import web.com.springweb.a04_mvc.a03_dao.A08_FileUploadDao;
import web.com.springweb.a06_board.Board;
import web.com.springweb.a06_board.FileDto;

@Service
public class A08_FileUploadDBService {

	@Autowired(required=false)
	private A08_FileUploadDao dao;
	
	@Value("${user.upload4}")
	private String path;
	
	
	public String insertBoardexp01(Board ins) {
		String msg = null;
		// 1. 기본 정보 등록 하기..(DB처리)
		msg = dao.insertBoardexp01(ins)>0?"등록 성공\\n":"등록 실패\\n";
		// 2. 파일 업로드 처리.. ins.getReports()
		int cnt = 0;
		try {		
			for(MultipartFile mp:ins.getReports()) {
				String fname = mp.getOriginalFilename();
				File f = new File(path, fname);
				mp.transferTo(f);
				// 3. 파일 정보 등록 하기 ..(DB처리)
				dao.insertBoardFileepx01(new FileDto( fname,"게시물:"+ins.getSubject()+"첨부 파일"));
				cnt++;
			}
			msg += "첨부 파일 "+cnt+"건 등록";
		} catch (IllegalStateException e) {
			msg+="[파업업로드 - 상태에러]"+e.getMessage();	
		} catch (IOException e) {
			msg+="[파업업로드 - IO에러]"+e.getMessage();
		} catch (Exception e) {
			msg+="[파업업로드 - 일반에러]"+e.getMessage();
		}				
		return msg;
	}
	/*
	Board getBoardExp01(@Param("no") int no);
	List<String> getFnames(@Pa@ram("no") int no);
	*/
	public Board getBoardExp01(@Param("no") int no) {
		return dao.getBoardExp01(no);
	}
	public List<String> getFnames(@Param("no") int no){
		return dao.getFnames(no);
	}
	
	
}
