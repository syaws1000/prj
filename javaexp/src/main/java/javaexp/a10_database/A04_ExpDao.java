package javaexp.a10_database;

public class A04_ExpDao {

	public int getCountEmp(int deptno){
		int count = 0;
		String sql = "SELECT COUNT(*) CNT FROM EMP WHERE DEPTNO=?";
		
		return count;
	} 	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
