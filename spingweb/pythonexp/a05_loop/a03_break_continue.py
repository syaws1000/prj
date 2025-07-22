'''
# 반복문을 탈출하는 break문
1. break문을 사용하면 특정한 반복문을 중단 처리하여 준다.
2. for, while문 둘 다 활용하는데 일반적으로 조건문과 함께 사용한다.
3. 기본 형식
    for
        if 조건:
            break;
    while
        if 조건
            break;
'''
for cnt in range(1, 10+1):  # 1~10까지 반복수행
    print('카운트:',cnt)
    if cnt == 5:  # 특정한 번호일 때 중단
        break;
# 기본적으로 100~150, 반복하여 출력하되, 120일 때, 중단 처리하세요.
for cnt in range(100, 150+1):
    print(cnt, end=", ")
    if cnt == 120:
        break;
print()
'''
# continue
1. for/while문에서 해당 반복step만 continue이후에 내용을 수행하지 않고,
    다음 반복 step으로 진행하는 것을 말한다.
2. 형식 
    for
        if 조건:      특정한 조건일 때, 해당 내용이후내용을 수행하지 않고, 다음 반복 step으로 넘어감..
            continue;  

'''
for cnt in range(1, 10+1):
    if cnt == 5:   # 5일 때만, 출력하지 않고, 수행
        continue;
    print('카운트:', cnt)
# ex) 구구단을 2~9단까지 출력하되 5단일 때만 출력하지 않고 처리하세요..
for grade in range(2, 9+1):
    if grade == 5:
        continue; # 해당 조건을 만나면 이후에 내용이 수행되지 않음.
    print(f"# {grade} 단 #")
    for cnt in range(1, 9+1):
        print(f'{grade} x {cnt} = {grade*cnt}')    
