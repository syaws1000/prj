package javaexp.a10_database;

import java.util.ArrayList;
import java.util.List;

import javaexp.a10_database.dto.Dept;

public class A06_ExpDao {

	public List<Dept> getDeptList(Dept sch){
		List<Dept> dlist = new ArrayList<Dept>();
		String sql = "SELECT * FROM DEPT WHERE DNAME LIKE ? AND LOC LIKE ?";
		return dlist;
	}	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
