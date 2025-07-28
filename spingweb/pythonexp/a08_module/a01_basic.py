'''
# 파이썬에서 외부 패키지 및 특정 파일, 클래스, 함수 사용하기..
1. 파이썬의 프로그래밍 프로젝트 단위 구조
    1) 최상위 프로젝트 폴드 : pythonexp 같이 여러 패키지(폴드)를 포함한 프로젝트 폴드 단위로 프로그래밍을 처리한다.
    2) 패키지 : 프로젝트 하위에 폴드형태로 패키지를 사용하여 처리한다.
      - 물리적 패키지 : 상위패키지/하위패키지 - 폴드 단위로 저장되어 있다.
      - 프로그래밍 호출시 사용하는 패키지 : 상위패키지.하위패키지 - 상/하위 구조를 .단위로 구분하여 호출하여 사용한다.
    3) 모듈(파일단위) : 패키지 하위에 코드되는 실제 저장 파일을 말한다.
      - 물리적 저장단위 : 파일명.py
      - 프로그래밍 호출시 : 모듈명 또는 파일명
                        상위패키지.하위패키지.파일명
      ex) from 패키지명 import 파일명
          from 패키지명 import 파일명 as 별칭
          외부에 있는 패키지에 파일단위 모듈을 사용하고자 할 때, 위 형식으로 선언하여 처리한다.
    4) 클래스/함수명/변수명  : 파일 안에 여러가지 클래스, 함수, 변수가 선언되어 있고, 클래스 안에 또한 필드 메서드가 정의되어 있다.
       프로그래밍 호출시 
          from 상위패키지.하위패키지 import 파일명
              변수사용시  파일명.변수명
              클래스사용시  파일명.클래스명
              함수사용시  파일명.함수명
              클래스안에 메서드사용시  파일명.클래스명.함수명
          from 상위패키지.하위패키지변수명 import 파일명 as 별칭
              변수사용시  별칭.변수명
              클래스사용시  별칭.클래스명
              함수사용시  별칭.함수명
              클래스안에 메서드사용시  별칭명.클래스명.함수명              
    5) 특정한 패키지하위에 있는 파일의 모든 구성요소 사용시
        from 상위패키지.하위패키지.파일명 import *

                               


'''
# 사용1) 패키지명.파일명 import 특정구성요소  
from a08_module.a01_pkg.a01_module import name
print(f"외부 패키지하위에 있는 모듈의 변수 호출:{name}")
from a08_module.a01_pkg.a01_module import name as nm  # 해당 대상 객체 변수를 별칭으로 설정.
print(f"외부 패키지하위에 있는 모듈의 변수 호출(별칭):{nm}")
# ex) a01_start 패키지 하위에 a07_obj.py를 넣고, 변수로 no1, no2 설정해 할당 후, 여기서 호출하여
#     출력하세요.
from a01_start.a07_obj import no1
from a01_start.a07_obj import no2 as n2
print(f"{no1} + {n2} = {no1+n2}")

from a08_module.a01_pkg.a01_module import call
re1 = call('사과',3000,2)
print(f"총계1:{re1}")
from a08_module.a01_pkg.a01_module import call as buy
re2 = buy('바나나',4000,3)
print(f"총계2:{re2}")

# ex) a01_start.a07_obj 안에 plus() multi() 함수를 통해서 두개의 매개변수로  덧셈과 곱셈을 선언하고,
#     현재 파일에서 호출하여 리턴값을 출력하세요..

from a01_start.a07_obj import plus
from a01_start.a07_obj import multi as mul
print(f'3 + 4 = {plus(3,4)}')
print(f'5 x 7 = {mul(5,7)}')


from a08_module.a01_pkg.a01_module import Person as Man
from a08_module.a01_pkg.a01_module import Person as Woman
m1 = Man("홍길동", 25, '서울')
w1 = Woman("홍마리", 27, '부산')
m1.show()
w1.show()
# ex) a01_start.a07_obj 모듈에 Product 클래스로 물건명 가격 갯수를 할당하는 클래스와 info()를 통해서
#     해당 물건의 정보를 출력하되, 현재 코드에서 Product ==> Fruit, Eletron 으로 설정하여 객체 생성과 메서드
#     호출하세요..
# Product
from a01_start.a07_obj import Product as Fruit
from a01_start.a07_obj import Product as Eletron
f1 = Fruit("사과",3000,3)
print(f"합산:{f1.info()}") 
e1 = Eletron("핸드폰",1500000,1)
print(f"합산:{e1.info()}") 

