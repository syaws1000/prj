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