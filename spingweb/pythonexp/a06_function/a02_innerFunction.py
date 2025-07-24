'''
# 파이썬에서 사용되는 내장함수
1. 지금까지 내용
    print(), input(), range(), type():데이터유형 확인, str(), int(), float(), bool()
2. len() : 문자열이나 배열의 갯수를 리턴하는 함수 len("hello") ==> 5, len([100,200,300]) ==> 3
3. range() : 정수 범위를 생성하는 함수  range(4) 0부터 4까지 숫자
4. max(), min() : 최대값 최소값
5. sum() : 합계를 반환.
6. sorted() : 시퀀스를 정렬한 결과를 반환하는 함수, 기본적으로 오름차눗 정렬 reverse=True 옵션을 사용하여
   내림차순 정렬
'''
print(range(5))
for idx in range(5):
    print(idx)
numbers = [10,20,30,40]    
print('최대값', max(numbers))
print('최소값', min(numbers))
print("합산:", sum(numbers))
list = [5,2,9,1]
print('순차정렬:', sorted(list))
print('역순정렬:', sorted(list, reverse=True))

# ex1) 아래 데이터를 역순으로 정렬하고, 가장 큰 세 개의 수를 구하세요..
numbers = [56, 12, 89, 34, 77, 23, 65]

revOrdered = sorted(numbers, reverse=True)
print("역순 정렬", revOrdered)
print("1~3 수:", revOrdered[0:3])


# ex2) 아래 성적에서 가장 높은 점수와 낮은 점수, 평균 점수를 출력
points = [88, 95, 72, 59, 91]
print("가장 높은 점수:",  max(points))
print("가장 낮은 점수:",  min(points))
print("평균 점수:",  sum(points)/len(points))


