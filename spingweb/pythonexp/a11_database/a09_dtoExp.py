
# DTO 객체 생성과 활용..  import * : 내장된 모듈의 포함된 모든 요소객체를 가져오는 처리.
from a11_database.a00_dto import *




d1 = Dept(deptno=10, dname='인사', loc='강남')
print("# 부서정보 #")
print(d1.deptno)
print(d1.dname)
print(d1.loc)
d1 = Dept(10,'인사','뉴욕')
print(d1)
print(d1.deptno)
d2 = Dept(deptno=20,dname='회계',loc='서울')
print(d2)
print(d2.dname)
# ex) a00_dto.py 안에 Student 선언과  no, name, kor, eng, math 속성을 선어하고, 객체로 호출하세요.



s1 = Student(1,'홍길동',70,80,90)
s2 = Student(no=1,name='마길동',kor=70,eng=80,math=90)
print(s1)
print(s1.name)
print(s2)
print(s2.kor)

data1 = (4,'오길동',80,80,80)
s3 = Student(*data1)
print(s3)


# ex) Product 객체를 해당 dto안에 선언하고 튜플형식으로 생성자를 통해서 생성자 초기화 후, 속성을 접근해서 출력하세요..

p1 = Product(*('사과',3000,2))
print(p1)
tpl = ('오렌지',4000,3)
p2 = Product(*tpl)
print(p2)

dupList = [('사과',3000,2),('오렌지',4000,3),('수박',12000,4)]
fruitList = []
for fruit in dupList:
    p = Product(*fruit)
#   print(p)
    fruitList.append(p)  # 단위 객체에 담긴 fruit 리스트..

print(fruitList)
for fruit in fruitList:
    print(fruit.name,end="\t")
    print(fruit.price,end="\t")
    print(fruit.cnt,end="\n")

# ex) Student 객체형 리스트 처리를 위해 튜플형 리스트를 만들고, 해당 튜플령 리스트를 Student객체형 리스트로 처리하여 출력하세요..    
duplStuList = [(1,'홍길동',70,80,90),(2,'마길동',80,80,90),(3,'오길동',95,80,90)]
stuList = []
for stu in duplStuList:
    stuList.append(Student(*stu))

for stu in stuList:
    print(stu.no,end = '\t')
    print(stu.name,end = '\t')
    print(stu.kor,end = '\t')
    print(stu.eng,end = '\t')
    print(stu.math,end = '\n')
