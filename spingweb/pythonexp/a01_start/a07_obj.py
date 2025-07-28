no1 = 1000
no2 = 3000

def plus(no1, no2):
    print(no1, "+", no2)
    return no1+no2

def multi(no1, no2):
    print(no1, "x", no2)
    return no1*no2

class Product:
    def __init__(self,pname, price, cnt):
        self.pname = pname
        self.price = price
        self.cnt = cnt
    def info(self):
        print("# 물건정보 #")    
        print(f'물건명:{self.pname}')
        print(f'가격:{self.price}')
        print(f'갯수:{self.cnt}')
        return self.price*self.cnt
