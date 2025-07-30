CREATE TABLE I18N_MESSAGE (
    ID        NUMBER PRIMARY KEY,
    CODE      VARCHAR2(100),      -- 메시지 코드 (예: greeting)
    LOCALE    VARCHAR2(10),       -- 언어 코드 (예: ko, en, ja)
    MESSAGE   VARCHAR2(1000)      -- 실제 메시지 내용
);

-- 샘플 데이터
INSERT INTO I18N_MESSAGE VALUES (1, 'greeting', 'ko', '안녕하세요');
INSERT INTO I18N_MESSAGE VALUES (2, 'greeting', 'en', 'Hello');
COMMIT;


-- 상상 속 식물 테이블
CREATE TABLE Imaginary_Plants (
    plant_id NUMBER PRIMARY KEY,
    plant_name VARCHAR2(100),
    plant_ability VARCHAR2(200),
    found_in_location VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Imaginary_Plants (plant_id, plant_name, plant_ability, found_in_location)
VALUES (1, '불꽃나무', '불을 생성하는 능력', '불타는 숲');

INSERT INTO Imaginary_Plants (plant_id, plant_name, plant_ability, found_in_location)
VALUES (2, '천상의 꽃', '하늘을 나는 능력', '구름 위의 정원');

INSERT INTO Imaginary_Plants (plant_id, plant_name, plant_ability, found_in_location)
VALUES (3, '광휘풀', '빛을 발산하여 어두운 곳을 밝힘', '빛의 동굴');

INSERT INTO Imaginary_Plants (plant_id, plant_name, plant_ability, found_in_location)
VALUES (4, '시간을 거스르는 덩굴', '시간을 되돌릴 수 있는 능력', '과거의 숲');

INSERT INTO Imaginary_Plants (plant_id, plant_name, plant_ability, found_in_location)
VALUES (5, '꿈을 꾸는 나무', '꿈 속으로 사람을 인도하는 능력', '밤의 정원');
CREATE SEQUENCE Plants_seq;
SELECT plants_seq.nextval FROM dual;

-- 유명한 몬스터 테이블
CREATE TABLE Famous_Monsters (
    monster_id NUMBER PRIMARY KEY,
    monster_name VARCHAR2(100),
    monster_ability VARCHAR2(200),
    monster_location VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Famous_Monsters (monster_id, monster_name, monster_ability, monster_location)
VALUES (1, '고룡', '불을 내뿜는 능력', '용의 산');

INSERT INTO Famous_Monsters (monster_id, monster_name, monster_ability, monster_location)
VALUES (2, '바다의 괴물', '바다를 휘감는 폭풍 능력', '심해의 마을');

INSERT INTO Famous_Monsters (monster_id, monster_name, monster_ability, monster_location)
VALUES (3, '지옥의 악마', '사람의 마음을 읽는 능력', '지옥의 입구');

INSERT INTO Famous_Monsters (monster_id, monster_name, monster_ability, monster_location)
VALUES (4, '바람의 정령', '바람을 다스리는 능력', '광활한 초원');

INSERT INTO Famous_Monsters (monster_id, monster_name, monster_ability, monster_location)
VALUES (5, '얼음 괴물', '얼음으로 모든 것을 얼리기', '북극의 얼음성');

CREATE SEQUENCE Monsters_seq;
SELECT Monsters_seq.nextval FROM dual;

-- 미래의 음식 테이블
CREATE TABLE Future_Foods (
    food_id NUMBER PRIMARY KEY,
    food_name VARCHAR2(100),
    food_description VARCHAR2(200),
    food_effect VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Future_Foods (food_id, food_name, food_description, food_effect)
VALUES (1, '플로팅 피자', '공중에서 떠서 이동하는 피자', '날아서 먹을 수 있음');

INSERT INTO Future_Foods (food_id, food_name, food_description, food_effect)
VALUES (2, '디지털 버거', '입력한 취향에 맞는 버거를 자동으로 만들어주는 기술', '맛이 최적화되어 있음');

INSERT INTO Future_Foods (food_id, food_name, food_description, food_effect)
VALUES (3, '초코봇 스낵', '로봇이 만들어주는 초콜릿 간식', '정확한 칼로리 계산');

INSERT INTO Future_Foods (food_id, food_name, food_description, food_effect)
VALUES (4, '무한 스시', '먹고 싶은 만큼 스시가 자동으로 제공됨', '배부를 때까지 제공');

INSERT INTO Future_Foods (food_id, food_name, food_description, food_effect)
VALUES (5, '시간 여행 아이스크림', '먹을 때마다 과거의 맛을 되살리는 아이스크림', '추억을 떠올리게 함');

CREATE SEQUENCE Foods_seq;
SELECT Foods_seq.nextval FROM dual;

-- 상상 속 동물 테이블
CREATE TABLE Imaginary_Animals (
    animal_id NUMBER PRIMARY KEY,
    animal_name VARCHAR2(100),
    animal_ability VARCHAR2(200),
    habitat VARCHAR2(100)
);

-- 데이터 입력 예시
INSERT INTO Imaginary_Animals (animal_id, animal_name, animal_ability, habitat)
VALUES (1, '불사조', '불사 능력', '불타는 숲');

INSERT INTO Imaginary_Animals (animal_id, animal_name, animal_ability, habitat)
VALUES (2, '빛의 유니콘', '빛을 발산하는 능력', '별빛 숲');

INSERT INTO Imaginary_Animals (animal_id, animal_name, animal_ability, habitat)
VALUES (3, '천사의 새', '하늘을 나는 능력', '구름의 궁전');

INSERT INTO Imaginary_Animals (animal_id, animal_name, animal_ability, habitat)
VALUES (4, '정글의 거인', '강력한 힘', '밀림');

INSERT INTO Imaginary_Animals VALUES (5, '심해의 괴물', '물 속에서 벽을 통과하는 능력', '심해');


CREATE SEQUENCE Animals_seq;
SELECT Animals_seq.nextval FROM dual;
SELECT * FROM Imaginary_Animals WHERE animal_name LIKE '%%' AND habitat LIKE '%%';
INSERT INTO Imaginary_Animals VALUES (Animals_seq.nextval, '바다 괴물', '물 위에서 나르는 능력', '바다');
/*
@Select("SELECT * FROM Imaginary_Animals WHERE animal_name LIKE #{animalName} AND habitat LIKE #{habitat}")
List<ImaginaryAnimal> getImaginaryAnimalList


INSERT INTO Imaginary_Animals VALUES (Animals_seq.nextval, #{animalName}, #{animalAbility}, #{habitat})

 * 
 * 
class ImaginaryAnimal{
	private int animalId;
	private String animalName;
	private String animalAbility;
	private String habitat;
	
}
 * */






