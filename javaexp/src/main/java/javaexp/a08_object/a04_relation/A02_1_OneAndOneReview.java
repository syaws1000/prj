package javaexp.a08_object.a04_relation;

public class A02_1_OneAndOneReview {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 친구 객체 만들기.
		Friend fi01 = new Friend("민수");


		// 집 객체 만들..
		FriendHouse fh01 = new FriendHouse("서울시 강남구",fi01 ); // 생성자를 통해서 초기화..
		
		fh01.introduceHouse();
		/*
		# 동작
		1. FriendHouse 클래스 : 친구의 집을 나타내는 클래스 이 집은 주소(address)와 집주인친구(myFriend)를 가진다.
		2. Friend 클래스 : 친구를 나타내는 클래스. 이 친구는 이름(name)을 가집니다.
		3. Main() 클래스 : 프로그램을 실행하는 부분으로, 친구와 친구의 집을 만들고 서로 연결합니다.
		# 과정
		1. 친구를 만들다 : Friend fi01 = new Friend("민수");
		2. 친구의집을 만들다 : FriendHouse fh01 = new FriendHouse("서울시 강남구",fi01 ); 
		3. 친구와 집을 소개 하다. : fh01.introduceHouse();
		 * */
		King k01 = new King();
		Kingdom kd01 = new Kingdom();
		//kd01.name = "조선";
		//kd01.king.name = "숙종(왕)";
		// 생성자 형태로 객체 생성과 메서드 호출..
		King k02 = new King("광개토대왕");
		Kingdom kd02 = new Kingdom("고구려",k02);
		//System.out.println("왕국의 이름은:"+kd02.getName());
		//System.out.println("왕국의 왕은:"+kd02.getKing().getName());
		kd02.showKindomInfo();
		// 왕국에 있는 King객체를 호출하고, 그 안에있는 이름 호출.. 
		Director d01 = new Director();
		d01.name = "봉준호";
		Movie m01 = new Movie();
		m01.director = d01;
		m01.title = "기생충";
		System.out.println(m01.director.name);// 포함한객체.포함된객체.필드
		
	}

}
// 영화와 감독..
// Movie(title, director), Director(name)
// 1. 클래스 선언
class Director{
	String name;
}
class Movie{
	String title;
	Director director;
}

// --------------------------------
// 2. private 없이 1:1 관계 main()에서 설정 확인 후,
// 3. private 값 선언 후, 처리 출력까지.. 



// 왕 클래스
class King{  // private 설정,  생성자, get/set 메서드 호출
	private String name;

	public King() {
		// TODO Auto-generated constructor stub
	}

	public King(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
// 왕을 포함한 클래스
class Kingdom{
	String name; //private 설정,  생성자, get/set 메서드 호출
	King king;
	public Kingdom() {
		// TODO Auto-generated constructor stub
	}
	public Kingdom(String name, King king) {
		this.name = name;
		this.king = king;
	}
	public void showKindomInfo() {
		System.out.println("왕국의 이름:"+name);
		System.out.println("왕국의 왕:"+king.getName());
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public King getKing() {
		return king;
	}
	public void setKing(King king) {
		this.king = king;
	}
	
}


/*
# 1:1 객체 관계로 친구와 집을 연결하는 이야기
1. 관계란 ?
	한 친구는 하나의 집을 가지고, 하나의 집은 한 친구만을 가진다는 개념입니다.
	1) 한 친구는 하나의 집만 가지고 있습니다.
	2) 한 집에는 한 친구만 살고 있습니다.
2. 친구와 집을 연결하는 class 
	1) Friend 친구 클래스(필드 name)
	2) House 집 클래스(필드 address, Friend 객체)

 */
class Friend{ // 친구의 정보를 관리하는 상자
	private String name;// 친구의 이름 - 아무나 확인할 수 없음..
	public Friend() {
	}
	public Friend(String name) { // 친구의 이름을 초기에 설정하는 마법 주문..
		this.name = name;
	}
	public String getName() { // 친구의 이름을 가져오는 열쇠
		return name;
	}
	public void setName(String name) { // 친구의 이름을 저장하는 열쇠
		this.name = name;
	}
}
class FriendHouse{  // 친구의 집 정보를 관리하는 상자
	private String address; // 집의 주소를 아무나 접근 못하게 처리
	private Friend myFriend; // 친구도 아무나 접근 못하게 처리..
	public FriendHouse() {
	}
	public FriendHouse(String address, Friend myFriend) { // 친구의 집을 만들 때, 주소와 친구객체를 설정 
		this.address = address;
		this.myFriend = myFriend;
	}
	// 친구의 정보와 집의 정보를 확인하는 메서드.
	public void introduceHouse() {
		System.out.println("이 집의 주소는 "+address+"입니다. 집 주인의 이름은 "+myFriend.getName()+"입니다");
		// +myFriend.getName()  myFriend라는 Friend객체가 가지고 있는 name은 함부로 접근이 불가능하지만.
		// getName()이라는 열쇠를 통해서는 가능하다.
	
	}
	public String getAddress() { //주소정보를 가져오는 열쇠
		return address;
	}
	public void setAddress(String address) {// 주소 정보를 변경하는 열쇠
		this.address = address;
	}
	public Friend getMyFriend() {
		return myFriend;
	}
	public void setMyFriend(Friend myFriend) {
		this.myFriend = myFriend;
	}
	
}