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
		
		// 1. 검색한 데이터의 총건수 설정.  BoardSch(모델어트리뷰터-요청+모델)
		sch.setCount(dao.getBoardTot(sch));
		// 2. 한번에 보일 페이지 : 요청  select 3/5/10/20/50
		//    default 요청값이 없더라도 설정처리(초기화면)
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		//
		// 3. 총페이지 수..   [1][2]...[4][5]  21~25   사이에 데이터 경우..
		//     24/5 ==> 4
		//     20/5 ==> 4,  
		//     21~25  ==> 5
		//    1) 방법1
		/*
		sch.setPageCount( sch.getCount()/sch.getPageSize() );
		if(sch.getCount()%sch.getPageSize()!=0) {
			sch.setPageCount(sch.getPageCount()+1);
		}
		*/
		//    2) 방법2   Math.ceil(실수데이터) : 올림 처리를 해준다.. Math.floor(실수데이터) 해당 값을 내림 처리해준다.
		//  //     21~25  ==> 4.2......
		//         21/5.0 ==> 4.2 ==> 5
		//         22,23,24, 25 ==> 5.0
		
		// sch.setPageCount( (int)( Math.ceil( sch.getCount() / (double)sch.getPageSize() ) ) );
		//    3) 방법3
		//         (20 + 5 - 1)/5 ==> 4
		//         (21 + 5 - 1)/5 ==> 5
		//         (25 + 5 - 1)/5 ==> 5
		sch.setPageCount((sch.getCount() + sch.getPageSize()-1) / sch.getPageSize());
		//     [1][2].... [5]  ==> 클릭시.. 시작번호, 마지막번호 도출
		// 4. 현재 클릭한 페이지번호
		//    초기 화면에는 없음 ==> 1로 설정..
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		//   이후를 통해서 현재 클릭한 페이지 번호가 총페이지번호보다 크게 되는 것을 방지 처리
		if(sch.getCurPage()>sch.getPageCount()) {
			sch.setCurPage(sch.getPageCount());
		}
		
		// 5. 시작번호
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		//    마지막번호
		sch.setEnd(sch.getCurPage()*sch.getPageSize());
		
		//   위 로직에 위해서 만들어진 마지막 번호는 총데이터 건수보다 크기 않게 처리.
		if(sch.getEnd()>sch.getCount()) {
			sch.setEnd(sch.getCount());
		}
		
		
		/*
		한번에 보일 데이턴 건수 5,  
		클릭한 페이지번호 1  시작번호 1  마지막번호  5
		클릭한 페이지번호 2  시작번호 6  마지막번호  10
		클릭한 페이지번호 3  시작번호 11  마지막번호  15
		클릭한 페이지번호 4  시작번호 16  마지막번호  20
		클릭한 페이지번호 5  시작번호 21  마지막번호  25 ==> 총건수가 23이면  마지막번호를 예외적으로 23으로 설저이..
		시작번호 : (한번에 보일 데이터 건수 ) * (클릭한 페이지번호 -1 ) + 1
		마지막번호 : 한번에 보일 데이터 건수 * 클릭한 페이지번호..    예외처리.. 총건수보다 많을 수없다.(조건)
		 * */
		
		// 페이지 블럭..
		//    [ 1][ 2][ 3][ 4][ 5] 이후  ==> 1블럭번호(blockNum)
		// 이전[ 6][ 7][ 8][ 9][10] 이후  ==> 2블럭번호(blockNum)
		// 이전[11][12][13][14][15] 이후  ==> 3블럭번호(blockNum)
		// 이전[16][17][18][19][20] 이후  ==> 4블럭번호(blockNum)
		// 이전[21][22][23][24][25] 이후  ==> 5블럭번호(blockNum)
		// 이전 이후를 클릭시, curPage번호를 1씩 감소/증가하게 하여 전송하되, 마지막 curPage번호를 클릭시, 더이상 증가 되지 않게
		// 처리하여야 한다..
		// 블럭사이즈(blockSize - 화면에 보일 페이블럭의 크기)
		// 각 블럭번호에 해당하는 시작 블럭번호(startBlock)
		// 각 블럭번호에 해당하는 마지막 블럭번호(endBlock)
		// 1. 한번에 보일 블럭 크기 설정..
		sch.setBlockSize(5);
		// 2. 블럭번호 
		//int blockNum = (int)Math.ceil(sch.getCurPage()/(double)sch.getBlockSize());
		//                                1/5.0   0.2 =올림=> 1.0
		//                                2/5.0   0.4 =올림=> 1.0
		//                                6/5.0   1.2 =올림=> 2.0
		//                                7/5.0   1.4 =올림=> 2.0		
		int blockNum = (sch.getCurPage()+sch.getBlockSize()-1)/sch.getBlockSize();

		// 3. 시작 블럭 번호
		sch.setStartBlock( (blockNum-1) *sch.getBlockSize() + 1);
		// 4. 마지막 블럭 번호
		int endBlock = blockNum*sch.getBlockSize();
		//    마지막블럭 번호가 전체 페이지 수보다 크기 못하게 처리..
		sch.setEndBlock(endBlock>sch.getPageCount()?sch.getPageCount():endBlock);
		
		
		
		
		
		
		
		
		
		
		
		
		
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
					cnt += dao.insertFile(
				    new FileDto(fname,"게시판파일업로드:"+
					            ins.getSubject()));
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
