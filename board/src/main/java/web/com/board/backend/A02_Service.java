package web.com.board.backend;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A02_Service {
	@Autowired(required = false)
	private A03_Dao dao;
	
	public Member login(Member sch) {
		return dao.login(sch);
	}
	
	public List<Announce> getAnnounceList(AnnounceSch sch){
		if(sch.getTitle()==null) sch.setTitle("");
		if(sch.getAuthor()==null) sch.setAuthor("");
		sch.setTitle("%"+sch.getTitle()+"%");
		sch.setAuthor("%"+sch.getAuthor()+"%");
		
		
		
		
		
		return dao.getAnnounceList(sch);
	}
	public Announce detailAnnount(int boardId) {
		// 상세 조회시만, 조회수 증가 처리..
		int cnt = dao.readCount(boardId);
		return dao.getAnnounce(boardId);
	}
	public Announce getAnnounce(int boardId) {
		return dao.getAnnounce(boardId);
	}
	public List<String> getFile( int no) {
		return dao.getFile(no);
	}
	
	@Value("${user.upload}")
	private String path;
	
	
	public String insertAnnounce(Announce ins) {
		String msg="";
		msg = dao.insertAnnounce(ins)>0?"등록성공\\n":"등록실패\\n";
		if(ins.getParentId()!=0) { // 답글일 때, 상위 글번호를 기준으로 답글수를 증가 처리..
			dao.updateCommentCnt(ins.getParentId());
		}
		
		
		int cnt = 0;
		try {		
			for(MultipartFile mf: ins.getReports()) {
				String fname = mf.getOriginalFilename();
				if(!fname.equals("")) {
					// 파일생성
					File file = new File(path,fname);
					mf.transferTo(file);
					// 파일정보 등록..
					cnt+=dao.insertFile(new AnnFileDto(fname,"연습용게시판파일업로드:"+ins.getTitle()));
				}
			}
			msg += cnt+"건 파일 등록 성공!";
		} catch (IllegalStateException e) {
			msg +="[파일 상태 예외]"+e.getMessage();
		} catch (IOException e) {
			msg +="[파일 DB 연동 예외]"+e.getMessage();
		} catch( Exception e) {
			msg +="[기타 예외]"+e.getMessage();
		}		
		
		return msg;
	}
	public String updateBoard(Announce upt) {
		return dao.updateBoard(upt)>0?"수정 성공":"수정 실패";
	}
	public String deleteBoard(int boardId) {
		return dao.deleteBoard(boardId)>0?"삭제 성공":"삭제 실패";
	}	
}
