'''
# while
1. 반복의 횟수를 결정하기보다는 조건식이 참인 경우에 반복하는 형태
2. 기본 형식
    1) while 반복할 조건 : 조건식이 True일 경우에 반복을 처리한다.
        while 조건식:
            반복할 문장
    2) 1단계 예제
        5~10까지 출력을 while문으로 처리하세요
        cnt = 5
        while cnt <= 10:
            print(cnt)
            cnt += 1
    3) 2단계 예제
        주문종료 Q를 투를 때까지 주문을 받아 출력하세요
        order = ""
        while order!='Q':
            order = input('주문할 문건 입력(종료시 Q):')
            print(f'주문한 물건 :{order}')

'''
cnt = 5
while cnt <= 10:
    print(cnt,'번째')
    cnt += 1
# ex) while문을 이용하여 10~20까지 출력하세요.    
cnt = 10
while cnt <= 20:
    print(cnt, end=' ')
    cnt +=1
print()

#order = ""
#while order!="Q":
#    order = input("주문할 음식을 입력하세요(종료시 Q 입력):")
#    print(f'입력한 음식:{order}')

# ex) 구매할 물건의 가격을 입력받아서 출력하되 종료시 0을 입력하게 하여 총 구매 금액을 출력하세요..
pay = -1
tot = 0
while pay!=0:
    pay = int(input("구매할 물건의 가격입력(입력종료시 0입력):"))
    print("입력한 구매 금액:", pay)
    tot += pay # 총계금액 누적 처리
print('총계 금액:', tot)
