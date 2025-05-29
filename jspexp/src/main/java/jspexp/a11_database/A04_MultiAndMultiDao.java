package jspexp.a11_database;

import java.util.ArrayList;
import java.util.List;

import jspexp.a11_database.dto.SuperheroCase;

public class A04_MultiAndMultiDao {
	public List<SuperheroCase> getSuperheroCases(SuperheroCase sch){
		List<SuperheroCase> slist = new ArrayList<SuperheroCase>();
		String sql = "SELECT * FROM SuperheroCases "
				+ "WHERE SUPERHERO_NAME LIKE ? "
				+ "AND CASE_STATUS LIKE ?";
		
		return slist;
	}
}
