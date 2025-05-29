package jspexp.a10_database;

import jspexp.a10_database.dto.Member;

public class A05_MemberDao {
	
	public Member login(Member mem){
		Member dto = null;
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";
		
		return dto;
	}	

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
