'''
# 튜플 ==> DTO 객체 전환 ==> 리스트 처리
1. 튜틀의 리스트를 객체의 리스트로 변환하는 과정은 데이터베이스 처리에서 중요한 부분이다.
    초기 데이터는 튜플로 묶인 정보로 구성되어 있습니다. 이 데이터를 그대로 사용하기보다, 각 튜플을 객체라는
    구조화도니 객체로 변환하여 객체의 참조변수로 저장합니다. 마지막으로, 객체화된 리스트를 순회하여 
    각 정보를 명확하게 출력합니다.
    # 이 과정의 핵심을 데이터를 단순한 묶음(튜플)에서 의미 있는 속성(name, age)를 가진 객체로 전환하여
    코드의 가독성과 유지보수성을 높이는 것입니다.
2. 전환 처리 과정
    1) 초기 데이터 : 튜플의 리스트(DB에서 fetchall()로 가져올 때, 이 형태 이다.)
        dupList = [('홍길동',25,'서울'),('김길동',35,'부산'),('마길동',27,'광주')]
        위 dupList는 리스트이며, 각 요소는 사람의 정보를 담은 튜플(tuple)입니다.
        튜플은 (이름,나이,사는곳) 순서로 데이터를 가지고 있습니다.
        이 상태에서 dupList[0][1]처럼 인덱스(index)로만 데이터에 접근할 수 있어, 어떤 인덱스가 어떤
        데이틀 의미하는지 파악하기 어렵습니다.
    2) 튜플로 DTO객체로 전환( pList.append(Person(*person)))
        이 부분이 코드의 핵심입니다. DTO(Data Transfer Object)는 데이터 전송 및 관리를 목적으로 속성(attribute)을
        담는 객체를 의미하며, 여기서는 Person 클래스가 그 역할을 합니다.

        class Person:
            name: str
            age: int
            loc: str

    3) 이제 전환 과정을 살펴봅시다.
        pList = []
        for person in  dupList:
            # person은   ('홍길동',25,'서울')과 같은 튜플입니다.
            # *person은 튜플의 압축을 풀어(unpacking)인자들을 개별적으로 전달합니다.
            # 즉, Person(*person)는 Person('홍길동',25,'서울')과 동일합니다.
            pList.append(Person(*person))
            # 이렇게 객체 하나하나를 만들어 pList배열에 담습니다.
    4) 리스트 출력        
        for person in pList:
            print(person.name, end="\t")
            print(person.age, end="\t")
            print(person.loc, end="\n")
        이제 pList의 각 요소 person은  Person객체입니다.
        따라서 person[1]과 같은 인덱스 방식 대신, person.name, person.age 처럼 의미 있는 속성 이름으로
        데이터를 접근할 수 있습니다.
        이는 코드를 읽고 이해하기 훨씬 쉽게 만들어주며, 데이터 항목이 많아져도 헷갈릴 위험이 줄어듭니다.
'''
from a11_database.a00_dto import *
dupList = [('홍길동',25,'서울'),('김길동',35,'부산'),('마길동',27,'광주')]
pList = []
for dup in dupList:
    pList.append( Person(*dup) )

for person in pList:
    print(person.name, end="\t")
    print(person.age, end="\t")
    print(person.loc, end="\n")

# ex) Movie(title, director, year)로 클래스 선언후, 해당 내용을 for으로 처리하여 출력.
dupList = [('기생충','봉준호',2019),('올드보이','박찬욱',2003),('부산행','연상호',2016)]     
movieList = []
for data in dupList:
    movieList.append(Movie(*data))

print("# 영화 목록 #")
for movie in movieList:
    print(movie.title, end="\t")
    print(movie.director, end="\t")
    print(movie.year, end="\n")

'''
# 리스트 컴프리핸션(List Comprehension) 구문을 사용하여, 처리
1. for 루프가 돌면서 객체(*튜플언팩)를 통해 생성된 모든 객체를 모아 새로운 리스트를 만들 때,
    사용하는 파이썬 문법체제..
2. 기존의 리스트, 튜플 등 순회 가능한 데이터 구조를 사용하여 새로운 리스트를 간결하고 효율적으로
    만드는 방법. 일반적인 for 반복문과 if 조건문을 한줄로 압축하여 가독성을 높이고 코드를 더 파이썬 답게 만들어
    줍니다.
3. 기본 형식
    [표현식 for 항목 in 순회가능한 객체]
    리스트 컴프리핸션의 기본 구조는 대괄호[]안에 표현식과 for 반복문을 포함하는 형태입니다.    
    항목 : 순회 가능한 객체의 각 요소를 가르키는 변수
    순환가능한객체 : 리스트, 튜플, range() 등 반복문으로 순회할 수 있는 모든 것
    표현식 : 각 항목을 사용하여 새로운 리스트의 요소로 만들 값
'''
prices = [1000,2000,3000]
prices2 = [price*2 for price in prices]  # 기존 데이터에서 각 단위 데이터를 *2로 처리한 새로운 배열 생성..
print(prices2)
fruits = ['apple','banana','cherry','kiwi']
upper_fruits = [fruit.upper() for fruit in fruits] #  각 단위 데이터를 대문자로 변환 새로운 배열 생성.
print(upper_fruits)
dupList = [(10,'인사','서울'),(20,'재무','인천'),(30,'회계','부산')]
deptList = [Dept(*row) for row in dupList]
for dept in deptList:
    print(dept.deptno,end="\t")
    print(dept.dname,end="\t")
    print(dept.loc,end="\n")