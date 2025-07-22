'''
# 반복문
1. for문 : 변수를 통해서 특정 .step 범위를 지정해서 반복 처리
2. 기본형식
    1) for 반복할변수 in range(반복횟수): 0부터 시작하여 해당 반복횟수로 반복처리한다.
    2) for 반복할변수 in range(시작수, 마지막수 + 1) : 시작수부터 마지막수까지 반복처리한다.
    3) for 반복할변수 in range(시작수, 마지막수 + 1, 증감단위) : 시작수부터 마지막수까지 증감단위로 반복 처리한다.
'''
for idx in range(5) : # 0부터 시작해서 5회 반복할 내용 처리
    print(f' {idx} 안녕하세요')
# ex1) 10회 사과를 출력하되 end 속성을 이용하여 , 구분하여 출력 하세요..
#      1번째 사과,  2번째 사과....     10번째 사과..,
for idx in range(10):
    print(f'{idx+1}번째 사과', end=', ')
print()    
for cnt in range(1, 10+1):
    print(f'카운트 {cnt}')
# ex2) 1~10 빨강색 @@번째 사과,  11~20까지 노랑색 @@번째 바나나,  21~30까지는 초록색 @@번째 수박  
#      출력하세요..
for cnt in range(1, 10+1):
    print(f'빨강색 {cnt}번째 사과')
for cnt in range(11, 20+1):
    print(f'노랑색 {cnt}번째 바나나')
for cnt in range(21, 30+1):
    print(f'초록색 {cnt}번째 수박')

# 0~100까지 5씩 증가하여 출력하는 처리..
for cnt in range(0, 100+1, 5):
    print(f'{cnt}', end = " ")
print()
# 200부터 2씩 감소하여 100까지 출력하는 처리
for cnt in range(200, 100-1, -2):
    print(f'{cnt}', end = " ")
print()    

# ex)  2~20까지 2씩 증가되어 출력하고, 50에서 30까지 3씩 감소하여 출력..
for cnt in range(2, 20+1, 2):
    print(f'카운트(증가) : {cnt}')
for cnt in range(50, 30-1, -3):
    print(f'카운트(감소) : {cnt}')

# 기본 for 문과 if 문 혼합 처리
# 1~100까지 탭간격으로 출력하되, 5단위로 줄바꿈 처리되어 출력...
for cnt in range(1, 100+1):
    print(cnt, end="\t")  # 기본적으로 탭간격으로 출력
    if cnt % 5 == 0: # 5로 나누었을 나머지값이 0일 경우는 줄바꿈처리
        print() 
# ex) 1~10까지 출력 하되  합산 결과를 아래 형식으로 출력
#     1 + 2 + 3 + ...  10 = 55

sum = 0
for cnt in range(1, 100+1):
    sum += cnt
    if(cnt < 100):
        print(cnt, end=" + ")
    else :
        print(f'{cnt } = {sum}')



    