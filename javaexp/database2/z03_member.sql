--# login DAO/jsp 로그인 화면 처리..
--1. sql 작성
CREATE TABLE MEMBER(
	ID VARCHAR2(50) PRIMARY KEY,
	PWD VARCHAR2(20),
	NAME VARCHAR2(50),
	AUTH VARCHAR2(50),
	POINT NUMBER(5,0)
);
INSERT INTO MEMBER VALUES('himan','7777','홍길동','관리자',1000);
INSERT INTO MEMBER VALUES('higirl','8888','홍마리','일반사용자',2000);
INSERT INTO MEMBER VALUES('goodman','9999','김철수','방문자',3000);

SELECT * FROM MEMBER WHERE ID = 'himan' AND PWD = '7777';

--2. 입력: ID(문자열), PWD(문자열) ==> String id, String pwd
--   출력: ID, PWD, NAME, AUTH, POINT ==> String id, String pwd, String name
--        String auth, int point
/*
입/출력 가능 dto 객체 선언..
class MemberDto{
	private String id;
	private String pwd;
	private String name;
	private String auth;
	private int point;
}
 * /
--3. 기능 메서드 선언..
/*
public MemberDto login(MemberDto mem){
	MemberDto dto = null;
	String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";
	
	return dto;
}
 * */

--4. 화면단 구현..

SELECT * FROM MEMBER;


CREATE TABLE memeber01
AS SELECT * FROM MEMBER;
/*
class MemberDto{}

class MemberDao2{}

a10_login.jsp
a11_process.jsp
a12_main.jsp

1. 기본 form 화면 만들기..
2. dao 처리
3. jsp : usebean설정 처리..


 * */






