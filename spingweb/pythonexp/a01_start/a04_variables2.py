print("시작")
'''
# 파이썬의 증감 연산자
1. 파이썬에서는 단항으로 ++, -- 처리가 지원되지 않는다.
2. 증감/대입연산자를 처리하여야 한다..
'''
no = 1; print("번호:", no)
no += 1; print("번호:", no)
no += 2; print("번호:", no)
no += 3; print("번호:", no)
no += 4; print("번호:", no)
#  에러 발생 print("번호:", no+=1) 
# ex) 초기 김밥의 가격을 3500으로 설정하고, 개당 가격이  증가되는 것을 출력하세요..
#     1개    3500
#     2개    7000
#     3개   10500
no = 1; price = 3500;
print(f"{no}개\t{price}"); no+=1; price+=3500;
print(f"{no}개\t{price}"); no+=1; price+=3500;
print(f"{no}개\t{price}"); no+=1; price+=3500;

# 기본적인 데이터 데이터 처리 방식은 일반 프로그램과 동일
fruit1 = fruit2 = fruit3 = 1000;
print(f"가격 : {fruit1}")
print(f"가격 : {fruit2}")
print(f"가격 : {fruit3}")
# 파이썬은 tuple이라는 데이터 처리 유형이 있어 다음과 같은 데이터 할당이 가능하다.
food1, food2, food3 = 6000, 7000, 8000
print(f'음식1:{food1}')
print(f'음식2:{food2}')
print(f'음식3:{food3}')

# ex) 점수3개를 변수로 설정하여 위와 같은 tuple형태로 할당하여 출력하세요
pt1, pt2, pt3 = 70, 80, 90
print(f'점수1:{pt1}')
print(f'점수2:{pt2}')
print(f'점수3:{pt3}')
print(f'총점:{pt1+pt2+pt3}')
print(f'평균:{(pt1+pt2+pt3)/3}')


