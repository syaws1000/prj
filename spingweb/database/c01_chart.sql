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
			
			insert into chart01 values(chart01_seq.nextval,'area',80,'7월');
			insert into chart01 values(chart01_seq.nextval,'area',110,'8월');
			insert into chart01 values(chart01_seq.nextval,'area',120,'9월');
			insert into chart01 values(chart01_seq.nextval,'area',90,'10월');
			insert into chart01 values(chart01_seq.nextval,'area',100,'11월');
			insert into chart01 values(chart01_seq.nextval,'area',110,'12월');
			
			insert into chart01 values(chart01_seq.nextval,'bar',4215,'1월');
			insert into chart01 values(chart01_seq.nextval,'bar',5312,'2월');
			insert into chart01 values(chart01_seq.nextval,'bar',6251,'3월');
			insert into chart01 values(chart01_seq.nextval,'bar',7841,'4월');
			insert into chart01 values(chart01_seq.nextval,'bar',9821,'5월');
			insert into chart01 values(chart01_seq.nextval,'bar',14984,'6월');
			insert into chart01 values(chart01_seq.nextval,'bar',10984,'7월');
			insert into chart01 values(chart01_seq.nextval,'bar',11984,'8월');
			insert into chart01 values(chart01_seq.nextval,'bar',12984,'9월');
			insert into chart01 values(chart01_seq.nextval,'bar',11984,'10월');
			insert into chart01 values(chart01_seq.nextval,'bar',10984,'11월');
			insert into chart01 values(chart01_seq.nextval,'bar',9984,'12월');
			
			insert into chart01 values(chart01_seq.nextval,'pie',30,'직접방문');
			insert into chart01 values(chart01_seq.nextval,'pie',50,'추천방문');
			insert into chart01 values(chart01_seq.nextval,'pie',20,'SNS통한방문');
/*
  // ["January", "February", "March", "April", "May", "June"],
  // data: [4215, 5312, 6251, 7841, 9821, 14984],
 * */			
			
SELECT DATA, label 
FROM chart01
WHERE TYPE='pie';
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
