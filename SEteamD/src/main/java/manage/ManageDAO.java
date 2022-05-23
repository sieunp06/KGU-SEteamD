package manage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ManageDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public ManageDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/booksys";
			String dbID = "root";
			String dbPW = "software!";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	public String userName (String id) {
		
		String SQL = "SELECT name FROM USER WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "오류";
	}
	
	public String userPhoneNumber (String id) {
		
		String SQL = "SELECT phoneNumber FROM USER WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getString(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "오류";
	}
}
