--	1) 상세 데이터 로딩을 위한 dao 
--		- 상세 데이터
--		- 파일 정보 데이터
/*
// boardexp01
// boardFileexp01
 * */
SELECT * FROM boardexp01; WHERE NO = 4;
SELECT fname FROM boardFileexp01 WHERE NO = 4;
/*
dao 기능 메서드
@Select("SELECT * FROM boardexp01 WHERE NO = #{no}")
Board getBoardExp01(@Param("no") int no);

@Select("SELECT fname FROM boardFileexp01 WHERE NO = #{no}")
List<String> getFnames(@Param("no") int no);


**/

SELECT * FROM ANNOUNCE WHERE BOARD_ID =13 ;
SELECT fname FROM ANNOUNCE_FILE WHERE NO = 13;
-- FileDownLoadController.java : 다운로드 controller 이용..
-- A11_DetailDownController.java     detail1000?boardId=13
-- A11_DetailDownService.java      
-- A11_DetailDownDao.java
-- a17_detail.jsp

-- 1. 초기화면  로딩
-- 2. dao service controller view단 처리.
/*
dao 처리..
@Select("SELECT * FROM ANNOUNCE WHERE BOARD_ID =#{boardId}")
Announce getAnnounce(@Param("boardId") int boardId);

@Select("SELECT fname FROM ANNOUNCE_FILE WHERE NO = #{no}")
List<String> getAnnounce(@Param("no") int no);

class Announce{
	private int boardId;
	private String title;
	private String content;
	private int parentId;
	private String author;
	private Date createdAt;
	private Date updatedAt;
	private String status;
	private int views;
	private int commentCount;
	
} 
 
 * */


-- 3. view단 다운로드 처리..







