<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
# 기타 form 하위 유형들
1. input type="file" : 파일을 업로드 할 때, 사용된다.
2. input type="email" : 이미일 주소 형식을 설정하여, 전송되게 한다.
3. input type="url" : 특정 url 입력시 사용된다.
4. input type="tel" : 전화 번호 형식으로 입력시 사용된다.
5. input type="search" : 검색어 입력시 사용된다.
# 유효성으로 위한 속성.
1. required
	유효성체크란 입력 form에 의해서 입력후, 전송시 서버에 전달되기 전에
	특정한 입력여부나 형식에 맞는지 여부를 사전에 check해서 특정한 데이터의 입력
	을 하게 만드는 것을 말한다.
	html form요소하위 객체에서 required 속성은 해당 요소에 대한 필수 입력을
	check해준다.
2. placeholder
	입력하기 전에, value으로 할당할 내용에 대한 설명을 form요소에 임시적으로 보이게
	하는 기능을 말한다. 입력을 위해 클릭시 사라진다.
	ex) <input  placeholder="아이디를 입력하세요" required>
	아이디를 입력하세요라고 입력란에 표현하고 클릭시 이 문구는 사라지고, submit버튼 클릭시
	데이터가 입력되어 있지 않으면 필수항목이라 표시된다.
	

 -->
<h2>파일업로드</h2>
첨부할 파일 클릭:<input type="file"/>
<h2>회원 정보를 입력하세요</h2>
<hr>
<form>
	<fieldset><!--  form 입력항목을 감싸 범위를 지정 -->
		<legend>회원정보</legend><!-- form입력항목의 타이틀 지정 -->
		이메일:<input type="email" name="email" placeholder="이메일주소입력" required><br>
		홈페이지:<input type="url" name="url" placeholder="url 주소입력"><br>
		전화번호:<input type="tel" name="tel" placeholder="###-####-#### 형식입력" required><br>
		<input type="submit" value="입력">
	</fieldset>

</form>
<h2>입력된 회원정보</h2>
<h3>이메일:${param.email}</h3>
<h3>홈페이지주소:${param.url}</h3>
<h3>전화번호:${param.tel}</h3>
<form>
	<fieldset>
		<legend>학생 성적 정보 등록</legend>
		학생명:<input type="text" name="stuName" required><br>
		국어:<input type="number" name="kor" required><br>
		영어:<input type="number" name="eng" required><br>
		<input type="submit" value="등록">
	</fieldset>
</form>
<h2>${param.stuName}님의 국어점수:${param.kor}, 영어점수:${param.eng}</h2>
<!-- 
ex) 학생 성적 정보 등록 form 만들기
학생명 : [    ] ==> 필수입력(required)
국어:[   ] ==> 숫자입력/필수 입력 type="number" required
영어:[   ] ==> 숫자입력/필수 입력 type="number" required
[등록]

@@@ 님의 국어점수:@@@ 영어 점수:@@


 -->








</body>
</html>