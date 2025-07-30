'''
# Numpy
1. 파이썬의 NumbPy는 과학/수치 계산과 데이터 분석에서 가장 핵심적인 라이브러리 중 하나입니다.
2. 개요
    1) NumPy : Numerical Python
    2) 목적 : 다차원 배열 및 수치 연산을 위한 고성능 라이브러리
    3) 주요 기능 : 빠르고 메모리 효율적인 배열 처리 - 벡터/행열 열산 - 브로드캐스팅, 마스킹, 통계 처리
    4) 대표 객체 : ndarray (d-dimensional array)
    5) 필요성 : 반복문 없이 수치 계산을 빠르게 처리할 수 있으면, 데이터 분석, 딥러닝에서도 핵심 사용
3. 단계 학습 내용
   1) 1단계 : 기초
      - numpy 설치 및 import : pip install numpy  import numpy as np
      - ndarray 생성 : np.array(), 리스트 + 배열
      - 배열 속성 : ndim, shape, dtype, size, itemsize
      - 배열 인덱싱/슬라이싱 : 1차원, 2차원 인덱싱 & 부분 추출   

'''
import numpy as np
arr = np.array([1,2,3])  # numpy 배열 설정..
print(arr)
print(arr.ndim)  # 배열의 차원의 순
print(arr.shape) # 배열의 형태(모양), 각 차원의 크기를 튜플로 반환..
print(arr[1])
# ex) 학생 5명의 점수를 위와 같은 numpy 배열로 선언하고 출력하세요..
points = np.array([70,80,90,100,80])
print(points)
# numpy에서 제공하는 여러가지 속성 활용하기
arr2 = np.array([[10,20,30],[40,50,60]])
print(f'배열의 내용:{arr2}')
print(f'배열의 내용:{arr2[0][0]}')  # 1행 1열의 데이터값
print(f'배열의 내용:{arr2[0][1]}')  # 1행 2열의 데이터값
print(f'배열의 차원의 수(ndim):{arr2.ndim}')
print(f'배열 형태:{arr2.shape}')  # 2행 3열
print(f'배열 데이터 타입(dtype):{arr2.dtype}') # 구성요소의 데이터 유형 int64 정수
print(f'전체 요소 수(size):{arr2.size}')
print(f'요소 하나의 바이트 크기(itemsize):{arr2.itemsize}bytes') # 구성요소 한개당 데이터의 크기

# ex) 물건 3개의 구매가격과 갯수를 저장하는 2차원 데이터로 선언하고,
#     첫번째 물건의 가격과 갯수를 호출하면 명령어,  각 물건의 갯수를 호출하면 명령어를 출력하세요..
prodInfo = np.array([[2000,3],[3000,2],[4000,2]])
# 첫번째 물건 : prodInfo[0], 두번째 물건 : prodInfo[1], 세번째 물건 : prodInfo[2]
# 첫번째 물건의 가격 : prodInfo[0][0], 첫번째 물건의 갯수 : prodInfo[0][1]
print(f'첫번째 물건의 정보:{prodInfo[0]}')
print(f'첫번째 물건의 가격:{prodInfo[0][0]}')
print(f'첫번째 물건의 갯수:{prodInfo[0][1]}')
print(f'각 물건의 갯수:{prodInfo[0][1]}, {prodInfo[1][1]}, {prodInfo[2][1]}')