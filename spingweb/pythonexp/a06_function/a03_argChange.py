'''
# 가변형 매개변수 처리..(함수, 생성자, 객체안에 메서드)
1. 파이썬에서 매개변수를 가변형으로 처리가 가능하여, 자바프로그램에서 사용되는 overloading 개념이 필요하지 않는다.
   - 이 내용을 파일썬에서 매개변수로 사용하는 함수, 생성자, 메서드에 모두 다 적용된다.
2. 가변형 매개변수 유형
   1) 데이터 값이 없을 때와 필수적인 때를 구분하여 처리
      def call(no, name='익명', loc='미설정지역'):
      위 경우, no는 반드시 입력되어야 되는 매개변수, name, loc는 가변적으로 입력되지 않으면 default값을
      설정하여 처리해준다.
      이렇게 선언된 경우.
      call() : 필수매개변수 no를 전달하지 않기에 에러발생..
      call(25)    
      call(25,'홍길동')    
      call(25,'마길동','성남')
      등의 경우가 처리가 된다.    
'''
def call(no, name='익명', loc='미설정지역'):
    print("# 입력 데이터 처리 #")
    print(f'번호:{no}')
    print(f'이름:{name}')
    print(f'지역:{loc}')

# call()  에러 발생 no는  반드시 설정해주서야 한다.
call(25)
call(26,'홍길동')
call(27,'마길동','성남')
# ex) coffeeOrder 함수를 통해 필수 - 주문자명 , 옵션(default값) - 커피종류(아메리카노), 사이즈(중간)
def coffeeOrder(name, kind='아메리카노', size='중간'):
    print("# 주문 내역 #")
    print(f"주문자:{name}")
    print(f"주문내역:{kind}")
    print(f"크기:{size}")

coffeeOrder('마길동')
coffeeOrder('오길동','카페라떼')
coffeeOrder('하길동','키위주스','라지')
'''
# *args 활용
1. 가변적으로 해당 변수로 앞에 *를 설정하면 가변적으로 매개변수를 튜플형태(읽기 전용-크기변경되지 않음. 배열 데이터)로 데이터를 받는다
2. 기본 형식
   def  함수명(*매개변수명):
       매개변수명[0]매개변수명[1]매개변수명[2]
       for 단위변수 in 매개변수명:
           단위변수 처리..
'''
def travelPackingList(*items):
    print("#여행 패키지 리스트#")    
    for item in items:
        print(f'- {item}')
    print("################")

travelPackingList()  # items = ()
travelPackingList("여권")   # items = ("여권")  튜플데이터 형식(배열-읽기)
travelPackingList("여권","전화기",) # items = ("여권","전화기")  튜플데이터 형식(배열-읽기)  items[0]  items[1]  
travelPackingList("여권","전화기","카메라")
travelPackingList("여권","전화기","카메라",3000,4000)

# buyPrice() 함수를 통해서, 마트에서 구매한 물건의 가격을 방문시마다 출력하게 하세요
#            마트명, 물건1가격, 물건2가격......  ==> 총합산도 처리해서 출력..
def buyPrice(mname, *prices):  # 필수매개변수 1개 + 가변형 매개변수 선언..
    print(f"# {mname}에서 물품 구매 #")
    cnt = 1
    tot = 0
    for price in prices:
        print(f'{cnt}번째 물건 {price}원')
        cnt+=1
        tot+=price
    print(f"총 구매 금액:{tot}원")    

#buyPrice()  # 에러발생
buyPrice('행복마트')
buyPrice('즐거운마트',3000,4000,5000)
buyPrice('재미있는마트',4000,5000,6000,7000)