package javaexp.a08_object.a04_relation;

public class A01_3_VO {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal a01 = new Animal("투명한 말",3);
		System.out.println(a01.getName());
		a01.setName("이상한 말");
		a01.setAge(5);
		System.out.println(a01.getAge());
		/*
		# 객체 생성 정리
		1. 클래스는 동물의 정보를 담는 상자
		2. 생성자는 동물을 만들 때, 이름과 나이를 주는 마법의 주문
		3. get/set메서드는 동물의 정보를 안전하게 바꾸거나 확인할 수 있는 열쇠..
		
		 * */
	}

}
/*
# 동물을  관리하는 마법사가 되고, 동물들을 더 잘 관리하기 위해 특별한 규칙을 만들어야 합니다.
동물마다 이름과 나이가 있고, 이 정보를 아무도 못 바꾸게 보호해야 합니다. 왜냐면, 동물들의 정보는
중요한 마법의 힘이기 때문입니다.
1. 클래스 : 동물의 비밀을 담고 있는 상자
	우리는 먼저 동물을 상자 안에 담는 것처럼 클래스라는 틀을 만들어요. 이 상자 안에는 동물의 이름과
	나이 같은 중요한 정보들이 들어 있습니다.
2. 생성자 : 동물에게 이름과 나이를 주는 마법의 주문
	우리가 동물을 만들 때, 이름과 나이를 정해줘야 해요. 그래서 동물을 만들 때마다 마법의 주문을 외워서
	이름과 나이를 설정할 수 있어요.
3. get/set메서드 : 동물의 비밀을 안전하게 꺼내거나 바꾸는 열쇠
	동물의 비밀은 밖에서 바로 바꿀 수 없어요. 그래서, 우리는 열쇠를 만들어 동물의 이름이나 나이를 바꿀
	수 있게 해요. 이 열쇠는 get과 set이라고 불러요..
*/
class Animal{
	// 동물의 비밀(이름, 나이)를 담을 상자(private로 보호)
	private String name;
	private int age;
	// 마법의 주문(동물을 만들 때 이름과 나이를 설정하는 생성자)
	public Animal(String name, int age) {
		this.name = name;
		this.age = age;
	}
	// get 이름 확인 열쇠 : 이름을 확인하는 방법
	public String getName() {
		return name;
	}
	// set 이름 바꾸는 열쇠 : 이름을 수정하는 방법 
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}