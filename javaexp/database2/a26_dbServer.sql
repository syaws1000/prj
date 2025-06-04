/*
# DB 서버 설정 절차.
1. 방화벽에서 DB를 접속할 때, 열어 줄수 있게 설정
	oracle 방화벽 설정   검색..
	==> port 등록..
2. 해당서버에서 접속 계정 생성 및 비번설정..
	scott.sql 참조해서 진행..
	
	command에서 sqlplus  system/1111
	로 접속  아래 명령으로 처리
GRANT CONNECT,RESOURCE,UNLIMITED TABLESPACE TO PRJ IDENTIFIED BY 1111;
ALTER USER PRJ DEFAULT TABLESPACE USERS;
ALTER USER PRJ TEMPORARY TABLESPACE TEMP;

	다른 pc에서 prj/1111로 접속 확인..	
			
3. 서버의 ip주소와 접속계정/비번호를 전달해서 접속 확인..



**/




