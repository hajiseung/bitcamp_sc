package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAO {
	private static Connection conn = null;

	public void insert(String mId, String mName, String mPw) throws SQLException {
		DriverLoad();
		PreparedStatement pstmt = null;
		try {
			String sql = "insert Into Webmember values(?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, mName);
			pstmt.setString(3, mPw);
		} catch (SQLException se) {
		}
	}

	public void select() throws SQLException {
		DriverLoad();
	}

	public void delect() throws SQLException {
		DriverLoad();
	}

	private static void DriverLoad() throws SQLException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String jdbcDriver = "jdbc:apache:commons:dbcp:open";

			conn = DriverManager.getConnection(jdbcDriver);
			System.out.println("DB연결 성공!!!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
