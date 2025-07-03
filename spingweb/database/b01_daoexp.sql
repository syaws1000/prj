-- 기본적인 sql 구문 정의 및 처리 방법
SELECT * FROM EMP;
-- 전체 내용 검색.. 아래내용을 출력 내용
SELECT * FROM DEPT;
-- 조건 검색
SELECT * FROM DEPT 
WHERE DEPTNO = 10;
-- 부서번호 10인 데이터 검색 처리..
-- EX) 사원번호 7369인 데이터를 검색해보세요..
SELECT * FROM EMP
WHERE EMPNO = 7369;
-- EX) 사원명(ENAME)이 'SMITH'인 데이터를 검색해보세요
SELECT * FROM EMP e 
WHERE ENAME = 'SMITH';

SELECT * FROM EMP;
-- 여러가지 조건 AND (조건이 모두 맞을 때), 조건 OR는 둘중에 하나만 맞을 때..
-- 부서번호(DEPTNO)가 10이고, 급여가 3000미만인 사원 검색
SELECT * FROM EMP
WHERE DEPTNO = 10
AND SAL < 3000;

SELECT * FROM EMP
WHERE DEPTNO = 10
OR SAL < 3000;
--EX)  JOB이 'SALESMAN'이고 SAL이 2000 미만인 사원을 출력하세요
SELECT * FROM EMP
WHERE JOB = 'SALESMAN'
AND SAL < 2000;

SELECT EMPNO, ENAME, JOB
FROM EMP;
-- 사원번호, 사원명, 직책의 컬럼을 보고자 할 때..
SELECT * FROM EMP;
--EX) 사원명(ENAME), 관리자번호(MGR), 급여(SAL), 입사일(HIREDATE)의 컬럼만 보고자 할때.. 처리 내용
SELECT ENAME, MGR, SAL, HIREDATE
FROM EMP;
SELECT ENAME, JOB, DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%'  -- 앞뒤에 'A' 가 포함되어 있으면 검색
AND JOB LIKE '%M%';  -- '%%' 전체 처리되는 내용 '%M%' M이 포함되어 있으면 검색
-- EX1) 부서정보(DEPT)  부서명(DNAME), 부서위치(LOC)를  위 내용과 같이 키워드 검색해서 출력하세요..
--     둘다 'A'를 포함하는 경우 출력
SELECT *
FROM DEPT d 
WHERE DNAME LIKE '%A%'
AND LOC LIKE '%A%';
SELECT * FROM DEPT; 
-- EX2) ENAME을 키워드 검색하고 급여를 2000 에서 5000사이 검색하세요..
SELECT * 
FROM EMP
WHERE ename LIKE '%A%'
AND sal BETWEEN 2000 AND 5000;

CREATE TABLE emp20
AS SELECT empno, ename, job, sal, deptno
FROM emp;

SELECT * FROM emp20;
-- 테이블의 구조 변경 명령어
ALTER TABLE emp20
MODIFY( ename varchar2(50), job varchar2(50) );

-- 등록 기본 문장
INSERT INTO emp20 values(1000, '홍길동','사원',3500,10);
--ex) 다음과 같이 데이터를 등록하세요 2000, '마길동','대리', 4000, 20
INSERT INTO emp20 values(2000,'마길동','대리',4000,20);

-- 수정 문장
UPDATE emp20
	SET ename='홍길동',
	    job = '과장',
	    sal = 5000
  WHERE empno = 7369;
-- 사원번호 7369인 데이터를 ename, job, sal 변경처리
SELECT * FROM EMP20;
-- EX) 7499인 사원의 사원명(ENAME)을 마길동, 직책(JOB)은 팀장, 부서번호(DEPTNO)는 40으로 변경하세요..
UPDATE EMP20
   SET ENAME = '마길동',
       JOB = '팀장',
       DEPTNO = 40
 WHERE EMPNO = 7499;



-- 게임 순위 테이블 생성
CREATE TABLE game_rank (
    player_id NUMBER PRIMARY KEY,
    player_name VARCHAR2(50) NOT NULL,
    game_score NUMBER
);

-- 데이터 입력
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (1, '앨리스', 500);
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (2, '밥', 600);
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (3, '찰리', 450);
INSERT INTO game_rank (player_id, player_name, game_score) VALUES (4, '데이빗', 700);
SELECT * FROM GAME_RANK;
-- EX) 앨리스의 게임스코어 를 확인하고자 한다 SQL을 작성해보세요..
SELECT NVL( MAX(GAME_SCORE),0 ) FROM GAME_RANK WHERE PLAYER_NAME = '';
;
/*
입력 : "앨리스" ==> String playerName ==> @Param("playerName") String playerName  (요청값으로 전달될 내용 설정)
출력 : 500 ==> int  (메서드의 리턴유형)
@Select("SELECT GAME_SCORE FROM GAME_RANK WHERE PLAYER_NAME = #{playerName}")
int getScore(@Param("playerName") String playerName);

ex) 다되었으면 바로밑 동물명으로 사는 곳 처리하는 dao 처리하고, 처리한 소스코드 전달해주세요..

 * */

/*
위 내용을 웹화면에서 처리할려면
게이머이름[    ] [게임스코어확인] ==> 게임이름을 입력한 후, 게임스코어확인을 클릭하면
해당 게이머의 이름을 서버에 요청값을 전달하고, 그 결과값을 받아서 아래에
점수 : @@@  출력한다.

이 때, 요청값으로 입력한 게이머이름이 전달하는 방식을 QUERY STRING 즉,  ?gameName=앨리스
이고, 이것을 controller단에서는 @RequestParam("gameName") String gameName으로 받아서
service, dao단에 넘겨
SELECT GAME_SCORE
FROM GAME_RANK
WHERE PLAYER_NAME = #{gameName}   으로 전달하면,
다시 결과값으로 
int getScore(@Param("gameName") string gameName);

500이란 점수를 int로 다시 service 다시 controller의 model 이름으로 
d.addAttribute("gameScore", service.getScore(gameName));
전달하면.. 화면단에서는 

${gameScore}로 결과 내용이 처리되어 진다..  이것이 웹 프로그래밍이 기본적인 DB 처리 방식이라고 할 수 있다.
 
# 개발순서
1. 초기 화면 구성
	controller - view(요청값 form name="gameName") 설정
2. dao 단 처리
	sql
	입력 - 매개변수
	결과 - 리턴값
3. service
4. controller모델 데이터 처리..

	
   
         
 * */



-- 동물원 동물 정보 테이블 생성
CREATE TABLE zoo_animals (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(50) NOT NULL,
    species VARCHAR2(50),
    age NUMBER,
    location VARCHAR2(100)
);

-- 데이터 입력
INSERT INTO zoo_animals (animal_id, animal_name, species, age, location) VALUES (1, '사자', 'Panthera leo', 5, '아프리카');
INSERT INTO zoo_animals (animal_id, animal_name, species, age, location) VALUES (2, '펭귄', 'Spheniscidae', 3, '남극');
INSERT INTO zoo_animals (animal_id, animal_name, species, age, location) VALUES (3, '코끼리', 'Loxodonta africana', 10, '아프리카');
SELECT * FROM zoo_animals;
-- 동물의 이름(animalName)을 입력 했을 때, 사는 곳(location)의 화면을 처리하는 controller/view 요청 처리를 해보세요.
-- A02_AnimalController.java   a02_animal.jsp

-- ex) 다되었으면 바로밑 동물명으로 사는 곳 처리하는 dao 처리하고, 처리한 소스코드 전달해주세요..
-- sql
SELECT * FROM zoo_animals;
SELECT LOCATION FROM ZOO_ANIMALS WHERE ANIMAL_NAME='사자';

-- dao에 들어갈 메서드 선언
/*
@Select("SELECT LOCATION FROM ZOO_ANIMALS WHERE ANIMAL_NAME=#{animalName}")
String getLocation(@Param("animalName") String animalName);


 * */


-- 음식 주문 테이블 생성
CREATE TABLE food_orders (
    order_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50) NOT NULL,
    order_date DATE,
    item_ordered VARCHAR2(100),
    quantity NUMBER,
    total_price NUMBER
);
--
SELECT item_ordered FROM food_orders WHERE customer_name = '이브';
-- 이름:[    ] [주문내역확인]
-- A03_FoodController.java   a03_food.jsp
-- 요청값: customerName, 모델데이터: itemOrdered
-- 1. Controller 생성..
-- 2. View 단 처리..
-- 데이터 입력
INSERT INTO food_orders (order_id, customer_name, order_date, item_ordered, quantity, total_price) 
VALUES (1, '이브', TO_DATE('2025-06-30', 'YYYY-MM-DD'), '피자', 2, 30);
INSERT INTO food_orders (order_id, customer_name, order_date, item_ordered, quantity, total_price) 
VALUES (2, '밥', TO_DATE('2025-06-29', 'YYYY-MM-DD'), '버거', 3, 25);
INSERT INTO food_orders (order_id, customer_name, order_date, item_ordered, quantity, total_price) 
VALUES (3, '앨리스', TO_DATE('2025-06-28', 'YYYY-MM-DD'), '샐러드', 1, 15);
SELECT item_ordered FROM food_orders WHERE customer_name = '이브';
/*
입력: "이브" ==> String customerName ==> @Param("customerName") String customerName
출력: "파자" ==> String
메서드 선언..
@Select("SELECT item_ordered FROM food_orders WHERE customer_name = #{customerName}")
String getItemOrdered(@Param("customerName") String customerName );
 * 
 * */













-- 음식 레시피 테이블
CREATE TABLE Food_Recipe (
    recipe_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(50),
    ingredients VARCHAR2(200),
    cooking_time NUMBER, -- 요리 시간 (분 단위)
    difficulty_level VARCHAR2(20) -- 요리 난이도
);

-- 데이터 입력 예시
INSERT INTO Food_Recipe (recipe_id, food_name, ingredients, cooking_time, difficulty_level)
VALUES (1, '김치찌개', '김치, 돼지고기, 두부, 양파, 마늘, 대파', 30, '중간');

INSERT INTO Food_Recipe (recipe_id, food_name, ingredients, cooking_time, difficulty_level)
VALUES (2, '불고기', '소고기, 양파, 마늘, 간장, 설탕, 참기름, 깨', 20, '쉬움');

INSERT INTO Food_Recipe (recipe_id, food_name, ingredients, cooking_time, difficulty_level)
VALUES (3, '비빔밥', '밥, 고추장, 시금치, 계란, 당근, 오이, 참기름', 15, '쉬움');


-- 음식명을 입력하면 재료를 출력
-- 음식명:[    ]

-- 모험 여행 정보 테이블
-- 모험 여행 정보 테이블
CREATE TABLE Adventure_Trip (
    trip_id NUMBER PRIMARY KEY,
    destination VARCHAR2(100),
    days NUMBER, -- 여행 기간 (일수)
    difficulty VARCHAR2(20), -- 난이도 (쉬움, 중간, 어려움)
    special_activity VARCHAR2(100) -- 여행 중 특별한 활동
);

-- 데이터 입력 예시
INSERT INTO Adventure_Trip (trip_id, destination, days, difficulty, special_activity)
VALUES (1, '에베레스트 산', 14, '어려움', '등반');

INSERT INTO Adventure_Trip (trip_id, destination, days, difficulty, special_activity)
VALUES (2, '그랜드 캐년', 7, '중간', '래프팅');

INSERT INTO Adventure_Trip (trip_id, destination, days, difficulty, special_activity)
VALUES (3, '그레이트 배리어 리프', 5, '쉬움', '스노클링');

-- 산이름을 입력하면  난이도 출력.
-- 산이름:[     ]


-- 시간 여행 정보 테이블
CREATE TABLE Time_Travel (
    trip_id NUMBER PRIMARY KEY,
    era VARCHAR2(50),
    destination VARCHAR2(100),
    travel_date DATE,
    notable_event VARCHAR2(200)
);

-- 데이터 입력 예시
INSERT INTO Time_Travel (trip_id, era, destination, travel_date, notable_event)
VALUES (1, '선사 시대', '공룡 공원', TO_DATE('1000-10-15', 'YYYY-MM-DD'), '발견된 최초의 공룡');

INSERT INTO Time_Travel (trip_id, era, destination, travel_date, notable_event)
VALUES (2, '미래', '화성 식민지', TO_DATE('2050-10-15', 'YYYY-MM-DD'), '인류 최초의 화성 이주');

INSERT INTO Time_Travel (trip_id, era, destination, travel_date, notable_event)
VALUES (3, '중세 시대', '아서왕의 궁전', TO_DATE('1000-10-15', 'YYYY-MM-DD'), '성배의 탐험');
-- 시대를 입력하면 목적지 출력
-- 시대 :[      ]



-- 슈퍼히어로 능력 테이블
CREATE TABLE Superhero_Ability (
    superhero_id NUMBER PRIMARY KEY,
    superhero_name VARCHAR2(50),
    superpower VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Superhero_Ability (superhero_id, superhero_name, superpower)
VALUES (1, '아이언맨', '고급 기술 갑옷');

INSERT INTO Superhero_Ability (superhero_id, superhero_name, superpower)
VALUES (2, '스파이더맨', '벽을 기어 오를 수 있음');

INSERT INTO Superhero_Ability (superhero_id, superhero_name, superpower)
VALUES (3, '헐크', '초인적인 힘');

INSERT INTO Superhero_Ability (superhero_id, superhero_name, superpower)
VALUES (4, '캡틴 아메리카', '슈퍼 솔져 혈청');

INSERT INTO Superhero_Ability (superhero_id, superhero_name, superpower)
VALUES (5, '토르', '천둥의 신');

-- '초인적인 힘' 능력을 가진 슈퍼히어로 이름 출력
SELECT superhero_name 
FROM Superhero_Ability
WHERE superpower = '초인적인 힘';
/*
1. controller ==> view
	요청값 superpower
	모델데이터 superhero_name
2. dao 메서드
   service
   controller 모델 데이터
3. 화면 처리 결과 확인..
 * */


-- 픽션 속 우주선 테이블
CREATE TABLE Spaceship (
    spaceship_id NUMBER PRIMARY KEY,
    spaceship_name VARCHAR2(50),
    spaceship_type VARCHAR2(50)
);

-- 데이터 입력 예시
INSERT INTO Spaceship (spaceship_id, spaceship_name, spaceship_type)
VALUES (1, '밀레니엄 팔콘', '화물선');

INSERT INTO Spaceship (spaceship_id, spaceship_name, spaceship_type)
VALUES (2, '엔터프라이즈', '우주선');

INSERT INTO Spaceship (spaceship_id, spaceship_name, spaceship_type)
VALUES (3, '타르디스', '시간 여행 기계');

INSERT INTO Spaceship (spaceship_id, spaceship_name, spaceship_type)
VALUES (4, 'X-Wing', '전투기');

INSERT INTO Spaceship (spaceship_id, spaceship_name, spaceship_type)
VALUES (5, '디스커버리 원', '탐사선');

-- '전투기' 유형의 우주선 이름 출력
SELECT spaceship_name 
FROM Spaceship
WHERE spaceship_type = '전투기';


-- 마법 아이템 테이블
CREATE TABLE Magic_Item (
    item_id NUMBER PRIMARY KEY,
    item_name VARCHAR2(50),
    effect VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Magic_Item (item_id, item_name, effect)
VALUES (1, '엑스칼리버', '소지자에게 무적의 힘을 부여');

INSERT INTO Magic_Item (item_id, item_name, effect)
VALUES (2, '투명 망토', '착용자를 투명하게 만든다');

INSERT INTO Magic_Item (item_id, item_name, effect)
VALUES (3, '불의 지팡이', '강력한 불을 쏘아낸다');

INSERT INTO Magic_Item (item_id, item_name, effect)
VALUES (4, '비행 망토', '착용자가 하늘을 날 수 있게 해준다');

INSERT INTO Magic_Item (item_id, item_name, effect)
VALUES (5, '시간의 부적', '시간을 조종할 수 있게 해준다');

-- '소지자에게 무적의 힘을 부여' 효과를 가진 아이템 이름 출력
SELECT item_name 
FROM Magic_Item
WHERE effect = '소지자에게 무적의 힘을 부여';


-- 멸종된 동물 테이블
CREATE TABLE Extinct_Animal (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(50),
    extinction_period VARCHAR2(50)
);

-- 데이터 입력 예시
INSERT INTO Extinct_Animal (animal_id, animal_name, extinction_period)
VALUES (1, '매머드', '플라이스토세');

INSERT INTO Extinct_Animal (animal_id, animal_name, extinction_period)
VALUES (2, '도도새', '홀로세');

INSERT INTO Extinct_Animal (animal_id, animal_name, extinction_period)
VALUES (3, '검치호랑이', '플라이스토세');

INSERT INTO Extinct_Animal (animal_id, animal_name, extinction_period)
VALUES (4, '승객 비둘기', '20세기 초');

INSERT INTO Extinct_Animal (animal_id, animal_name, extinction_period)
VALUES (5, '타즈마니아 호랑이', '1930년대');

-- '플라이스토세' 멸종 시기를 가진 동물 이름 출력
SELECT animal_name 
FROM Extinct_Animal
WHERE extinction_period = '플라이스토세';

-- 비디오 게임 테이블
CREATE TABLE Video_Game (
    game_id NUMBER PRIMARY KEY,
    game_name VARCHAR2(50),
    game_genre VARCHAR2(50)
);

-- 데이터 입력 예시
INSERT INTO Video_Game (game_id, game_name, game_genre)
VALUES (1, '젤다의 전설', '어드벤처');

INSERT INTO Video_Game (game_id, game_name, game_genre)
VALUES (2, '마인크래프트', '샌드박스');

INSERT INTO Video_Game (game_id, game_name, game_genre)
VALUES (3, '리그 오브 레전드', 'MOBA');

INSERT INTO Video_Game (game_id, game_name, game_genre)
VALUES (4, '오버워치', 'FPS');

INSERT INTO Video_Game (game_id, game_name, game_genre)
VALUES (5, '파이널 판타지', 'RPG');

-- 'RPG' 장르의 게임 이름 출력
SELECT game_name 
FROM Video_Game
WHERE game_genre = 'RPG';








