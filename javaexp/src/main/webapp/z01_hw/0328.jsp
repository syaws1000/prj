<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 1. 일일 다이어리 -->
<section>
  <h2>📅 나의 일일 다이어리</h2>
  <form>
    <fieldset>
      <legend>오늘의 기록</legend>
      <label>날짜: <input type="date" name="diaryDate" required></label><br>
      <label for="ckColor">기분 색상: </label><input id="ckColor" type="color" name="feelingColor"><br>
      <!-- label과 요소객체를 레이블을 클릭시, 커서를 위치하게 한다. -->
      <label>기분 요약: <input type="text" name="summary" placeholder="한 줄로 요약"></label><br>
      <label>하루의 기록:<br><textarea name="content" rows="5" cols="50"></textarea></label><br>
      <input type="submit" value="기록 저장">
    </fieldset>
  </form>
  <h2>전송된 데이터(저장)</h2>
  <p style="background-color:${param.feelingColor}">
  	날짜:${param.diaryDate}<br>
  	기분 색상:${param.feelingColor}<br>
  	기분 요약:${param.summary}<br>
  	하루기록:${param.content}<br>
  </p>
</section>

<!-- 2. 쇼핑몰 주문 -->
<section>
  <h2>🛍️ 온라인 쇼핑몰 주문서</h2>
  <form action="#">
    <fieldset>
      <legend>상품 정보</legend> 
      <label>상품명: <input type="text" name="product"></label><br>
      <label>수량: <input type="number" name="qty" min="1" value="1"></label><br>
      <label>색상 선택:
        <select name="color">
          <option value="red">빨강</option>
          <option value="blue">파랑</option>
          <option value="black">검정</option>
        </select><br>
      </label>
    </fieldset>
    <fieldset>
      <legend>고객 정보</legend>
      <label>이름: <input type="text" name="name"></label><br>
      <label>이메일: <input type="email" name="email"></label><br>
      <label>배송지: <input type="text" name="address"></label><br>
    </fieldset>

    <fieldset>
      <legend>결제 및 약관</legend>
      <label><input type="radio" name="payment" value="card"> 카드 결제</label><br>
      <label><input type="radio" name="payment" value="bank"> 무통장입금</label><br>
      <label><input type="checkbox" name="agree" value="동일함"> 이용약관에 동의합니다.</label><br>
      <input type="submit" value="주문하기">
    </fieldset>
  </form>
</section>
	<p>
	<h2>결재 내용</h2>
    ${param.product}<br>${param.qty}<br>${param.color}<br>
    ${param.name}<br>${param.email}<br>${param.address}<br>
    ${param.payment}<br>${param.agree}
    </p>
<!-- 3. 이벤트 신청 -->
<section>
  <h2>🎤 이벤트 참가 신청</h2>
  <form action="#">
    <fieldset>
      <legend>신청자 정보</legend>
      <label>이름: <input type="text" name="user"></label><br>
      <label>나이: <input type="number" name="age"></label><br>
      <label>전화번호: <input type="tel" name="phone"></label><br>
    </fieldset>
    <fieldset>
      <legend>참가 정보</legend>
      <label><input type="radio" name="category" value="노래"> 노래</label><br>
      <label><input type="radio" name="category" value="댄스"> 댄스</label><br>
      <label><input type="radio" name="category" value="연기"> 연기</label><br>
      <label>희망 날짜: <input type="date" name="date"></label><br>
      <label>희망 시간: <input type="time" name="time"></label><br>
      <label>자기 소개:<br><textarea name="intro" rows="4" cols="40"></textarea></label><br>
      <input type="submit" value="참가 신청">
    </fieldset>
  </form>
</section>

<!-- 4. 포트폴리오 페이지 -->
<section>
  <h2>🧭 포트폴리오 소개</h2>
  <nav>
    <ul>
      <li><a href="#about">내 소개</a></li>
      <li><a href="#projects">프로젝트</a></li>
      <li><a href="#contact">연락처</a></li>
    </ul>
  </nav>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <%--
  <a href="이동할페이지">타이틀 내용</a>
  <a href="#현재페이지내에 id명">타이틀 내용</a>
   --%>
  <br>
  <h3 id="about">내 소개</h3>
  <p>저는 웹 개발자를 꿈꾸는 OOO입니다.</p>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  
  <h3 id="projects">프로젝트</h3>
  <iframe width="400" height="250" src="https://www.youtube.com/embed/tgbNymZ7vqY"></iframe>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  
  <h3 id="contact">연락처</h3>
  <p>이메일: example@email.com</p>
</section>

<!-- 5. 주간 식단표 -->
<section>
  <h2>📋 나의 주간 식단표</h2>
  <form>
    <fieldset>
      <legend>좋아하는 음식</legend>
      <label><input type="checkbox" name="fav" value="김치찌개"> 김치찌개</label>
      <label><input type="checkbox" name="fav" value="불고기"> 불고기</label>
      <label><input type="checkbox" name="fav" value="비빔밥"> 비빔밥</label>
    </fieldset>
    <table>
      <thead>
        <tr><th>요일</th><th>아침</th><th>점심</th><th>저녁</th></tr>
      </thead>
      <tbody>
        <tr><td>월요일</td><td><input type="text" name="mon_b"></td><td><input type="text" name="mon_l"></td><td><input type="text" name="mon_d"></td></tr>
        <tr><td>화요일</td><td><input type="text" name="tue_b"></td><td><input type="text" name="tue_l"></td><td><input type="text" name="tue_d"></td></tr>
        <!-- 필요 시 다른 요일 추가 -->
      </tbody>
    </table>
    <fieldset>
      <legend>이번 주 식단 만족도</legend>
      <label><input type="radio" name="satis" value="high"> 매우 만족</label>
      <label><input type="radio" name="satis" value="mid"> 보통</label>
      <label><input type="radio" name="satis" value="low"> 불만족</label><br>
      <input type="submit" value="식단 저장">
    </fieldset>
  </form>
</section>
</body>
</html>