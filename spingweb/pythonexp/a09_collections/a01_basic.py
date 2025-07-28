'''
# 구조체들(collections)
1. 컬렉션 객체는 파이썬에서 여러가지 데이터를 각각의 특정한 구조체로 담아서 사용할 때, 활용한다.
   각각의 기능적 특징과 메서드들을 확인하여 데이터를 효율적으로 저장해보자.
2. 구조체의 종류
    1) List(리스트) : 순서가 있는 가변형 데이터 저장을 위한 구조체, []를 사용하여 인덱싱 가능하면,
                     수정가능, 중복을 허용한다.
        ex) fruits = ['사과', '바나나']
    2) Tuple(튜플) : 순서가 있는 불편형 데이터 모음, ()를 사용하여 인덱싱 가능하고, 수정불허, 중복 허용
        ex) info = ('홍길동', 20)  또는 info2 = '홍길동',20
    3) Dictionary(딕셔너리) : 키-값 T쌍으로 구성된 자료 구조, {} 사용, 순서 있음, 키 중복 불가, 값은 수정가능
        ex) user = {"이름":"철수", "나이":20}
    4) Set(세트) : 중복을 허용하지 않는 비순서형 데이터 집합, {}, 또는 set() 사용, 중복제거, 순서 없음, 집합 연산 지원
        ex) colors = {"빨강", "파랑", "노랑"}
'''
# 리스트
nums = [1,2,3]
nums[0] = 100
print(f'리스트형 데이터:{nums}')
# ex) names로 회원의 이름을 리스트로 선언하고 할당하여, 각각의 데이터를 출력하세요..
names = ['홍길동', '김길동', '신길동']
print(f'회원리스트:{names}')
# list 데이터 조작 메서드
# 1. append(값) : 리스트 끝에 추가
fruits = ['사과', '바나나']
fruits.append('딸기')
fruits.append('바나나')
print(f'과일:{fruits}')
# ex) 학생들의 점수를 선언하고, 마지막에 2개 점수를 추가하여 출력하세요..
points = [70,80,90]
points.append(85)
points.append(95)
print(f'학생들 점수:{points}')
# 2. insert(특정한 index위치, 삽입할값) : 만들어진 list데이터에 특정 위치에 값을 삽입하는 내용
fruits.insert(1, '포도') # 2번째(인덱스1)에 '포도' 삽입처리
print(fruits)
# ex) 위 points에 첫번째 위치에 점수 83을 삽입 하여 출력 처리..
points.insert(0,83)
print(f'학생들 점수:{points}')
# 3. extend(리스트) : 여러개 요소를 한꺼번에 추가 하는 처리
fruits.extend(['오렌지','수박'])
print(f'한꺼번에 추가된 fruits:{fruits}')
# ex) points에 [80,90,100] 점수를 한번에 추가하여 출력하세요..
points.extend([80,90,100])
print(f'점수의 리스트:{points}')

# 리스트 삭제 처리 
# 1. pop() : 마지막 데이터를 리턴 및 삭제
guests = ['유진','지민','수아']
cancelled = guests.pop()
print(f'삭제된 데이터:{cancelled}')
print(f'최종 리스트:{guests}')
# ex) 카드 5장을 리스트 후, 마지막 카드를 보이게 하고, 삭제 한 후, 카드 리스트틑 출력하세요..
cards = ['◆5', '♠7','♣3', '♥5', '♠2']
last_card = cards.pop()
print(f'삭제된 카드:{last_card}')
print(f'전체 카드:{cards}')
# 2. remove(데이터) : 해당하는 특정 데이터 삭제 처리..
dogs = ['초코', '보리', '콩이', '보리']
dogs.remove('보리')  # 검색된 첫번째 데이터 삭제
print(f'삭제 후 데이터:{dogs}')
dogs.remove('보리')  # 검색된 첫번째 데이터 삭제  
print(f'삭제 후 데이터:{dogs}')
# ex) 위 cards 데이터 중에서 ♠7를 삭제 후, 출력하세요..
cards.remove('♠7')
print(f'삭제 후 데이터:{cards}')
# 3. 특정 index 위치의 메모리를 삭제 처리 del 배열명[특정한 위치]
routes = ['100번','200번','300번']
del routes[1]  # 200번 삭제
print(f"특정 데이터 위치 메모리 삭제 후 {routes}")
del routes  # 전체 메모리 삭제
# print(f"전체 메모리 삭제 후 {routes}") 에러발생.. 메모리 자체가 없어짐..
# ex) 카드의 3번째 위치 메모리 삭제 후, 출력. 전체 메모리 삭제 처리..
del cards[2]
print(f'카드의 3번째 위치 메모리 삭제 후:{cards}')
del cards # 전체 메모리 삭제


# 4. 메모리는 삭제 하지 않되, 전체 데이터를 비우는 처리 clear()메서드..
trash = ['휴지','종이컵', '플라스틱']
del trash[1]
print(f"두번재 데이터 삭제 후:{trash}")
trash.clear()
print(f'전체 데이터 삭제후:{trash}')
# ex) 물건을 장바구니에 담은 내용을 확인하고, 계산 후, 장바구니 내용을 확인(clear())하는 처리를 해보세요..
cart = ['사과','바나나', '딸기']
print(f'장바구니에 담기 물건:{cart}')
cart.clear()
print(f'계산 완료후, 장바구니에 담기 물건:{cart}')
# ex1) 반 친구들이 투표한 인기 급식 메뉴 리스트
vote_menu = ['김치볶음밥','스파게티','돈까스','김치볶음밥', '피자', '스파게티']
print(f'현재 급식 메뉴 리스트:{vote_menu}')
# ex2) 새로운 메뉴를 추가
vote_menu.append("짜장면")
print(f'현재 급식 메뉴 리스트:{vote_menu}')
# ex3) 3번째 위치에 급식 메뉴 추가.
vote_menu.insert(2, '우동')
print(f'현재 급식 메뉴 리스트:{vote_menu}')
# ex4) 특정한 메뉴 삭제
vote_menu.remove('김치볶음밥') # 특정 메뉴 삭제, 2개 이상 있으면 첫번째 내용 삭제
print(f'현재 급식 메뉴 리스트:{vote_menu}')
# ex5) 여러개 메뉴 한꺼번에 추가.
vote_menu.extend(['탕수육','라면'])
print(f'현재 급식 메뉴 리스트:{vote_menu}')
# ex6) 마지막 메뉴를 삭제
vote_menu.pop()
print(f'현재 급식 메뉴 리스트:{vote_menu}')
# ex7) 전체 메뉴 삭제
vote_menu.clear()
print(f'현재 급식 메뉴 리스트:{vote_menu}')








