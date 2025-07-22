'''
# 배열과 반복문 처리
1. 배열을 list로 선언하면
2. 반복문 형식
    for 단위데이터 in list:
        단위데이터
    해당 배열안에 있는 단위데이터를 가져와서 처리할 수 있다..    
'''
names = ['홍길동','김길동','신길동']
nameList = ''
for name in names:
    print(f'이름:{name}')
    nameList += name+", "
print(nameList)    
# ex) 과일의 가격을 배열로 설정하고, 그 누적된 값을 할당하여 출력하세요..
prices = [2000,1000,3000]
tot = 0
for price in prices:
    print(f'가격:{price}')
    tot += price
print(f"합산:{tot}")

