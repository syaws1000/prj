CREATE SEQUENCE game_seq;


INSERT INTO GAME_CHARACTERS (ID, NAME, GAME, ROLE, POWER_LEVEL, WEAPON, INTRODUCTION, LAST_UPDATE)
VALUES (game_seq.nextval , '아르투르', '엑스칼리버 어드벤처', '기사', 80, '엑스칼리버 검', '마법의 검을 사용하여 왕국을 보호하는 고귀한 기사.', TO_DATE('2025-07-01', 'YYYY-MM-DD'));

INSERT INTO GAME_CHARACTERS (ID, NAME, GAME, ROLE, POWER_LEVEL, WEAPON, INTRODUCTION, LAST_UPDATE)
VALUES (game_seq.nextval , '루나', '문라이트 레전드', '마법사', 75, '엘더의 지팡이', '달의 에너지를 다루는 지혜로운 마법사.', TO_DATE('2025-06-25', 'YYYY-MM-DD'));

INSERT INTO GAME_CHARACTERS (ID, NAME, GAME, ROLE, POWER_LEVEL, WEAPON, INTRODUCTION, LAST_UPDATE)
VALUES (game_seq.nextval , '제피르', '윈드 워리어즈', '궁수', 70, '바람의 활', '바람을 다루는 능력으로 화살을 빠르고 정확하게 쏠 수 있는 궁수.', TO_DATE('2025-06-20', 'YYYY-MM-DD'));

INSERT INTO GAME_CHARACTERS (ID, NAME, GAME, ROLE, POWER_LEVEL, WEAPON, INTRODUCTION, LAST_UPDATE)
VALUES (game_seq.nextval , '에이든', '섀도우 렐름', '암살자', 85, '어둠의 단검', '어둠의 능력으로 적을 조용히 제거하는 암살자.', TO_DATE('2025-06-15', 'YYYY-MM-DD'));

INSERT INTO GAME_CHARACTERS (ID, NAME, GAME, ROLE, POWER_LEVEL, WEAPON, INTRODUCTION, LAST_UPDATE)
VALUES (game_seq.nextval , '탈리아', '크리스탈 가디언즈', '치유사', 60, '크리스탈 지팡이', '크리스탈의 힘을 이용해 아군을 치유하는 치유사.', TO_DATE('2025-06-10', 'YYYY-MM-DD'));

SELECT * FROM GAME_CHARACTERS WHERE game LIKE '%%' AND ROLE LIKE '%%';
/*
입력 : 검색되어지는 where String game, String role ==> GameCharacter sch     <input name="game"   ${param.game}
출력 : 검색출력 int id; String name; String game; String role; int powerLevel; String introduction; Date lastUpdate
	==> GameCharacter(단일행) ==> List<GameCharacter> (다중행)  ==> 모델데이터 charList 
	==> <c:forEach var="ch" items="${charList}">
			<tr><td>${ch.id}</td><td>${ch.name}..
class GameCharacter{
	private int id; 
	private String name; 
	private String game; 
	private String role; 
	private int powerLevel; 
	private String introduction; 
	private Date lastUpdate;
}			
@Select("SELECT * FROM GAME_CHARACTERS WHERE game LIKE #{game} AND ROLE LIKE #{role}")
List<GameCharacter> getGameList(GameCharacter sch)	


package web.com.spring.a06_mvc  밑에

A03_GameCharacterController.java
A03_GameCharacterService.java
A03_GameCharacterDao.java  (interface로 만들기)

webapp\WEB-INF\views\a06_mvc

a03_gameCharacterList.jsp



# 처리 순서.
1. dao
	dto
2. service
3. controller
4. view(jsp)
 * */


/*
	1) dao
	   등록 SQL 작성
	   입력 실제 등록될 데이터..
	   출력 등록된 건수(행단위 건수 리턴) int 
 * */
SELECT * FROM unicorn_zoo;
CREATE SEQUENCE unicorn_seq;
SELECT unicorn_seq.nextval FROM dual; -- 5번 반복..
INSERT INTO unicorn_zoo values(unicorn_seq.nextval,'기쁨', '사람들에게 행복한 기쁨을 주는 능력');
-- 입력 : String unicornName; String unicornSpecialAbility ==> UnicornZoo
-- 출력 : int  : 등록한 건수..
/*
@Insert("INSERT INTO unicorn_zoo values(unicorn_seq.nextval,#{unicornName}, #{unicornSpecialAbility})")
int insertUnicornZoo(UnicornZoo ins);

 * */












