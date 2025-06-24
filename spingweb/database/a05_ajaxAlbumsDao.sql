-- 음악 앨범 정보 테이블 생성
CREATE TABLE music_albums (
    album_id NUMBER PRIMARY KEY,
    album_title VARCHAR2(100),
    artist VARCHAR2(100),
    release_date DATE,
    genre VARCHAR2(50),
    price NUMBER(6,2)
);

-- 데이터 삽입
INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (1, 'Thriller', 'Michael Jackson', TO_DATE('1982-11-30', 'YYYY-MM-DD'), 'Pop', 15.99);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (2, 'Back in Black', 'AC/DC', TO_DATE('1980-07-25', 'YYYY-MM-DD'), 'Rock', 12.99);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (3, 'The Dark Side of the Moon', 'Pink Floyd', TO_DATE('1973-03-01', 'YYYY-MM-DD'), 'Progressive Rock', 18.99);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (4, 'The Beatles', 'The Beatles', TO_DATE('1968-11-22', 'YYYY-MM-DD'), 'Rock', 14.99);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (5, '21', 'Adele', TO_DATE('2011-01-24', 'YYYY-MM-DD'), 'Pop', 14.49);

-- 데이터 삽입 (한글 데이터 사용)
INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (6, '아이유의 팔레트', '아이유', TO_DATE('2017-04-21', 'YYYY-MM-DD'), 'K-pop', 14.99);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (7, 'BTS: Love Yourself Answer', '방탄소년단', TO_DATE('2018-08-24', 'YYYY-MM-DD'), 'K-pop', 18.50);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (8, '싸이의 강남스타일', '싸이', TO_DATE('2012-07-15', 'YYYY-MM-DD'), 'K-pop', 13.99);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (9, '블랙핑크: THE ALBUM', '블랙핑크', TO_DATE('2020-10-02', 'YYYY-MM-DD'), 'K-pop', 16.00);

INSERT INTO music_albums (album_id, album_title, artist, release_date, genre, price)
VALUES (10, 'EXO: LOVE SHOT', '엑소', TO_DATE('2018-12-13', 'YYYY-MM-DD'), 'K-pop', 15.49);

SELECT * FROM music_albums;
--	1) sql 작성
SELECT ALBUM_ID, ALBUM_TITLE, ARTIST, GENRE 
FROM MUSIC_ALBUMS 
WHERE ALBUM_TITLE LIKE '%%' AND ARTIST LIKE '%%' AND GENRE LIKE '%%';
--		입력값 : 매개변수로 선언
--             ALBUM_TITLE ==> 자바 변수 ==> String albumTitle  ==> @Param("albumTitle") String albumTitle
--             ARTIST ==> 자바 변수 ==> String artist  ==> @Param("artist") String artist
--             GENRE ==> 자바 변수 ==> String genre  ==> @Param("genre") String genre
--             ==> 객체로 선언 ==> MusicAlbums

--		출력값 : 리턴 유형으로 설정	
--               ALBUM_ID, ALBUM_TITLE, ARTIST, GENRE ==> int albumId; String albumTitle; String genre
--               ==>  MusicAlbums			

--	2) dto : MusicAlbums.java
-- 
--	3) dao 메서드 선언
/*
@Select("WHERE ALBUM_TITLE LIKE #{albumTitle} AND ARTIST LIKE #{artist} AND GENRE LIKE #{genre}")
MusicAlbums getMusicAlums(MusicAlbums sch);
 * */
--	1) dao
--		sql
INSERT INTO music_albums VALUES (album_seq.nextval, '꽃갈피 셋', '아이유', TO_DATE('2025-05-30', 'YYYY-MM-DD'), 'K-Pop', 20.99);
CREATE SEQUENCE album_seq;
--		메서드
SELECT album_seq.nextval FROM dual;
SELECT * FROM music_albums;
/*
	private int albumId;
	private String albumTitle;
	private String artist;
	private Date releaseDate;
	private String genre;
	private int price;
@Insert("INSERT INTO music_albums VALUES (album_seq.nextval, #{albumTitle}, #{artist}, #{releaseDate},#{genre}, #{price})")
int insertAlbum(MusicAlbums ins);

 * */


SELECT * FROM music_albums;

	UPDATE music_albums
	  SET ALBUM_TITLE = '꼭갈피 셋(수정)',
	      ARTIST = '아이유(수정)',
	      RELEASE_DATE = TO_DATE('2025-06-23','YYYY-MM-DD'),
	      GENRE = 'K-POP2',
	      PRICE = 999
	WHERE album_id = 1;
	DELETE FROM music_albums  WHERE  album_id = 1;
/*
	private int albumId;
	private String albumTitle;
	private String artist;
	private Date releaseDate;
	private String genre;
	private int price;
	
UPDATE music_albums
  SET ALBUM_TITLE = #{albumTitle},
      ARTIST = #{artist},
      RELEASE_DATE = #{releaseDate},
      GENRE = #{genre},
      PRICE = #{price}
WHERE album_id = #{albumId}
 
DELETE FROM music_albums  WHERE  album_id = #{albumId}

 * */	
	

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
	
CREATE SEQUENCE CITY_SEQ;
SELECT CITY_SEQ.NEXTVAL FROM DUAL;

SELECT * FROM cities;	
SELECT * FROM cities WHERE CITY_NAME LIKE '%%' AND COUNTRY LIKE '%%';	
SELECT * FROM cities WHERE CITY_ID = 1;	
UPDATE CITIES
   SET CITY_NAME='서울(수정)',
       COUNTRY = '대한민국(수정)',
       POPULATION = 8888000,
       AREA = 650,
       FOUNDED_DATE = TO_DATE('1945-08-15','YYYY-MM-DD')
  WHERE CITY_ID = 1;  
DELETE FROM CITIES WHERE CITY_ID = 1;  
/*
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
	
	

