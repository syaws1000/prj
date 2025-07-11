-- 미래의 자동차 테이블 생성
CREATE TABLE Future_Cars (
    car_id NUMBER PRIMARY KEY,          -- 자동차 ID
    car_name VARCHAR2(100),             -- 자동차 이름
    car_feature VARCHAR2(200),          -- 자동차 특징
    fuel_type VARCHAR2(50),             -- 연료 종류
    release_date DATE,                  -- 출시 날짜
    top_speed NUMBER                    -- 최고 속도 (km/h)
);

-- 데이터 입력 예시
INSERT INTO Future_Cars (car_id, car_name, car_feature, fuel_type, release_date, top_speed)
VALUES (1, '제로포스 전기차', '무소음으로 도시를 돌아다니는 고속 전기차', '전기', TO_DATE('2027-01-01', 'YYYY-MM-DD'), 400);

INSERT INTO Future_Cars (car_id, car_name, car_feature, fuel_type, release_date, top_speed)
VALUES (2, '플로팅 스피드카', '공중을 나는 자동차로 바람을 타고 이동', '에너지 팩', TO_DATE('2030-06-15', 'YYYY-MM-DD'), 600);

INSERT INTO Future_Cars (car_id, car_name, car_feature, fuel_type, release_date, top_speed)
VALUES (3, '디지털 드라이버', '자율 주행 차량으로 AI가 운전하는 자동차', '하이브리드', TO_DATE('2025-10-20', 'YYYY-MM-DD'), 350);

INSERT INTO Future_Cars (car_id, car_name, car_feature, fuel_type, release_date, top_speed)
VALUES (4, '태양광 스포츠카', '태양광을 이용해 자가 충전되는 스포츠카', '태양광', TO_DATE('2028-03-10', 'YYYY-MM-DD'), 500);

INSERT INTO Future_Cars (car_id, car_name, car_feature, fuel_type, release_date, top_speed)
VALUES (5, '타임머신 카', '시간 여행을 할 수 있는 자동차', '시공간 연료', TO_DATE('2040-08-25', 'YYYY-MM-DD'), 1000);

SELECT * FROM Future_Cars;
SELECT * FROM Future_Cars WHERE car_name LIKE '%%' AND fuel_type LIKE '%%';
/*
class FutureCar{
	private int carId;
	private String carName;
	private String carFeature;
	private String fuelType;
	private Date releaseDate;
	private int topSpeed;
}
A02_FutureCarController.java
A02_FutureCarService.java
A02_FutureCarDao.java

a02_futureCarList.jsp
a02_futureCarInsert.jsp
a02_futureCarDetail.jsp

 * */
-- list dao
/*
@Select("SELECT * FROM Future_Cars WHERE car_name LIKE #{carName} AND fuel_type LIKE #{fuelType} order by car_id desc")
List<FutureCar> getFutureCarList(FutureCar sch);

@Insert("INSERT INTO Future_Cars  VALUES (Future_Cars_seq.nextval, #{carName}, #{carFeature}, #{fuelType}, #{releaseDate}, #{topSpeed})")
int insertFutureCar(FutureCar ins);

@Select("SELECT * FROM Future_Cars WHERE car_id = #{carId}")
FutureCar getFutureCar(@Param("carId") int carId);


	private String carName;
	private String carFeature;
	private String fuelType;
	private Date releaseDate;
	private int topSpeed;
 * */
CREATE SEQUENCE Future_Cars_seq;
SELECT Future_Cars_seq.nextval FROM dual;
--                                                       carName carFeature fuelType releaseDate topSpeed
INSERT INTO Future_Cars  VALUES (Future_Cars_seq.nextval,'라브로기니', '가장비싼 자동차', '고급연료', TO_DATE('2025-07-11', 'YYYY-MM-DD'), 20000);
SELECT * FROM Future_Cars;

-- 수정 sql 
UPDATE Future_Cars
   SET car_name = '변경1',
       car_feature='변경2',
       fuel_type='변경3',
       release_date = to_date('20001212','YYYYMMDD'),
       top_speed = 9999
WHERE car_id = 6;

DELETE FROM Future_Cars WHERE car_id=6;

/*
	private String carFeature;
	private String fuelType;
	private Date releaseDate;
	private int topSpeed;
UPDATE Future_Cars
   SET car_name = #{carName},
       car_feature=#{carFeature},
       fuel_type=#{fuelType},
       release_date = #{releaseDate},
       top_speed = #{topSpeed}
WHERE car_id = #{carId}
 
@Update("")
int updateCar(FutureCar upt);

@Delete("DELETE FROM Future_Cars WHERE car_id=#{carId}")
ubt deleteCar(@Param("carId") int carId);
 * */







