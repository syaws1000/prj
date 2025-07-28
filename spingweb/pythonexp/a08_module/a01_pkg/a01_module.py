name = '홍길동'
def call(name, price, cnt):
    print("# 구매 처리 함수 #")
    print(f'물건명:{name}')
    print(f'가격:{price}')
    print(f'갯수:{cnt}')
    return price*cnt    

class Person:
    def __init__(self, name, age, loc):
        self.name = name
        self.age = age
        self.loc = loc
    def show(self):
        print("# 사람 정보 #")
        print(f'이름:{self.name}')
        print(f'나이:{self.age}')
        print(f'사는곳:{self.loc}')
        
