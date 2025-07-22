'''
# elif문
1. if문에서 다양한 분기 조건을 활용해서 처리할 때, 사용하는 구문이다.
2. 기본 형식
    if 조건1:
        조건1일 때, 처리할 구문
    elif 조건2:
        조건1이 아니고, 조건2일 때, 처리할 구문..
    else :
        조건1, 조건2도 아닐 때, 처리할 구문
'''
# 임의의 점수에 따른 학점 처리
import random as r
score = r.randrange(101) # 1~100 임의의 수
print(f'점수 : {score}')
if score>=90:
    print('A학점')
elif score>=80:
    print('B학점')
elif score>=70:
    print('C학점')    
elif score>=60:
    print('D학점')
else :
    print('F학점')        
'''
# ex) 구매가격에 따른 고객 등급 처리
    1000000 이상은 VIP, 500000이상은 MVP, 100000이상은 우수고객 그외는 일반고객
'''    
buyPrice = r.randrange(10000, 1500001, 10000) # 10000~150000까지 증감 단위로 10000처리하게 
print(f'임의의 구매가격(10000~1500000):{buyPrice}')
if buyPrice>=100000:
    print('VIP')
elif buyPrice>=500000:
    print("MVP")
elif buyPrice>=100000:
    print("우수고객")
else :
    print("일반고객")            