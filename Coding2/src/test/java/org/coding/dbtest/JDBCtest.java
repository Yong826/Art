package org.coding.dbtest;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCtest {
	// Driver 로드 정보
	String driver = "com.mysql.jdbc.Driver";
	// url 정보
	String url = "jdbc:mysql://localhost:3306/project_cc?serverTimezone=Asia/Seoul";
	// userID 정보
	String user = "root";
	// password 정보
	String pw = "1234";
	
	// JDBC 연결 테스트 위한 메소드
	@Test
	public void testConnection() throws Exception {
		Class.forName(driver);  // 메소드에다가 예외처리해주기
		try(Connection con = DriverManager.getConnection(url,user,pw)){
			System.out.println("JDBC연결 성공");
		}catch(Exception e){
			//System.out.println("DB연결 실패");
			e.printStackTrace();
		}
	}
	
}
