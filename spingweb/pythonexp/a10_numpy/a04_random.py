'''
# NumPy는 수치 연산을 위한 파이썬의 핵심 라이브러리로, 강력하고 효율적인 다차원 배열 객체를 제공합니다.
특히 numpy.random 모듈은 다양한 확율 분포에 따라 무작위 표본을 생성하는 기능을 통해 데이터 과학,
머린러닝, 통계 시뮬레이션 등 여러 분야에서 필수적으로 사용됩니다. 컴퓨터가 생성하는 난수는 완전히
무작위가 아닌, 정해진 시작점(seed)에서 예측 가능한 순서로 생성되는 의산 난수입니다.
1. NumPy의 난수 생성은 크게 두가지 방식으로 접근할 수 있습니다.
    1) 레거시 방식(np.random.*) : np.random.rand(), np.random.randint() 처럼 모듈 수준에서
        직접 함수를 호출하는 간편한 방식입니다.
    2) 현대적 방식(no.random.Generator) : np.random.default_rng()를 통해 생성기(Generator)
        객체를 먼저 만들고, 그 객체의 메서드를 호출하는 방식입니다. 이 방식은 재현성 및 여러 활률
        분포 지원 측면에서 더 우수하여 현재 권장되는 방법입니다.
2. 주요 기능 및 메서드
    1) 난수 생성기 초기화(권장 방식)
        항상 동일한 순서의 난수를 얻고 싶다면 시스(seed)를 설정해야 합니다. 이는 코드의 재현성을
        보장하는 중요한 단계입니다. 현대적 방식에선는 defaut_rng()메서드 값을 전달하여 생서기
        객체를 만듭니다.
        ex)
        # 시드값을 이용해 난수 생성기(Generator) 객체 생성
        rng = np.random.default_rng(seed = 42)
        # 생성한 객체를 통해 난수 배열 생성
        random_floats = rng.random(size=(2,3))
        -- 재현 가능한 무작위 실수 배열
        # 시스 없이 생성하면 실행할 때마다 다른 결과가 나옵니다.
        rng_new = np.random.default_rng()

'''
import numpy as np
rng = np.random.default_rng(seed = 42)
print('# seed 속성 이용한 경우 #')
print(rng)
random_floats = rng.random(size=(2,3))
print("실행시 마다 동일한 값:", random_floats)
# 1~6까지 주사위, 크기는 10개, 한번 실행되면 실행될 때마다 동일한 데이터 철
random_integers = rng.integers(low=1, high=6+1, size=10)
print("# seed 형 정수 랜덤 #")
print(random_integers)

# 시드 없이 생성하면 실행할 때마다 다른 결과값 생성
rng_new = np.random.default_rng()
print("# 시드 없이 생성한 경우 #")
print(rng_new.random(size=(2,3)))
# 1~6까지 주사위, 크기는 10개, 한번 실행되면 실행될 때마다 동일한 데이터 철
random_integers = rng_new.integers(low=1, high=6+1, size=10)
print("# 일반형 정수 랜덤 #")
print(random_integers)

# ex) 0~100점 학생 25명의 점수를 seed형으로 설정하여 출력하세요..
ptSeed = np.random.default_rng(seed=5)
ptList = ptSeed.integers(low=0,high=100+1, size=25)
print("# seed형 임의의 점수 #")
print(ptList)
'''
# 카드나 로또번호와 같이 한번 추출한 이후, 동일한 번호가 추출이 되지 않게 처리하는 내용..
1. choice(임의의 배열, size=크기, replace=false)
   replace=false는 중복없이 뽑는 것을 말한다.
'''
# 카드 배열
cards = ['♣A','♣1','♣2','♣3','♣4','♣5','♣6','♣7','♣8','♣9','♣10','♣J','♣Q','♣K']
my_cards = rng.choice(cards, size=7, replace=False)
print("# 중복되지 않는 카드 설정#")
print(my_cards)
# 1~45까지 공을 arange로 만들어서, 위 내용과 같이 중복되지 않는 6개 번호를 선택해서 추출(seed 사용하지 않고 처리..)
# 부터 45까지 공
lotto_balls = np.arange(1, 45+1)
my_lotto_numbers = rng_new.choice(lotto_balls, size=6, replace=False)
print("# 생성된 나의 로또번호 #")
print(my_lotto_numbers)

'''
# shuffle(배열)
1. 특정한 배열을 무작위로 섞는 처리..
'''
cardNum = ['2','3','4','5','6','7','8','9','10','J','Q','K','A'] 
cardShape = ['◆','♠','♠','♣']
cards = []
for sh in cardShape:
    for num in cardNum:
        cards.append(sh+num)
print("# 만들어진 전체 카드 #")        
print(cards)
print("# 카드 섞기 #")
rng_new.shuffle(cards)
print(cards)
print("첫번째 선수 카드:", cards[0:7] )
print("두번째 선수 카드:", cards[7:14] )
# ex) 가위 바위 보를 설정하여..  두 친구의 가위,바위,보  3번했을 때, 출력내용을 처리하세요
friend1 = ['가위','바위','보']
friend2 = ['가위','바위','보']
rng_new.shuffle(friend1)
rng_new.shuffle(friend2)
for idx in range(3):
    print(idx+1, '번째 가위 바위 보 게임')
    print("  1번째 친구:", friend1[idx], end=" - ")
    print("2번째 친구:", friend2[idx])
