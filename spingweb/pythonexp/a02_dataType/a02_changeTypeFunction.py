'''
# 파이썬에서 처리되는 형변환 함수
1. int() : 정수형문자열을 정수형으로 변환
2. float() : 실수형문자열을 실수로 변환
3. str() : 숫자나 다른 데이터 유형으로 문자열로 변환 처리..
4. bool() : boolean형문자열을 boolean데이터로 변환..
# 파이썬에서 같은 유형의 데이터끼리만 +(연산 또는 연결 처리)가 가능하기에 숫자형이나 문자열 데이터를 처리할 
때는 위와 같은 함수로 변환 처리하여야 한다.
# input()은 기본적으로 문자열을 입력하는 함수형이기에 연산을 처리하기 위하여 위 형변환 함수와 함께 사용하여
처리한다.(중첩함수 처리 -  int(input("숫자입력"))  )
'''
# price = int(input("가격을 입력하세요!"))
# disPer = int(input("할인율을 %로 입력하세요"))
# print(f'입력한 가격:{price}')
# print(f'할인율:{disPer}%')
# lastPrice = price-int(price*disPer/100) 
# # 가격을 할인율 % ==> 실수로 변환 연산  ==> 정수로 변환
# print(f'최종 가격:{lastPrice}원')


# ex) 높이와 밑변을 입력받아 삼각형의 면적을 출력하세요...(실수값으로 처리)
# height = float(input("높이를 입력(실수):"))
# base = float(input("밑면을 입력(실수):"))
# dem = height * base
# print(f'면적1(실수):{dem}')
# print(f'면적2(정수):{int(dem)}')

# ex) 입력한 국어, 영어, 수학 점수를   문자열 korStr에 국어:@@ 에 형식으로 할당,  
#     영어를 engStr에  영어:@@에 할당,,  수학을 mathStr에 수학:@@에 할당 하여 출력하세요..
#     총점 : @@에 할당 출력..
kor = int(input("국어점수입력:"))
eng = int(input("영어점수입력:"))
mat = int(input("수학점수입력:"))
korStr = "국어:"+str(kor) # 주의  파이썬에서  "국어:"+숫자형 ==> 에러발생 데이터유형이 같을 때, + (연결) 처리된다.
engStr = "영어:"+str(eng)
matStr = "수학:"+str(mat)
totStr = "합산" + str(kor+eng+mat)
print(korStr, engStr, matStr, totStr)


