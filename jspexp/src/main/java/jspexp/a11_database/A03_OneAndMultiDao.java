package jspexp.a11_database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import jspexp.a10_database.DB;
import jspexp.a11_database.dto.DessertOrder;

public class A03_OneAndMultiDao {

	public DessertOrder	getDessertOrder( int orderId){
		DessertOrder do1 = null;
		String sql = "SELECT * FROM DESSERT_ORDER WHERE ORDER_ID = ?";
		try( Connection con = DB.con();
			 PreparedStatement pstmt = con.prepareStatement(sql);
			){
			pstmt.setInt(1, orderId);  // 매개변수의 type을 확인해서 변수와 함께 mapping ? 
			try( ResultSet rs = pstmt.executeQuery() ){
				if(rs.next()) { // 다일행.. 
					// DessertOrder(int orderId, String customerName, 
					//     String dessertName, int quantity, Date orderDate)
					do1 = new DessertOrder(
							rs.getInt("ORDER_ID"),
							rs.getString("CUSTOMER_NAME"),
							rs.getString("DESSERT_NAME"),
							rs.getInt("QUANTITY"),
							rs.getDate("ORDER_DATE")
							);
				}
			}
			System.out.println("데이터 로딩 완료:");
		}catch(SQLException e) {
			System.out.println("DB처리 에러:"+e.getMessage());
		}catch(Exception e) {
			System.out.println("기타 에러:"+e.getMessage());
		}			
				
		
		
		
		return do1;
	}		
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
