-- 도시 정보 테이블 생성
CREATE TABLE cities (
    city_id NUMBER PRIMARY KEY,
    city_name VARCHAR2(100),
    country VARCHAR2(50),
    population NUMBER,
    area NUMBER(8, 2),
    founded_date DATE
);

-- 데이터 삽입 (한글 도시명 포함)
INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (1, '서울', '대한민국', 9776000, 605.21, TO_DATE('1394-03-18', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (2, '뉴욕', '미국', 8419600, 783.83, TO_DATE('1624-05-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (3, '도쿄', '일본', 13929286, 2194.07, TO_DATE('1603-03-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (4, '파리', '프랑스', 2148327, 105.4, TO_DATE('52-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (5, '시드니', '호주', 5312163, 1214.18, TO_DATE('1788-01-26', 'YYYY-MM-DD'));
INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (6, '부산', '대한민국', 3512500, 769.6, TO_DATE('1396-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (7, '뉴욕', '미국', 8419600, 783.83, TO_DATE('1624-05-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (8, '오사카', '일본', 2690000, 225.21, TO_DATE('645-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (9, '밀라노', '이탈리아', 1366180, 181.76, TO_DATE('590-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (10, '맨체스터', '영국', 545500, 115.6, TO_DATE('79-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (11, '프랑크푸르트', '독일', 753056, 248.3, TO_DATE('794-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (12, '인천', '대한민국', 2945000, 1029.9, TO_DATE('1396-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (13, '로스앤젤레스', '미국', 3980400, 1302, TO_DATE('1781-09-04', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (14, '교토', '일본', 1474570, 827.83, TO_DATE('794-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (15, '로마', '이탈리아', 2873000, 1285.3, TO_DATE('753-04-21', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (16, '버밍엄', '영국', 1141816, 267.8, TO_DATE('79-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (17, '뮌헨', '독일', 1456039, 310.7, TO_DATE('1158-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (18, '대구', '대한민국', 2432000, 883.5, TO_DATE('1000-01-01', 'YYYY-MM-DD'));

INSERT INTO cities (city_id, city_name, country, population, area, founded_date)
VALUES (19, '시카고', '미국', 2716000, 589, TO_DATE('1833-08-12', 'YYYY-MM-DD'));
-- 시퀀스	
CREATE SEQUENCE CITY_SEQ;
SELECT CITY_SEQ.NEXTVAL FROM DUAL;

SELECT * FROM cities;	
-- 조회 리스트
SELECT * FROM cities WHERE CITY_NAME LIKE '%%' AND COUNTRY LIKE '%%';
-- 출력 : cityId, cityName, country, polulation ==> City ==> List<City>
-- 입력 : cityName, country ==> City ==> City sch
/*
@Select("SELECT * FROM cities WHERE CITY_NAME LIKE #{cityName} AND COUNTRY LIKE #{country}")
List<City> getCityList(City sch);
 * */

-- 등록
INSERT INTO cities VALUES (CITY_SEQ.NEXTVAL, '시카고', '미국', 2716000, 589, TO_DATE('1833-08-12', 'YYYY-MM-DD'));
-- 출력 : int
-- 입력 : cityName, country, population, area, foundedDate ==> City ins
/*
@Insert("INSERT INTO cities VALUES (CITY_SEQ.NEXTVAL,#{cityName}, #{country}, #{population}, #{area}, #{foundedDate} )")
int insertCity( City ins)
 * */
-- 상세
SELECT * FROM cities WHERE CITY_ID = 1;	
/*
출력 : cityId, cityName, country, population, area, foundedDate ==> City
입력 : @Param("cityId") int cityId
@Select("SELECT * FROM cities WHERE CITY_ID = #{cityId}")
City getCity(@Param("cityId") int cityId)
 */
-- 수정
UPDATE CITIES
   SET CITY_NAME='서울(수정)',
       COUNTRY = '대한민국(수정)',
       POPULATION = 8888000,
       AREA = 650,
       FOUNDED_DATE = TO_DATE('1945-08-15','YYYY-MM-DD')
  WHERE CITY_ID = 1;  
/*
입력 : cityId, cityName, country, population, area, foundedDate ==> City
출력 : int

UPDATE CITIES
   SET CITY_NAME=#{cityName},
       COUNTRY = #{country},
       POPULATION = #{population},
       AREA = #{area},
       FOUNDED_DATE = #{foundedDate}
  WHERE CITY_ID = #{cityId}
@Update("")
int updateCity(Cyty upt);


 * */
-- 삭제 처리
DELETE FROM CITIES WHERE CITY_ID = 1;  
/*
입력 : @Param("cityId") int cityId
@Delete("DELETE FROM CITIES WHERE CITY_ID = #{cityId}")
int deleteCity( @Param("cityId") int cityId )

class City{
	private int cityId;
	private String cityName;
	private String country;
	private int poplulation;
	private double area;
	private Date foundedDate;
	

	
			
}
 * */
SELECT * FROM cities;	
	
	
