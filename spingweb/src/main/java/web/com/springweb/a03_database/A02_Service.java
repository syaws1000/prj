package web.com.springweb.a03_database;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a03_database.vo.Emp;
import web.com.springweb.a03_database.vo.GameCharacter;
import web.com.springweb.a03_database.vo.Movie;
import web.com.springweb.vo.Emp09;

@Service
public class A02_Service {

	// 생성된 컨테이너에 있는 자동객체 할당..
	@Autowired(required = false)
	private A03_Dao dao;
	
	public void test() {
		//System.out.println("첫번째 - 입력값 deptno, 출력값 사원건수");
		//System.out.println("사원건수:"+ getCountByDeptno(10) );
		//System.out.println("부서(10)별 최대급여:"+getMxSalByDeptno(10));		
		//System.out.println("관리자(7698)인 사원의 평균급여:"+getAvSalByMgr(7698));
		//System.out.println("급여 1000~3000사이 사원명의 갯수:"+getEnamesByStartEnd(1000,3000));
		/*
		for(String ename: getEnamesByStartEnd(1000,3000)) {
			System.out.println(ename);
		} */
		//System.out.println("사원 1500~1700 사이 급여:"+getSals(1500,1700));
		//System.out.println("직책 SALESMAN 또는 부서번호 30의 입사일:"+getHiredate("SALESMAN", 30));
//		Emp e = getEmp(1369);
//		System.out.println("사원번호 1369의 객체 정보");
//		System.out.println(e.getEmpno());
//		System.out.println(e.getEname());
//		System.out.println(e.getJob());
//		Movie m = getMovie(2);
//		System.out.println("영화 아이디 2의 정보");
//		System.out.println(m.getMovieId());
//		System.out.println(m.getMovieTitle());
//		System.out.println(m.getGenre());
//		System.out.println(m.getReleaseYear());
//		System.out.println(m.getRating());
//		System.out.println("10번부서의 사원정보 갯수:"+getdeptno(10).size());
//		for(Emp09 e:getdeptno(10)) {
//			System.out.print(e.getEname()+"\t");
//			System.out.print(e.getJob()+"\t");
//			System.out.print(e.getSal()+"\n");
//		}
		System.out.println("캐릭터 전체 검색:"+getGameCharacters("", "").size());
		for(GameCharacter gc : getGameCharacters("","")) {
			System.out.print(gc.getName()+"\t");
			System.out.print(gc.getGame()+"\n");
		}
	}
	public List<GameCharacter> getGameCharacters(String name, String game){
		return dao.getGameCharacters("%"+name+"%", "%"+game+"%");
	}
	
	public List<Emp09> getdeptno(int deptno){
		return dao.getdeptno(deptno);
	}
	
	public Movie getMovie(int movieId) {
		return dao.getMovie(movieId);
	}
	public Emp getEmp(int empno) {
		return dao.getEmp(empno);
	}
	public List<Date> getHiredate(String job, int deptno){
		return dao.getHiredate(job,deptno);
	}
	public List<Double> getSals(@Param("start")int start, @Param("end")int end){
		return dao.getSals(start, end);
	}
	public List<String> getEnamesByStartEnd(int start,int end){
		return dao.getEnamesByStartEnd(start, end);
	}
	
	
	public double getMxSalByDeptno(int deptno) {
		return dao.getMxSalByDeptno(deptno);
	}
	public int getCountByDeptno(int deptno) {
		return dao.getCountByDeptno(deptno);
	}
	public double getAvSalByMgr(int mgr) {
		return dao.getAvSalByMgr(mgr);
	}
	
}
