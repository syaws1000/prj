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
del student['age']
print(f'student:{student}')

'''
# 딕션너리 함수활용(keys(), values(), items())
1. keys() : 해당 딕션너리 데이터의 모든 키값을 가져다 준다.
   위 product 기준으로 name, price, cnt 키값만 가져오게 처리..
2. values() : 해당 딕션너리 데이터의 모든 값만 가져다 준다.
   위 product 기준으로 사과, 3000, 2
3. items() : 딕션너리 데이터의 key/value값을 가져다 준다.(반복문에서 효율적으로 활용할 수 있다.)

'''
person = {'name':'김철수','age':26,'email':'chulsu@gmail.com'}
# 모든 키 출력
print(f'person의 모든 키:{person.keys()}')
for key in person.keys():
    print(key)
# 모든 값을 출력
print(f'person의 모든 값:{person.values()}')
for val in person.values():
    print(val)
# 모든 키/값을 출력
print(f'person의 모든 키/값:{person.items()}')
for key, val in person.items():
    print(f'{key} - {val}')
'''
ex) movie로 영화제목, 감독, 출시연도를 딕션너리로 선언할당 한 후, 위 기능 메서드와 for으로 출력해보세요..
    1) 속성들만 2) 값들만  3) 속성과 값
'''
movie = {'제목':'인셉션','감독':'크리스토퍼 놀란','개봉연도':2010}
print("# 속성만 출력 #")
for key in movie.keys():
    print(key)
print("# 값만 출력 #")
for val in movie.values():
    print(val)
print("# 키와 값 출력 #")
for key, val in movie.items():   # for key, val in 키/값이 있는 객체..
    print(key, ':',val)

# 키에 있는 값을 가져오는 방식
# 1. 객체['키']    
# 2. 객체.get('키')
print(f" movie객체의 제목키에 있는 값:{movie['제목']}")
#print(f" movie객체의 없는키에 있는 값:{movie['관객수']}") : 에러 발생 : 없는키에 대하여 바로 호출시
print(f" movie객체의 감독키에 있는 값:{movie.get('감독')}")
print(f" movie객체의 없는키에 있는 값:{movie.get('관객수')}") # 없는 키이지만 에러는 발생하지 않고 None로 처리 안정적..~~
# ex) person에 있는 키가 있는 값을 두가지 형식으로 호출하여 출력하고, 없는 키도 두가지 형식으로 호출하여 출력하세요..
print(f"person의 name:{person['name']}, age:{person.get('age')}")
print(f"person의 gender:{person.get('gender')}")
# print(f"person의 gender:{person['gender']}") 에러발생
