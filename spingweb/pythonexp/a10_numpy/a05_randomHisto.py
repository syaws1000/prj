'''
# Matplotlib 라이브러리를 통해 히스토 그램 처리하기
1. 히스토그램은 데이터의 분포를 사각적으로 파악하는데 매우 유용한 그래프입ㄴ디ㅏ.
2. 기본 설치
   pip install matplotlib   
   해당 lib를 설치한다.
3. import 활용 
   import matplotlib.pyplot as plt
   해당 모듈을 plt라는 이름으로 사용하기
4. 각 기능 메서드
   plt.hist() : Matplotlib에서 "히스토그램을 그려줘"라고 명령하는 함수
   wait_times : 그래프로 그릴 실제 데이터입니다. 여기서는 NumPy 배열에 저장된 데이터를 시뮬레이션 결과를 전달.
   bins = 20 : 히스토그램의 가로축 구간(계급)의 갯수를 의미합니다. 전체 데이터(0분~10분)를 20개의 동일한 간격으로 나누고,
       각 구간에 몇 개의 데이터가 포함되는 지를 세어 막대로 표현합니다. bins 개수가 많아질수록 그래프는 더 세밀해지고,
       적어질수록 뭉뚱그려 보입니다.
   edgecolor="black" : 각 막대의 테두리를 검은색으로 칠해주는 시작점 옵션입니다. 막대들이 명확하게 구분되어 더 보기
   좋아집니다. 
   plt.title("...") : 그래프의 전체 제목을 설정합니다.
   plt.xlabel("...") : 그래프의 가로축(x축)의 이름을 설정합니다.
   plt.ylabel("...") : 그래프의 새로축(y축)의 이름을 설정합니다.
   plt.show() : 지금까지 설정한 모든 내용(데이터, 막대, 제목, 라벨 등)을 종합하여 최종적으로 그래프 참을 화면에 띄워
         보여주는 명령어입니다. 이 명령어가 없으면 그래프가 생성은 되어도 눈에 보이지 않습니다.

# 개성 있는 난수! 특정 확률 분포 따르기
1. 현실 세계의 데이터는 제각각 다른 패턴을 가집니다. 키, 몸무게처럼 평균에 몰려있기도 하고, 어떤 사건의 발생 횟수처럼
     특정한 패턴을 따르기도 하죠. NumPy를 사용하면 이런 다양한 데이터의 특징을 흉내 내는 난수를 생성할 수 있습니다.
2. 균등 분포(공평한 세상)
   균등 분포는 모든 숫자가 뽑힐 확률이 완전히 동일한, 가장 공평한 분포입니다. 특정 범위 안에서 어떤 값이 나올지 전혀
   예측할 수 없을 때 사용합니다.
   ex) 다트 판에 점수 없이 그냥 던질 때, 다트가 꽂힐 위치
   주외 인자 low(최소값), high(최대값)         

'''
import numpy as np
import matplotlib.pyplot as plt

# 난수 생성기 준비(실생시 마다 다른 데이터)
rng = np.random.default_rng()
# 0분에서 10분 사이의 버스 도착시간을 동일한 분포포 한대씩 온다고 할때, 내가 정류장에 도착한 순간부터 다음 버스가
# 오기까지 남은 시간을 시뮬레이션 처리 및, 히스토그램을 출력..
wait_times = rng.uniform(low=0, high=10, size=10000)
print(f"1000번 중 처음 5번의 시뮬레이션 결과(분):{wait_times[0:5].round(2)}")

# 결과를 히스토그램으로 그려보기..
plt.hist(wait_times, bins=20, edgecolor='black')
plt.title("Bus Arrival time Simulation(Uniform Distribution)")
plt.xlabel("Waiting Time(minutes)")
plt.ylabel("Frequency")
plt.show()
# ex) 주사위(1~6)를 동등 분포로  10000을 처리하여 출력된 내용을 히스토그램을 나타내세요..
dices  = rng.uniform(low=1, high = 6, size=10000)
print(f' 처음 10번 시뮬레이션 결과:{dices[0:10].round(1)}')
plt.hist(dices, bins=10, edgecolor="black")
plt.title("Dice game Simulation(Uniform Distribution)")
plt.xlabel("Random Number(1~6)")
plt.ylabel("Frequency")
plt.show()
'''
# 정규분포(Normal Distribution) - 평균의 법칙
1. 정규 분포는 자연과 사회 현상에서 가장 흔하게 발견되는 분포입니다. 데이터가 평균(mean)에 가장 많이 몰려 있고, 
평균에서 멀어질수록 급격히 줄어드는 아름다운 종 모양(bell curve)을 가집니다.
   ex) 같은 반 친구들의 키, 시험 성적 분포
   1) 주요 인자 : loc (평균),  scale(표준편차 - 데이터가 흩어진 정보)

예제) 판타지 마을의 오크 키 생성하기!
우리가 만들 게임에 등장하는 오크(Orc)들의 평균 키는 180cm이고, 표준편차는 15cm라고 설정해 봅시다.
이 설정에 맞는 오크 1,000명의 키 데이터를 생성해 보겠습니다.
'''
# 평균(loc) 180cm, 표준편차(scale) 15cm를 따르는 오크 1,000명의 키 데이터 생성
orc_heights = rng.normal(loc=180, scale=15, size=1000)
print(f'생성된 오크 5명의 키:{orc_heights}cm')
# 히스토 그램 확인
plt.hist(orc_heights, bins = 30, edgecolor='black', color="green")
plt.title("Heights of Orcs(Normal Distribution)")
plt.xlabel("Height (cm)")
plt.ylabel("Number of Orcs")
plt.axvline(180, color="red", linestyle="dashed", linewidth=2) # 평균선 표시
plt.show()
# ex) 반학생 30명의 수학점수(0~100 임의로), 평균(70점), 표준편차(10점)으로 했을 때, histo그램을 출력하세요..
#     np.clip(점수배열, 시작, 마지막) : 해당 범위를 벗어나지 않게 처리..
studentPts = rng.normal(loc=70, scale = 10, size= 1300)
studentPts = np.clip(studentPts,0,100)
plt.hist(studentPts, bins= 10, edgecolor="black", color="red")
plt.title("Recores of Mathmetics(Normal Distribution)")
plt.xlabel("point")
plt.ylabel("Frequence")
plt.axvline(70,color="blue", linestyle="dashed", linewidth=2)
plt.show()
