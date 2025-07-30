'''
# 파이썬의 set 컬렉션
1. 파이썬 set 컬렉션은 중복을 허용하지 않고, 순서가 없는 자료형으로, 집합 연산(합집합, 교집합 등)에 매우 유용합니다.
2. set이란?
   1) 중복을 제거하고 순서를 고려하지 않는 자료형
   2) 중괄호 {} 또는 set() 함수 사용하여 표현
   3) 중복 X, 순서 X, 인덱싱 X, 변경 가능(가변형)
   4) 중복제거, 집합 연산(합집합, 교집합 등)
3. 기본 형식
   1) 생성 
      변수명 = {데이터1, 데이터2, 데이터3}
      변수명 = set([데이터1, 데이터2, 데이터3])   
   2) 추가
      변수명.add(추가데이터)
   3) 요소 제거
      변수명.remove(삭제데이터)
   4) 집합 연산
      union = 변수1 | 변수2      합집합 처리
      intersection = 변수1 & 변수2   교집합 처리
      defference = 변수1 - 변수2  차집합 처리   
'''
# 기본 선언(중복 제거)
nums1 = {1,2,3,1,2,4,4,5}
print(f'중복이 제거된 set컬렉션1:{nums1}')
names2 = set(['홍길동','김길동','홍길동','마길동','김길동'])  # list형집합을 set()에 의해서 형변환되어 처리 결과
print(f'중복이 제거된 set컬렉션2:{names2}') # 순서가 확보가 되지 않는다..(주의)
# ex1) 중복없는 출석부 만들기, 학생이름을 set컬렉션으로 선언하고, 중복된 내용을 입력해서 데이터가 저장된 내용을 출력
attendance = {'지민','영희','지민','철수','영희','수지'}
print(f'이름 중복 제거된 출석부:{attendance}')
# ex2) 리스트로 된 당첨 번호(중복된 번호  추가)를 set()으로 형변환 하여, 최종 당첨 번호를 출력 하세요..
lotto = [7, 5, 6, 4, 3, 7, 6, 5]
print(f'중복이 제거된 최종 당첨번호:{set(lotto)}')

# 교집합과 합집합 처리..
friends_A = {'영희', '철수', '민수', '수지'}
friends_B = {'수지', '민수', '지민', '나영'}
# 공통 친구(교집합)
common_friends = friends_A & friends_B
print(f'공통 친구:{common_friends}')
# 전체 친구(합집합)
all_friends = friends_A | friends_B
print(f'전체 친구:{all_friends}')
# 차집합
# 친구A 그룹에서 친구B 그룹의 공통 친구만 뺀 친구들
diff_friends = friends_A - friends_B
print(f'친구A 그룹에서 친구B 그룹의 공통 친구만 뺀 친구들:{diff_friends}')

# ex) 내가본 영화 vs 친구가 본 영화
my_movie = {"인셉션","기생충","어벤저스","엘리멘탈"}
friend_movie = {"엘리멘탈","어벤저스","이터널스","토이스토리"}
#  1. 둘 다 본 영화 
both_seen = my_movie & friend_movie
print(f'둘 다 본 영화:{both_seen}')
#  2. 나만 본 영화 | 친구만 본 영화
only_me = my_movie - friend_movie
only_friend = friend_movie - my_movie
print(f'나만 본 영화:{only_me}')
print(f'친구만 본 영화:{only_friend}')
#  3. 전체 영화
all_seen = my_movie | friend_movie
print(f'나와 친구가 각자가 본 전체 영화:{all_seen}')

