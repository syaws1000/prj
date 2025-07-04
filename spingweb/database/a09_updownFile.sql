--	1) 상세 데이터 로딩을 위한 dao 
--		- 상세 데이터
--		- 파일 정보 데이터
/*
// boardexp01
// boardFileexp01
 * */
SELECT * FROM boardexp01; WHERE NO = 2;
SELECT fname FROM boardFileexp01; WHERE NO = 2;
/*
dao 기능 메서드
@Select("SELECT * FROM boardexp01 WHERE NO = #{no}")
Board getBoardExp01(@Param("no") int no);

@Select("SELECT fname FROM boardFileexp01 WHERE NO = #{no}")
List<String> getFnames(@Param("no") int no);


**/
