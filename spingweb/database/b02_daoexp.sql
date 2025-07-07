
--### 1. **행복한 휴가 여행 테이블**

--이 테이블은 사람들이 떠나고 싶은 여행지와 그 여행지에서의 행복한 활동을 다룹니다. `activity` (활동) 컬럼을 조건으로 사용하고, `destination` (여행지) 컬럼을 출력하는 예제입니다.

--sql
-- 행복한 휴가 여행 테이블
CREATE TABLE Happy_Vacation (
    vacation_id NUMBER PRIMARY KEY,
    destination VARCHAR2(50),
    activity VARCHAR2(100)
);
SELECT * FROM Happy_Vacation WHERE destincation='파리';

-- 데이터 입력 예시
INSERT INTO Happy_Vacation (vacation_id, destination, activity)
VALUES (1, '파리', '에펠탑 앞에서 사진 찍기');

INSERT INTO Happy_Vacation (vacation_id, destination, activity)
VALUES (2, '몰디브', '바다 속에서 스노클링하기');

INSERT INTO Happy_Vacation (vacation_id, destination, activity)
VALUES (3, '하와이', '서핑 배우기');

INSERT INTO Happy_Vacation (vacation_id, destination, activity)
VALUES (4, '스위스', '알프스 산에서 하이킹하기');

INSERT INTO Happy_Vacation (vacation_id, destination, activity)
VALUES (5, '도쿄', '디즈니랜드에서 하루 종일 놀기');
--

--#### **조건 컬럼 (activity)과 출력 컬럼 (destination)을 활용한 예제 SQL**

--sql
-- '바다 속에서 스노클링하기' 활동이 포함된 여행지 출력
SELECT destination 
FROM Happy_Vacation;
SELECT destination 
FROM Happy_Vacation
WHERE activity = '바다 속에서 스노클링하기';
/*
SELECT destination FROM Happy_Vacation WHERE activity = #{activity}

요청값(입력값) : activity  @RequestParam(value="activity", defaultValue="" ) String activity 
				==> 매개변수  ==> @Param("activity") String activity
			  화면단 ${param.activity}  <input name="activity" >  [바다 속에서 스노클링하기   ]
			  
모델값(리턴값) : destination  d.addAttribute("destination", service.getActivity(activity)); 
				==> 리턴 유형 ==> String
			  화면단 ${destination}
			  
@Select("SELECT destination FROM Happy_Vacation WHERE activity = #{activity}")			  
String getDestination(@Param("activity") String activity);
			  
1. controller
	A01_HappyController.java
	A01_HappyService.java
	A01_HappyDao.java
	a01_happy.jsp
2. view
3. dao
4. service
5. controller 모델 
 * */

--

--### 2. **즐거운 반려동물 테이블**

--사람들이 기르는 다양한 반려동물과 그들의 특성을 다룬 테이블입니다. `special_ability` (특기) 컬럼을 조건으로 사용하고, `pet_name` (반려동물 이름)을 출력하는 예제입니다.

--sql
-- 즐거운 반려동물 테이블
CREATE TABLE Happy_Pet (
    pet_id NUMBER PRIMARY KEY,
    pet_name VARCHAR2(50),
    species VARCHAR2(50),
    special_ability VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Happy_Pet (pet_id, pet_name, species, special_ability)
VALUES (1, '뽀송이', '고양이', '혼자서 공 던지고 잡기');

INSERT INTO Happy_Pet (pet_id, pet_name, species, special_ability)
VALUES (2, '별이', '강아지', '착한 미소로 모든 사람을 행복하게 만들기');

INSERT INTO Happy_Pet (pet_id, pet_name, species, special_ability)
VALUES (3, '구름이', '토끼', '항상 똑바로 서서 춤추기');

INSERT INTO Happy_Pet (pet_id, pet_name, species, special_ability)
VALUES (4, '초코', '햄스터', '작은 다리로 빠르게 뛰기');

INSERT INTO Happy_Pet (pet_id, pet_name, species, special_ability)
VALUES (5, '핑크', '앵무새', '사람 말 따라 하기');
--

--#### **조건 컬럼 (special\_ability)과 출력 컬럼 (pet\_name)을 활용한 예제 SQL**

--sql
-- '착한 미소로 모든 사람을 행복하게 만들기' 특기를 가진 반려동물 이름 출력
SELECT pet_name FROM Happy_Pet WHERE special_ability = '착한 미소로 모든 사람을 행복하게 만들기';

/*
@Select("SELECT pet_name FROM Happy_Pet WHERE special_ability = #{specialAbility}")
String getPetname(@Param("specialAbility") String special_ability);

A02_HappyPetController.java
A02_HappyPetService.java
A02_HappyPetDao.java

a02_happyPet.jsp


 * */
--

--### 3. **행복한 음식 테이블**

--음식의 이름과 그 음식이 주는 행복감을 다룬 테이블입니다. `happiness_level` (행복도) 컬럼을 조건으로 사용하고, `food_name` (음식 이름)을 출력하는 예제입니다.

--sql
-- 행복한 음식 테이블
CREATE TABLE Happy_Food (
    food_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(50),
    happiness_level VARCHAR2(20)
);

-- 데이터 입력 예시
INSERT INTO Happy_Food (food_id, food_name, happiness_level)
VALUES (1, '초콜릿 케이크', '매우 행복');

INSERT INTO Happy_Food (food_id, food_name, happiness_level)
VALUES (2, '딸기 아이스크림', '행복');

INSERT INTO Happy_Food (food_id, food_name, happiness_level)
VALUES (3, '피자', '매우 행복');

INSERT INTO Happy_Food (food_id, food_name, happiness_level)
VALUES (4, '떡볶이', '행복');

INSERT INTO Happy_Food (food_id, food_name, happiness_level)
VALUES (5, '치킨', '매우 행복');
--
SELECT * FROM Happy_Food WHERE food_name='피자';
/*
요청값 : String foodName ==> @Param("foodName") String foodName
모델데이터 : 3, "파자", "매우 행복" ==>  int foodId; String foodName; String happinessLevel;
class HappyFood{
	private int foodId; 
	private String foodName; 
	private String happinessLevel;
}
@Select("SELECT * FROM Happy_Food WHERE food_name=#{foodName} ");
HappyFood getFood( @Param("foodName") String foodName)

 
 * */
--#### **조건 컬럼 (happiness\_level)과 출력 컬럼 (food\_name)을 활용한 예제 SQL**

--sql
-- '매우 행복'을 주는 음식 이름 출력
SELECT food_name 
FROM Happy_Food
WHERE happiness_level = '매우 행복';
--

--### 4. **웃음 나는 영화 테이블**

--영화 이름과 그 영화의 웃음 포인트를 다룬 테이블입니다. `laugh_points` (웃음 포인트) 컬럼을 조건으로 사용하고, `movie_name` (영화 이름)을 출력하는 예제입니다.

--sql
-- 웃음 나는 영화 테이블
CREATE TABLE Funny_Movie (
    movie_id NUMBER PRIMARY KEY,
    movie_name VARCHAR2(100),
    laugh_points VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Movie (movie_id, movie_name, laugh_points)
VALUES (1, '슈퍼배드', '귀여운 미니언들');

INSERT INTO Funny_Movie (movie_id, movie_name, laugh_points)
VALUES (2, '복수의 여신들', '재치 있는 대사들');

INSERT INTO Funny_Movie (movie_id, movie_name, laugh_points)
VALUES (3, '마션', '엉뚱한 과학적 아이디어');

INSERT INTO Funny_Movie (movie_id, movie_name, laugh_points)
VALUES (4, '스타워즈: 깨어난 포스', '매력적인 캐릭터들');

INSERT INTO Funny_Movie (movie_id, movie_name, laugh_points)
VALUES (5, '킹스맨', '유머와 액션의 완벽한 조화');
--

--#### **조건 컬럼 (laugh\_points)과 출력 컬럼 (movie\_name)을 활용한 예제 SQL**

--sql
-- '귀여운 미니언들' 웃음 포인트가 포함된 영화 이름 출력
SELECT * 
FROM Funny_Movie
WHERE laugh_points = '귀여운 미니언들';
/*
요청값:
모델데이터: 
 * */

--### 5. **행복한 동물의 친구 테이블**

--동물들이 서로 친해지는 장면과 그들의 관계를 다룬 테이블입니다. `friendship_type` (친구 관계 유형)을 조건으로 사용하고, `animal_name` (동물 이름)을 출력하는 예제입니다.

--sql
-- 행복한 동물의 친구 테이블
CREATE TABLE Animal_Friends (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(50),
    friendship_type VARCHAR2(50)
);

-- 데이터 입력 예시
INSERT INTO Animal_Friends (animal_id, animal_name, friendship_type)
VALUES (1, '호랑이', '토끼와 친구');

INSERT INTO Animal_Friends (animal_id, animal_name, friendship_type)
VALUES (2, '고양이', '강아지와 친구');

INSERT INTO Animal_Friends (animal_id, animal_name, friendship_type)
VALUES (3, '새', '고양이와 친구');

INSERT INTO Animal_Friends (animal_id, animal_name, friendship_type)
VALUES (4, '여우', '사슴과 친구');

INSERT INTO Animal_Friends (animal_id, animal_name, friendship_type)
VALUES (5, '펭귄', '돌고래와 친구');
--

--#### **조건 컬럼 (friendship\_type)과 출력 컬럼 (animal\_name)을 활용한 예제 SQL**

--sql
-- '토끼와 친구'인 동물 이름 출력
SELECT *
FROM Happy_Food
WHERE happiness_level = '매우 행복';

SELECT * 
FROM Funny_Movie
WHERE laugh_points = '귀여운 미니언들';

SELECT * 
FROM Animal_Friends
WHERE friendship_type = '토끼와 친구';

SELECT * FROM Happy_Vacation WHERE destincation='파리';


--

SELECT * FROM Animal_Friends; WHERE friendship_type= '토끼와 친구';
/* 
입력 : 요청(param.friendshipType), 매개변수   토끼와 친구 ==> String friendshipType 
		==> @Param("friendshipType") String friendshipType
출력 :  모델데이터(), 리턴유형
	db ANIMAL_ID 1,  ANIMAL_NAME 호랑이, FRIENDSHIP_TYPE 토끼와 친구
	==> JAVA  int animalId; String animalName; String friendshipType
	class AnimalFriend{
		private int animalId; 
		private String animalName; 
		private String friendshipType;
	}
	@Select("SELECT * FROM Animal_Friends WHERE friendship_type= #{friendshipType}")
	AnimalFriend getAnmialFriend(@Param("friendshipType") String friendshipType);
	
1. 초기 화면  friendshipType
A04_AnimalFriendsController.java	
A04_AnimalFriendsService.java	
A04_AnimalFriendsDao.java	
AnimalFriend.java
a04_animalFriend.jsp
 * */

SELECT * FROM Funny_Movie; WHERE laugh_points = '귀여운 미니언들';
/*

@Select("SELECT * FROM Funny_Movie; WHERE laugh_points = #{laughPoints}")
FunnyMovie getFunnyMovie(@Param("laughPoints") String laughPoints);

class FunnyMovie{
	private int movieId;
	private String moviename;
	private String laughPoints;
	
}
A05_FunnyMovieController.java	
A05_FunnyMovieService.java	
A05_FunnyMovieDao.java	
FunnyMovie.java
a05_funnyMovie.jsp

 * 
 * */
SELECT food_name FROM Happy_Food WHERE HAPPINESS_LEVEL LIKE '%매우 행복%' OR food_name LIKE '%치킨%';
/*
# 출력값  문자열 배열 ==> List<String> ==> String[]  ==> 리턴유형
# 입력값  HAPPINESS_LEVEL food_name ==> String happiness, String foodName  ==> HappyFood sch



 * */

SELECT * FROM Happy_Food WHERE HAPPINESS_LEVEL LIKE '%매우 행복%';













-- 웃긴 동물 테이블
CREATE TABLE Funny_Animals (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(50),
    special_ability VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Animals (animal_id, animal_name, special_ability)
VALUES (1, '수달', '물속에서 댄스 춤추기');

INSERT INTO Funny_Animals (animal_id, animal_name, special_ability)
VALUES (2, '고양이', '단추를 눌러서 라디오 조작하기');

INSERT INTO Funny_Animals (animal_id, animal_name, special_ability)
VALUES (3, '강아지', '주인 따라 댄스하기');

INSERT INTO Funny_Animals (animal_id, animal_name, special_ability)
VALUES (4, '앵무새', '웃음소리 따라 하기');

INSERT INTO Funny_Animals (animal_id, animal_name, special_ability)
VALUES (5, '여우', '구멍에서 나와서 춤추기');
-- '단추를 눌러서 라디오 조작하기' 능력을 가진 동물 이름 출력
SELECT * FROM Funny_Animals 
WHERE special_ability = '단추를 눌러서 라디오 조작하기';


-- 미래의 음식 테이블
CREATE TABLE Future_Food (
    food_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(50),
    description VARCHAR2(200)
);

-- 데이터 입력 예시
INSERT INTO Future_Food (food_id, food_name, description)
VALUES (1, '타임버거', '시간을 돌릴 수 있는 햄버거');

INSERT INTO Future_Food (food_id, food_name, description)
VALUES (2, '제로칼로리 케이크', '칼로리가 제로인 달콤한 케이크');

INSERT INTO Future_Food (food_id, food_name, description)
VALUES (3, '물의 아이스크림', '아이스크림을 먹으면 물이 나오는 맛');

INSERT INTO Future_Food (food_id, food_name, description)
VALUES (4, '광속 피자', '몇 초 만에 오븐에서 나오는 피자');

INSERT INTO Future_Food (food_id, food_name, description)
VALUES (5, '별빛 스무디', '별빛을 담은 스무디');


-- '시간을 돌릴 수 있는 햄버거' 음식 이름 출력
SELECT * FROM Future_Food 
WHERE description = '시간을 돌릴 수 있는 햄버거';

-- 유명한 스포츠 스타 테이블
CREATE TABLE Legendary_Athletes (
    athlete_id NUMBER PRIMARY KEY,
    athlete_name VARCHAR2(50),
    sport_specialty VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Legendary_Athletes (athlete_id, athlete_name, sport_specialty)
VALUES (1, '마이클 조던', '농구의 비행');

INSERT INTO Legendary_Athletes (athlete_id, athlete_name, sport_specialty)
VALUES (2, '우사인 볼트', '100미터 달리기');

INSERT INTO Legendary_Athletes (athlete_id, athlete_name, sport_specialty)
VALUES (3, '세레나 윌리엄스', '테니스의 강력한 서브');

INSERT INTO Legendary_Athletes (athlete_id, athlete_name, sport_specialty)
VALUES (4, '펠레', '축구의 마법');

INSERT INTO Legendary_Athletes (athlete_id, athlete_name, sport_specialty)
VALUES (5, '타이거 우즈', '골프의 퍼팅');

-- '농구의 비행' 기술을 가진 스포츠 스타 이름 출력
SELECT * FROM Legendary_Athletes 
WHERE sport_specialty = '농구의 비행';


-- 웃긴 영화 캐릭터 테이블
CREATE TABLE Funny_Movie_Characters (
    character_id NUMBER PRIMARY KEY,
    character_name VARCHAR2(50),
    humor_style VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Movie_Characters (character_id, character_name, humor_style)
VALUES (1, '미니언', '엉뚱한 행동으로 웃음 유발');

INSERT INTO Funny_Movie_Characters (character_id, character_name, humor_style)
VALUES (2, '닥터 스트레인지', '미스터리한 농담과 말장난');

INSERT INTO Funny_Movie_Characters (character_id, character_name, humor_style)
VALUES (3, '어벤져스', '상황에 맞는 재치 있는 대사');

INSERT INTO Funny_Movie_Characters (character_id, character_name, humor_style)
VALUES (4, '토니 스타크', '시니컬한 유머');

INSERT INTO Funny_Movie_Characters (character_id, character_name, humor_style)
VALUES (5, '하비', '기발한 기계적 유머');



-- 미래의 음악 테이블
CREATE TABLE Future_Music (
    genre_id NUMBER PRIMARY KEY,
    genre_name VARCHAR2(50),
    genre_description VARCHAR2(200)
);

-- 데이터 입력 예시
INSERT INTO Future_Music (genre_id, genre_name, genre_description)
VALUES (1, '전자 힙합', '디지털 사운드와 전자 비트의 조화');

INSERT INTO Future_Music (genre_id, genre_name, genre_description)
VALUES (2, '네오 클래식', '클래식과 현대 음악의 융합');

INSERT INTO Future_Music (genre_id, genre_name, genre_description)
VALUES (3, '우주 재즈', '우주적인 분위기의 자유로운 재즈');

INSERT INTO Future_Music (genre_id, genre_name, genre_description)
VALUES (4, '로보틱 팝', '로봇 음성과 팝의 결합');

INSERT INTO Future_Music (genre_id, genre_name, genre_description)
VALUES (5, '디지털 록', '디지털 사운드와 록의 결합');
-- '디지털 사운드와 전자 비트의 조화' 설명을 가진 음악 장르 출력
SELECT * FROM Future_Music 
WHERE genre_description = '디지털 사운드와 전자 비트의 조화'; 

SELECT * FROM Future_Music; 
-- FutureMusic
-- GENRE_ID ==> int genreId;






DROP TABLE Funny_Superheroes;
-- 엉뚱한 슈퍼히어로 테이블
CREATE TABLE Funny_Superheroes (
    hero_id NUMBER PRIMARY KEY,
    hero_name VARCHAR2(50),
    superpower VARCHAR2(100),
    humor_style VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Superheroes (hero_id, hero_name, superpower, humor_style)
VALUES (1, '에너지맨', '전기를 방출하며 춤추기', '엉뚱한 춤과 율동');

INSERT INTO Funny_Superheroes (hero_id, hero_name, superpower, humor_style)
VALUES (2, '핸드폰맨', '핸드폰을 무한히 충전시키는 능력', '핸드폰으로 대화만 하기');

INSERT INTO Funny_Superheroes (hero_id, hero_name, superpower, humor_style)
VALUES (3, '슬로우보이', '시간을 천천히 흐르게 만드는 능력', '느린 말투로 웃긴 농담하기');

INSERT INTO Funny_Superheroes (hero_id, hero_name, superpower, humor_style)
VALUES (4, '플라밍고맨', '플라밍고처럼 다리 하나로 서기', '불필요한 순간에 플라밍고 자세 취하기');

INSERT INTO Funny_Superheroes (hero_id, hero_name, superpower, humor_style)
VALUES (5, '버섯파워', '버섯으로 사람들을 변장시키는 능력', '버섯을 먹고 갑자기 변신하기');

-- '슬로우보이'의 능력과 유머 스타일 출력
SELECT * FROM Funny_Superheroes
WHERE hero_name = '슬로우보이';

-- 심박한 음료수 테이블
CREATE TABLE Funny_Beverages (
    beverage_id NUMBER PRIMARY KEY,
    beverage_name VARCHAR2(50),
    effect VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Beverages (beverage_id, beverage_name, effect)
VALUES (1, '웃음콜라', '한 모금 마시면 10분 동안 웃음이 멈추지 않음');

INSERT INTO Funny_Beverages (beverage_id, beverage_name, effect)
VALUES (2, '잠깨는 커피', '마시면 2시간 동안 춤을 춤');

INSERT INTO Funny_Beverages (beverage_id, beverage_name, effect)
VALUES (3, '스파이시 쥬스', '마시면 입에서 불이 나옴');

INSERT INTO Funny_Beverages (beverage_id, beverage_name, effect)
VALUES (4, '블루베리 소다', '마시면 모든 말을 블루베리 맛으로 들림');

INSERT INTO Funny_Beverages (beverage_id, beverage_name, effect)
VALUES (5, '초코포션', '마시면 몸이 초콜릿으로 변함');

-- '웃음콜라'의 효과 출력
SELECT * FROM Funny_Beverages
WHERE beverage_name = '웃음콜라';

-- 웃긴 직업 테이블
CREATE TABLE Funny_Jobs (
    job_id NUMBER PRIMARY KEY,
    job_name VARCHAR2(50),
    job_scenario VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Funny_Jobs (job_id, job_name, job_scenario)
VALUES (1, '변기 관리 전문가', '하루 종일 변기만 닦기');

INSERT INTO Funny_Jobs (job_id, job_name, job_scenario)
VALUES (2, '냉장고 안 청소부', '냉장고 속 과거 음식을 찾아내어 이야기하기');

INSERT INTO Funny_Jobs (job_id, job_name, job_scenario)
VALUES (3, '휴대폰 뒷면 스티커 교환맨', '사람들이 다 떨어진 스티커를 교환하게 하기');

INSERT INTO Funny_Jobs (job_id, job_name, job_scenario)
VALUES (4, '전봇대 올라가기 전문가', '전봇대 위에서 춤추기');

INSERT INTO Funny_Jobs (job_id, job_name, job_scenario)
VALUES (5, '슬리퍼 관리자', '슬리퍼가 옳게 착용되었는지 검사하기');

-- '변기 관리 전문가'의 직업 상황 출력
SELECT * FROM Funny_Jobs
WHERE job_name = '변기 관리 전문가';


-- 기발한 수퍼푸드 테이블
CREATE TABLE Super_Foods (
    food_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(50),
    funny_effect VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Super_Foods (food_id, food_name, funny_effect)
VALUES (1, '파워 퀴노아', '먹으면 10분 동안 날아다닐 수 있음');

INSERT INTO Super_Foods (food_id, food_name, funny_effect)
VALUES (2, '우주 마카로니', '먹으면 순간이동 가능');

INSERT INTO Super_Foods (food_id, food_name, funny_effect)
VALUES (3, '치킨 케일', '먹으면 3배 더 빨리 뛸 수 있음');

INSERT INTO Super_Foods (food_id, food_name, funny_effect)
VALUES (4, '바나나 피자', '먹으면 바나나만으로도 피자처럼 보임');

INSERT INTO Super_Foods (food_id, food_name, funny_effect)
VALUES (5, '토마토 초콜릿', '먹으면 모든 음식을 토마토 맛으로 느끼게 됨');


-- '파워 퀴노아'의 웃긴 효과 출력
SELECT * FROM Super_Foods
WHERE food_name = '파워 퀴노아';


-- 상상 속 유니콘 동물원 테이블
CREATE TABLE Unicorn_Zoo (
    unicorn_id NUMBER PRIMARY KEY,
    unicorn_name VARCHAR2(50),
    unicorn_special_ability VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability)
VALUES (1, '반짝이', '모든 사람에게 행복을 주는 미소');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability)
VALUES (2, '구름이', '구름을 타고 하늘을 나는 능력');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability)
VALUES (3, '별빛', '밤하늘에서 별을 떨어뜨리며 춤추기');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability)
VALUES (4, '빛나는', '불을 피우며 노래 부르기');

INSERT INTO Unicorn_Zoo (unicorn_id, unicorn_name, unicorn_special_ability)
VALUES (5, '환희', '모든 꽃을 피우게 만드는 능력');

-- '모든 사람에게 행복을 주는 미소' 능력을 가진 유니콘 출력
SELECT * FROM Unicorn_Zoo
WHERE unicorn_special_ability = '모든 사람에게 행복을 주는 미소';




