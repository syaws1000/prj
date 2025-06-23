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

