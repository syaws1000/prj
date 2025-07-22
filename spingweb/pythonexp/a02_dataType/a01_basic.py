'''
# 파이썬에서 사용되는 데이터 유형
1. 변수나 상수의 종류를 의미한다. 그릇의 용도에 따라 국그릇, 밥그릇이 있듯이 변수에서
   할당하는 데이터 유형에 따라서 다양한다.
2. 기본 데이터 유형
    1) 정수형
    var1 = 100
    2) 실수형
    var2 = 3.14
    3) 문자열형
    var3 = '파이썬'
    4) boolean형(True/False)
    var4 = True
    var5 = False
    var6 = var1>=100   : 비교연식식에 의해 True 할당.
3. 변수유형 확인 함수 : type()
    1) var1 = 100
       type(var1) 
       <<class 'int'>> 정수형일 때    
       <<class 'float'>> 실수형일 때    
       <<class 'str'>> 문자열형일 때    
       <<class 'bool'>> boolean형일 때    
'''
var1 = 100
var2 = 3.14
var3 = '파이썬'
var4 = var1>=100
print(f'var1:{var1}, 유형:{type(var1)}')
print(f'var2:{var2}, 유형:{type(var2)}')
print(f'var3:{var3}, 유형:{type(var3)}')
print(f'var4:{var4}, 유형:{type(var4)}')
# ex) input을 이용해서 이름, 나이를 입력받고, 이름은 문자열 그대로 출력, 나이는 숫자형으로 변환(int() 함수)
#    데이터를 출력하고, type()를 통해서 유형도 확인하세요..

