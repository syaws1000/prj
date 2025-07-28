'''
# 딕션너리(Dictionary) 
1. 데이터를 키(key)와 값(value)쌍으로 저장하는 자료형
2. 중괄호({}) 사용 ,  '키':값 형식
3. 특징
    1) 키는 중복 안됨. 값은 중복 가능
       기존에 없는 키를 넣어 데이터를 추가하면 추가 처리
       기존에 있는 키를 넣어 데이터를 추가하면 기본키에 대한 값을 변경
    2) 순서 있음
    3) 인덱싱은 키로 접근
    4) 변경 가능

'''
student = {'name':'홍길동', 'age':20, 'city':'서울'}
# 값읽기
print(f"이름:{student['name']}")
print(f"나이:{student['age']}")
print(f"사는곳:{student['city']}")
# 값추가하기
student['grade'] = 'A'
print(f'student:{student}')
# 값변경하기 : 기존 키에 값을 넣으면 해당 키의 값이 update(수정)된다. 즉, 키는 추가되든지, 수정되든지 처리
student['name'] = '마길동'
print(f'student:{student}')
# ex) product 정보를 위와 같이 name, price, cnt를 설정해서 해당 값을 출력하고,
#     discount로  속성을 추가하거나, price을 변경 처리해서 출력하세요
product = {'name':'사과', 'price':3000, 'cnt':2}
print(f'product:{product}')
product['discount'] = 0.2
print(f'product:{product}')
product['name'] = '바나나'
print(f'product:{product}')
# 속성 삭제 : del 변수명['속성']
# 1. 해당 속성이 삭제되면 값과 함께 사라진다.
del product['cnt']
print(f'product:{product}')
# ex) 위 예제 student 속성 age를 삭제 후, student 전체 데이터를 확인하세요..



