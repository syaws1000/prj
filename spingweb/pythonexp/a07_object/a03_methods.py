'''
# 메서드
1. 클래스 안에서 기능을 처리하기 위하여 선언된 함수를 메서드라고 한다.
2. 생성자는 변수를 한번에 초기화한다면 기능 메서드는 이 변수를 여러 번 호출하여
   각각의 변수를 매개변수에 의해서 저장, 출력, 리턴등 여러가지 기능을 처리 할 수 있다.
3. 메서드는 함수와 동일하게 매개변수, 프로세스처리, 리턴값 처리를 할 수 있다.
4. 메서드는 클래스 안에서 선언되어 있기에 객체 종속적 기능을 하면 다른 구성요소(필드, 메서드)와
   유기적으로 처리가 가능하다.
5. 기본 형식과 구성요소
    1) 기본 형식
       class 클래스명:
           def 메서드명(self, 매개변수):
               출력 처리
               self.필드 = 매개변수 : 매개변수를 통해 필드값 할당.
               조건 반복문
               return 리턴할데이터;
    2) 메서드의 구성요소
        - 매개변수로 self : self는 필드값을 선언하거나 할당 할 때, 주로 접두어로 사용된다.
           파이썬에서 메서드안에서 바로 필드값을 선언도 가능하다.
           self는 선언된 필드값에 데이터를 할당하거나 변경을 처리할 수 있다.
        - 매개변수 : 메서드명 옆에 () 블럭으로 self 이외에 여러가지 외부에는 넘겨오는 데이터를
           지역변수로 설정하여 사용할 수 있다..
        - 프로세스 처리 : 메서드 내부에서 특정한 알고리즘(조건/반복 등) 수행을 하고 해당 내용을
           전역변수에 대입하거나 다른 메서드에 영향을 미치는 등의 처리를 할 수 있다.
        - 출력 처리 : 메서드 내부에서 특정 변수나 필드값 등을 print()형식에 의해 출력할 수 있다.
        - 리턴값 처리 : 메서드는 호출하는 곳으로 return 리턴할데이터; 형식으로 데이터를 전달할 
           수 있다.
# 객체의 메서드 활용 단계별 연습
1. 생성자를 통한 초기 필드값 활용(출력 처리)
2. 매개변수 데이터의 활용(연산, 출력)
3. 매개변수를 필드값에 할당처리(할당 및 누적 처리)
4. 매개변수를 이용하여 조건/반복문 처리(여러가지 기능적인 알고리즘을 처리)
5. 리턴값을 처리(기본적인 리턴값 개념 처리 및 매개변수를 통한 리턴값 설정 및 처리, 필드값 매개변수 리턴값을 통한 처리)

'''
# 생성자를 통한 초기 필드값 활용(출력 처리)
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
    
    def display(self):
        print(f'# 자동차의 정보#')
        print(f'제조사:{self.make}')
        print(f'모델명:{self.model}')
        print(f'출시연도:{self.year}')

c1 = Car('현재','뉴그랜저',2023)
c1.display()
c2 = Car('삼성','SM5',2020)
c2.display()

# ex) class Movie를 설정하여 영화제목, 감독, 제작연도, 장르를 생성자를 통해서 초기화시키고, show() 기능 메서드에 의해 출력 처리하세요.
#     객체 2개 생성 및 메서드 호출..
class Movie:
    def __init__(self, title, director, year, genre):
        self.title = title
        self.director = director
        self.year = year
        self.genre = genre
    
    def show(self):
        print("# 영화 정보 #")
        print(f"1. 제목:{self.title}")
        print(f"2. 감독:{self.director}")
        print(f"3. 제작연도:{self.year}")
        print(f"4. 장르:{self.genre}")

m1 = Movie("인셉션","크리스토퍼놀란", 2010,"Sci-fi")
m2 = Movie("다크나이트","크리스토퍼놀란",2000,"액션")
m1.show()
m2.show()

# 2. 메서드 매개변수 데이터의 활용(연산, 출력)
class Calculator:
    def add(self, num1, num2):
        print("# 전달된 값 #")
        print(f"num1:{num1}")
        print(f"num2:{num2}")
        print(f"합산된값:{num1+num2}")

c1 = Calculator()
c1.add(50,20)        
c2 = Calculator()
c2.add(50,20)        
c2.add(30,10)    
# ex) Product 클래스 선언해서 buy()메서드로 매개변수로 가격과 갯수를 입력받아 출력하고, 총계를 출력하세요.

class Product:
    def buy(self, price, cnt):
        print("# 구매 정보 #")
        print(f"물건가격:{price}")
        print(f"물건갯수:{cnt}")

p1 = Product()
p1.buy(3000,2)
p1.buy(4000,5)
p2 = Product()
p2.buy(3000,3)
p2.buy(2000,2)

# 3. 매개변수를 필드값에 할당처리(할당 및 누적 처리)
#    파이썬의 메서드의 매개변수를 통해서 데이터를 전달하여, 필드값의 초기값을 할당 또는 변경할 수 있거나, 누적해서
#   처리 할 수 있다.
class Student:
    def setKor(self, point):
        self.kor = point  # self. 필드로 선언..
        print("국어 점수 필드값으로 할당:", self.kor)
    def setEng(self, point) :
        self.eng = point
        print("영어 점수 필드값으로 할당:", self.eng)
    def tot(self):
        print(f"국어 점수({self.kor})와 영어 점수({self.eng})의 합산:{self.kor+self.eng}")
st1 = Student()
st1.setKor(80)               
st1.setEng(90)         
st1.tot()
# ex) Account 라는 은행계좌를 만들어 save() 메서드를 통해서 입금액 처리, withdraw()메서드를 통해서 출금액 처리
#     curMoney()를 통해서 현재 금액을 출력하세요 
class Account:
    income = 0
    outcome = 0
    def save(self, money):
        self.income += money
        print(f'입금액{money}')
    def withdraw(self, money):
        self.outcome += money
        print(f'출금액{money}')
    def curMoney(self):
        self.tot = self.income - self.outcome
        print(f'현재 잔액:{self.tot}')        
acc1 = Account()
acc1.save(1000)
acc1.withdraw(500)
acc1.curMoney()

# 4. 매개변수를 이용하여 조건/반복문 처리(여러가지 기능적인 알고리즘을 처리)

class Calculator:
    def showGrade(self, point):
        print(f'입력한 점수:{point}')
        if point>=70:
            print("합격!")
        else :
            print("불합격!")    

c1 = Calculator()
c1.showGrade(75)
# class Shopping에서  buy() 함수에 매개변수로 구매한 금액을 전달하여, 100000이상이면 할인 10%, 그외는 할인 5%로 출력하세요..
class Shopping:
    def buy(self, money):
        print(f'입금한 금액:{money}')
        if money>=100000:
            print("할인 10%")
            print(f"최종 금액: {int( money-(money*0.1))}")
        else :
            print("할인 5%")    
            print(f"최종 금액: {int( money-(money*0.05))}")

s1 = Shopping()
s1.buy(5000)
s1.buy(1005000)

class Gugu:
    def count(self, start, end):
        print(f'# 시작:{start}, 마지막:{end} #')
        for cnt in range(start, end+1):
            print(f'카운트:{cnt}')

g1 = Gugu()
g1.count(1, 15)
g1.count(2, 20)
