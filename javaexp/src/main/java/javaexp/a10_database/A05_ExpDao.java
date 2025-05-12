package javaexp.a10_database;

import javaexp.a10_database.dto.Dept;

public class A05_ExpDao {

	public Dept getDeptByDeptno(int deptno){
		Dept dept = null;
		String sql = "SELECT * FROM DEPT WHERE DEPTNO = ?";
		
		
		return dept;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
