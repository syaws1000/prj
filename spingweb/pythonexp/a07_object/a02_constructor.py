'''
# 생성자
1. 개념
    1) 객체를 생성하면 무조건 호출되는 함수를 의미한다.
       선언하지 않으면 default 생성자로 매개변수가 없는 생성자를 내부적으로 지원한다.
    2) 기본 형식 :
       - default  : 선언하지 않을 때,   객체 생성 시 ob = 클래스명()
       - def __init__(self) : 매개변수가 없는 생성자
       - def __init__(self, name, age, loc) : 매개변수가 있는 생성자  ob2 = 클래스명('홍길동',25,'서울')
            self.name = name
            self.age = age
            self.loc = loc
    3) 생성자의 주요 역할은 필드(속성)을 초기화하는 역할을 한다. 파이썬에서는 class 명 밑에 속성을 선언하지 않더라도
        self.속성을 선언 바로 속성이 선언되어 처리된다.     
'''
class Fruit:
    # 보이지 않지만 선언하지 않으면 default 생성자가 호출된다.
    '''
    def __init__(self):
    '''
f01 = Fruit()
print("Fruit객체 생성", f01)    
# ex) Car 클래스 선언하고, c01, c02 주소값을 출력하세요..
class Car:
    pass     # 함수나 객체에서 선언된 내용이 없이 처리할 때, 키워드를 사용
c01 = Car()
c02 = Car()
print("Car객체의 c01참조:", c01)
print("Car객체의 c02참조:", c02)

class Apple:
    def __init__(self):
        print('사과객체 생성', self)

a01 = Apple()
a02 = Apple()
a03 = Apple()

class Orange:
    def __init__(self):
        self.kind = "맛난 오렌지"  # self.필드 = 필드값을  선언하면 바로 속성으로 객체 생성시 사용가능하다..
        self.price = 3000
or1 = Orange()
print(or1.kind)
print(or1.price)
# ex) WaterMellon 클래스를 선언하고, self. 접두어로 속성 size, taste를 설정하여 객체 생성시 호출하세요..
class WaterMellon:
    def __init__(self):
        self.size="10kg"
        self.taste='시원하고 단맛'
w1 =  WaterMellon()
print(w1.size)       
print(w1.taste)
w2 =  WaterMellon()
w2.size="12kg"
w2.taste="최고의 브릭스"
print(w2.size)       
print(w2.taste)

class Person:
    def __init__(self, name, age, loc):
        self.name = name
        self.age = age
        self.loc = loc
        print("Person 객체의 초기값 설정")

p01 = Person("홍길동", 25, '성남')        
p02 = Person("김길동", 27, '부산')        
print(p01.name, p01.age, p01.loc)
print(p02.name, p02.age, p02.loc)
# ex) Product 클래스 선언 name, price, cnt 필드값 선언하고, 생성자를 통해 초기화하여 필드를 출력하세요..

'''
# 파이썬에서는 여러 생성자를 선언하지 못합니다.
==> why? 가변형 매개변수 함수가 지원되기 때문...
# 가변형 매개변수
1. 매개변수를 선언하되, 해당 매개변수가 없을 때, 처리하는 default 설정값을 매개변수에 선언하기 때문에
   여러가지 가변적인 매개변수 선언이 가능..

'''

class Product:
    def __init__(self, name='미할당', price=0, cnt=1):  
        # 각각의 매개변수 초기값을 설정하면 해당 값이 전달되지 않더라도 초기값으로 설정
        self.name = name
        self.price = price
        self.cnt = cnt
p01 = Product()
print(p01.name, p01.price, p01.cnt)
p02 = Product("사과")
print(p02.name, p02.price, p02.cnt)
p03 = Product("바나나",3000)
print(p03.name, p03.price, p03.cnt)
# ex) TravelAgency로 기본여행 정보로(출발지-departure, 도착지-destination, 여행일-days)로 선언하고,
#     default 생성자 값을 설정하여, 가변적으로 매개변수가 처리되게 하세요..
class TravelAgency:
    def __init__(self, departure='서울', destination='파리', days=9):
        self.departure = departure
        self.destination = destination
        self.days = days

ta1 = TravelAgency()
print(ta1.departure, ta1.destination, ta1.days)
ta2 = TravelAgency('부산')
print(ta2.departure, ta2.destination, ta2.days)
ta3 = TravelAgency('인천', '도쿄')
print(ta3.departure, ta3.destination, ta3.days)

# 생성자를 통한 가변형 데이터 처리
class Box:
    def __init__(self, *prods):
        self.products = prods   # prods : 배열(변경하지않는-튜플)  ("사과","바나나")
                                #  self.products 객체의 전역변수 = 필드 
    def showProd(self):
        print("#박스에 담긴 물건#")    
        for prod in self.products:  # 위 생성자를 통해서 담겨진 필드 즉 self.products는 반복문을 통해서 단위 데이터를 가져옮
            print(f'{prod}', end=", ")
        print()
b1 = Box('사과','바나나')  
print(b1.products[0], b1.products[1])




b2 = Box('컴퓨터','핸드폰','TV')

b1.showProd()

b2.showProd()


# 클래스를  Students로 선언하고 생성자에 *names라고  가변형 매개변수를 설정하여,
#          학생들의 이름을 가변적으로 할당하고, self.names에 할당한 후, index번호에 의해 접근해서 출력해보세요..
class Students:
    def __init__(self, *names):
        self.names = names

    def showStudents(self, grpName):
        print(f"# {grpName}그룹 에 있는 학생들 #")
        for name in self.names:
            print(f'{name}', end=", ")
        print()         
stGrp1 = Students('홍길동','김길동','신길동')
print("# 그룹1에 있는 학생들 #")
for name in stGrp1.names:
    print(f'{name}', end=", ")
print()
stGrp2 = Students('오길동','마길동','하길동','구길동')
print("# 그룹2에 있는 학생들 #")
for name in stGrp2.names:
    print(f'{name}', end=", ")
print()

stGrp1.showStudents("재미있는 친구들")
stGrp2.showStudents("행복한 친구들")

