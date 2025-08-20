'''
# 배열의 법칙 - 하나의 보관함엔 하나의 종류만
1. Numpy 배열은 마치 게임 속 특화된 보관함과 같습니다. 하나의 배열(보관함)에는 오직 한 가지 종류의 아이템만
    담을 수 있다는 중요한 법칙이 있죠.
2. 만약 숫자와 문자를 한 보관함에 넣으려고 하면 어떻게 될까요? NumPy는 모든 아이템을 담을 수 있는ㄴ 가장 포괄적인
    형태, 즉 문자열로 전부 바꿔버립니다. 이것을 업케스링(upcasting)이라고 합니다.
'''
import numpy as np
# 숫자(레벨), 소수(경험치), 문자(등급)을 같이 넣으려고 시도
inventory = np.array([10,99,'5'])
# 보관함의 종류(dtype)을 확인해 보자.
print(f'혼합 아이템 보관함의 종류:{inventory.dtype}')
# <U32 : 32글자까지 담을 수 있는 유니코드 문자열로 출력.. ==> 10과 99.5가 글자로 취급되는 '19','99.5'로 처리
print(f'보관함의 내용물:{inventory}')
# 위 글자형으로 변환된 내용을 astype(np.int32)로 정수로 변경할 수 있느냐? 처리
int_inventory =  inventory.astype(np.int32)
print("변경 후, 데이터 확인:", int_inventory)
# ex) 쿼스트 두루마리에 적힌 보상금 '1000', '500'을 단순한 글자로 계산 하기 힘들어, 형반환하여 쳐리
rewards = np.array(['1000','500'])
rewards_int = rewards.astype(np.int32)
print('변경 후, 쿼스트 보상금',rewards_int )
