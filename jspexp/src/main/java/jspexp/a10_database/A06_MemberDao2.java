package jspexp.a10_database;

import jspexp.a10_database.dto.MemberDto;

public class A06_MemberDao2 {
	
	public 	MemberDto login(MemberDto mem){
		MemberDto dto = null;
		String sql = "SELECT * FROM MEMBER01 WHERE ID=? AND PWD = ?";

			
		return dto;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
