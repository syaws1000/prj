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

UPDATE unicorn_zoo
   SET unicorn_name = '수정1',
       UNICORN_SPECIAL_ABILITY = '수정2'
 WHERE UNICORN_ID = 2;
/*
UPDATE unicorn_zoo
   SET unicorn_name = #{unicornName},
       UNICORN_SPECIAL_ABILITY = #{unicornSpecialAbility}'
 WHERE UNICORN_ID = #{unicornId}
@Update("")
int updateUnicorn();
 * */
   




-- 입력 : String unicornName; String unicornSpecialAbility ==> UnicornZoo
-- 출력 : int  : 등록한 건수..
/*
@Insert("INSERT INTO unicorn_zoo values(unicorn_seq.nextval,#{unicornName}, #{unicornSpecialAbility})")
int insertUnicornZoo(UnicornZoo ins);

 * */
SELECT * FROM super_foods;
CREATE SEQUENCE food_seq;
SELECT food_seq.nextval FROM dual; -- 5번 반복
INSERT INTO super_foods values(food_seq.nextval,'아이스크림 케익','먹으면 시원한 행복이 온다');
/*
@Insert("INSERT INTO super_foods values(food_seq.nextval,#{foodName},#{funnyEffect})")
int insertFood(SuperFood ins);
 * */




SELECT * FROM Book_Subject;
-- 책과 그 주제 테이블
CREATE TABLE Book_Subject (
    book_id NUMBER PRIMARY KEY,
    book_title VARCHAR2(100),
    subject VARCHAR2(50),
    author VARCHAR2(50)
);
/*
BookSubject
private int bookId;
private String bookTitle;
private String subject;
private String author;


 * */
-- 데이터 입력 예시
INSERT INTO Book_Subject (book_id, book_title, subject, author)
VALUES (1, '프로그래밍 완전정복', '기술', '박준형');

INSERT INTO Book_Subject (book_id, book_title, subject, author)
VALUES (2, '해리포터', '판타지', 'J.K. 롤링');

INSERT INTO Book_Subject (book_id, book_title, subject, author)
VALUES (3, '1984', '디스토피아', '조지 오웰');

INSERT INTO Book_Subject (book_id, book_title, subject, author)
VALUES (4, '모든 것을 다 알기', '자기계발', '김혜정');

INSERT INTO Book_Subject (book_id, book_title, subject, author)
VALUES (5, '소설로 배우는 인문학', '인문학', '이영주');


-- '기술' 주제의 책 중에서 '박준형' 저자 출력
SELECT * 
FROM Book_Subject ORDER BY book_id desc;
WHERE subject LIKE '%기술%' AND author LIKE  '%박준형%'

CREATE SEQUENCE book_seq;
SELECT book_seq.nextval FROM dual;
INSERT INTO book_subject values(book_seq.nextval, '자바프로그래밍 완성','기술','홍길동');
/*
bookId bookTitle subject author

@Insert("INSERT INTO book_subject values(book_seq.nextval, #{bookTitle},#{subject},#{author})")
int insertBookSubject(BookSuejct ins);
 * */

/*
@Select("");
List<BookSubject> getBookSubject(BookSubject sch);
 * */
;


-- 맛있는 음식 테이블
CREATE TABLE Delicious_Food (
    food_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(50),
    main_ingredient VARCHAR2(50),
    famous_area VARCHAR2(50)
);

-- 데이터 입력 예시
INSERT INTO Delicious_Food (food_id, food_name, main_ingredient, famous_area)
VALUES (1, '초코 케이크', '초콜릿', '파리');

INSERT INTO Delicious_Food (food_id, food_name, main_ingredient, famous_area)
VALUES (2, '김치찌개', '김치', '서울');

INSERT INTO Delicious_Food (food_id, food_name, main_ingredient, famous_area)
VALUES (3, '스시', '생선', '도쿄');

INSERT INTO Delicious_Food (food_id, food_name, main_ingredient, famous_area)
VALUES (4, '파스타', '면', '로마');

INSERT INTO Delicious_Food (food_id, food_name, main_ingredient, famous_area)
VALUES (5, '떡볶이', '떡', '서울');

-- '서울' 지역에서 '떡'이 주 재료인 음식 이름과 재료 출력
SELECT * 
FROM Delicious_Food
WHERE famous_area LIKE '%서울%' AND main_ingredient LIKE '%떡%';






-- 꿈의 직업 테이블
CREATE TABLE Dream_Jobs (
    job_id NUMBER PRIMARY KEY,
    job_name VARCHAR2(50),
    job_type VARCHAR2(50),
    job_benefit VARCHAR2(100)
);
SELECT * FROM dream_jobs;
--  int jobId; String jobName; String jobType; String jobBenefit;
--  DreamJob


-- 데이터 입력 예시
INSERT INTO Dream_Jobs (job_id, job_name, job_type, job_benefit)
VALUES (1, '스파이', '비밀 직업', '적의 기지에서 웃긴 농담을 주고 받기');

INSERT INTO Dream_Jobs (job_id, job_name, job_type, job_benefit)
VALUES (2, '우주 여행 가이드', '모험 직업', '우주에서 외계인과 대화하기');

INSERT INTO Dream_Jobs (job_id, job_name, job_type, job_benefit)
VALUES (3, '전설의 치킨 시식자', '맛보기 직업', '세상에서 가장 맛있는 치킨을 매일 먹기');

INSERT INTO Dream_Jobs (job_id, job_name, job_type, job_benefit)
VALUES (4, '디지털 패션 디자이너', '창의 직업', '디지털 세계에서 옷을 디자인하고 팔기');

INSERT INTO Dream_Jobs (job_id, job_name, job_type, job_benefit)
VALUES (5, '인터넷 신비로운 창조자', '온라인 직업', '인터넷에서 신비로운 창작물을 만들기');

-- '모험 직업'인 직업 중에서 '외계인과 대화하기'라는 혜택을 가진 직업 출력
SELECT * FROM Dream_Jobs WHERE job_type = #{jobType} AND job_benefit =  #{jobBenefit}
;

/*

@Select("SELECT * FROM Dream_Jobs WHERE job_type = #{jobType} AND job_benefit =  #{jobBenefit}")
List<DreamJob> getDreamJobs(DreamJob sch);

class DreamJob
private int jobId;
private String jobName;
private String jobType;
private String jobBenefit;

 * */


-- 인간과 동물의 친절한 교감 테이블
CREATE TABLE Animal_Friendship (
    friendship_id NUMBER PRIMARY KEY,
    human_name VARCHAR2(50),
    animal_name VARCHAR2(50),
    special_activity VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Animal_Friendship (friendship_id, human_name, animal_name, special_activity)
VALUES (1, '김유진', '강아지', '강아지가 사람의 발을 핥으며 웃음 주기');

INSERT INTO Animal_Friendship (friendship_id, human_name, animal_name, special_activity)
VALUES (2, '박지수', '고양이', '고양이가 집안 곳곳을 엉뚱하게 뛰어다니며 웃기기');

INSERT INTO Animal_Friendship (friendship_id, human_name, animal_name, special_activity)
VALUES (3, '이민호', '앵무새', '앵무새가 사람의 말을 따라 하며 유머러스하게 대화하기');

INSERT INTO Animal_Friendship (friendship_id, human_name, animal_name, special_activity)
VALUES (4, '정예원', '토끼', '토끼가 기어다니며 귀엽게 춤추기');

INSERT INTO Animal_Friendship (friendship_id, human_name, animal_name, special_activity)
VALUES (5, '최진수', '새우', '새우가 사람의 손톱에 붙어서 춤추기');


-- '고양이'와 함께 '엉뚱하게 뛰어다니며 웃기기'라는 활동을 하는 사람 출력
SELECT * FROM Animal_Friendship
WHERE animal_name like '%고양이%' AND special_activity like '%고양이가 집안 곳곳을 엉뚱하게 뛰어다니며 웃기기%';



-- 기발한 수퍼푸드 테이블
CREATE TABLE Super_Food (
    food_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(50),
    food_effect VARCHAR2(100),
    health_benefit VARCHAR2(100)
);
SELECT * FROM super_foods WHERE food_id = 1;
-- int foodId; String foodName; String funnyEffect;
/*
@Select("SELECT * FROM super_foods WHERE food_id = #{foodId}")
SuperFood getSuperFood(@Param("foodId") int foodId);
 * */


-- 데이터 입력 예시
INSERT INTO Super_Food (food_id, food_name, food_effect, health_benefit)
VALUES (1, '초코바나나', '맛이 두 배로 증폭', '기분을 좋게 하고 활력을 준다');

INSERT INTO Super_Food (food_id, food_name, food_effect, health_benefit)
VALUES (2, '딸기 케이크', '먹으면 웃음이 나옴', '체중 증가 방지');

INSERT INTO Super_Food (food_id, food_name, food_effect, health_benefit)
VALUES (3, '블루베리 치킨', '먹으면 순간이동 가능', '심장에 좋은 효과');

INSERT INTO Super_Food (food_id, food_name, food_effect, health_benefit)
VALUES (4, '레몬 모카', '레몬 향이 지나간 후 1시간 동안 기분이 좋음', '기억력 증가');

INSERT INTO Super_Food (food_id, food_name, food_effect, health_benefit)
VALUES (5, '맛있는 감자튀김', '먹으면 공중에서 회전함', '소화가 잘 된다');

-- '기분을 좋게 하고 활력을 준다'는 효과가 있고 '초코바나나' 음식 출력
SELECT * FROM Super_Food
WHERE health_benefit like '기분을 좋게 하고 활력을 준다' AND food_name like '초코바나나';



-- 상상 속 유니콘 동물원 테이블
CREATE TABLE Unicorn_Zoo (
    unicorn_id NUMBER PRIMARY KEY,
    unicorn_name VARCHAR2(50),
    unicorn_special_ability VARCHAR2(100),
    unicorn_humor VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability, unicorn_humor)
VALUES (1, '별빛', '별을 떨어뜨리며 춤추기', '별빛을 따라 웃음이 터진다');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability, unicorn_humor)
VALUES (2, '비단', '하늘을 나는 능력', '하늘에서 내려오며 유머러스하게 말하기');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability, unicorn_humor)
VALUES (3, '빛나는', '불을 피우며 노래 부르기', '불꽃에 맞춰 춤추며 웃기기');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability, unicorn_humor)
VALUES (4, '환희', '모든 꽃을 피우게 하는 능력', '꽃이 피면 그 순간에 웃음이 나온다');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability, unicorn_humor)
VALUES (5, '반짝이', '사람에게 행복을 주는 미소', '미소를 보면 모두 웃음');



-- '하늘을 나는 능력'과 '하늘에서 내려오며 유머러스하게 말하기' 능력을 가진 유니콘 출력
SELECT * FROM Unicorn_Zoo
WHERE unicorn_special_ability like '하늘을 나는 능력' AND unicorn_humor like '하늘에서 내려오며 유머러스하게 말하기';



-- 웃긴 동물 특기 테이블
CREATE TABLE Funny_Animal_Skills (
    skill_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(50),
    animal_special_skill VARCHAR2(100),
    funny_action VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Animal_Skills (skill_id, animal_name, animal_special_skill, funny_action)
VALUES (1, '뽀로로', '물 속에서 노래 부르기', '노래를 부를 때마다 물이 튀기며 웃음');

INSERT INTO Funny_Animal_Skills (skill_id, animal_name, animal_special_skill, funny_action)
VALUES (2, '코알라', '나무에서 놀기', '나무에서 떨어지며 춤추기');

INSERT INTO Funny_Animal_Skills (skill_id, animal_name, animal_special_skill, funny_action)
VALUES (3, '기린', '하늘을 향해 뛰기', '하늘을 향해 뛰면서 하늘에 웃음 소리를 남기기');

INSERT INTO Funny_Animal_Skills (skill_id, animal_name, animal_special_skill, funny_action)
VALUES (4, '토끼', '빠르게 달리기', '달리면서 그늘에 숨기');

INSERT INTO Funny_Animal_Skills (skill_id, animal_name, animal_special_skill, funny_action)
VALUES (5, '사자', '포효하기', '포효와 함께 웃긴 농담하기');


-- '나무에서 놀기' 특기를 가진 동물이 '나무에서 떨어지며 춤추기' 행동을 할 때 출력
SELECT * FROM Funny_Animal_Skills
WHERE animal_special_skill like '나무에서 놀기' AND funny_action like '나무에서 떨어지며 춤추기';








