			create table chart01(
				no number,
				type varchar2(50),
				data number,
				label varchar2(50)
			);
			
			create sequence chart01_seq;
			insert into chart01 values(chart01_seq.nextval,'area',50,'1월');
			insert into chart01 values(chart01_seq.nextval,'area',70,'2월');
			insert into chart01 values(chart01_seq.nextval,'area',70,'3월');
			insert into chart01 values(chart01_seq.nextval,'area',80,'4월');
			insert into chart01 values(chart01_seq.nextval,'area',90,'5월');
			insert into chart01 values(chart01_seq.nextval,'area',100,'6월');
SELECT DATA, label 
FROM chart01
WHERE TYPE='area';
/*
class Chart{
	private int no;
	private String type;
	private int data;
	private String label;
	
}
@Select("SELECT * FROM CHART01 WHERE TYPE=#{type}")
List<Chart> getChart(@Param("type") String type);
 * */
