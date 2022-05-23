package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public UserDAO() {
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

	public int adminCheck(String id) {
		String SQL = "SELECT admin FROM USER WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) 
				if (rs.getInt(1) == 1) 
					return 1; // 濡쒓렇�씤 �꽦怨�
			return -1; // �븘�씠�뵒 �뾾�쓬
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // �뜲�씠�꽣踰좎씠�뒪 �삤瑜�
	}

	public int insertUser(User user) {
		String sql = "INSERT INTO user VALUES (?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getPhoneNumber());
			return pstmt.executeUpdate(); // �젙�긽: �궫�엯�맂 �뜲�씠�꽣�쓽 媛쒖닔 > 0
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	public int login(String id, String pw) {

		String SQL = "SELECT pw FROM USER WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(pw)) {
					return 1; // 濡쒓렇�씤 �꽦怨�
				} else {
					return 0; // 鍮꾨�踰덊샇 遺덉씪移�
				}
			}
			return -1; // �븘�씠�뵒 �뾾�쓬
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // �뜲�씠�꽣踰좎씠�뒪 �삤瑜�
	}

	//	private ResultSet rs = null;
//
//	public User selectUser(String id) {
//		String sql = "SELECT * FROM user WHERE id = ?";
//		User user = null;
//		try {
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//			rs = pstmt.executeQuery();
//			if (rs.next()) {
//				String ID = rs.getString(1);
//				String PW = rs.getString(2);
//				String name = rs.getString(3);
//				String phoneNumber = rs.getString(4);
//				user = new User(ID, PW, name, phoneNumber);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return user;
//	}
//

//
//	public int deleteUser(String id) {
//		String sql = "DELETE FROM user WHERE id = ?";
//		try {
//			Connection conn = DatabaseUtill.getConnection();
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//			return pstmt.executeUpdate(); // �젙�긽: �궫�엯�맂 �뜲�씠�꽣�쓽 媛쒖닔 = 0
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return -1;
//	}
//
//	public void updateUser(User user) {
//		deleteUser(user.getId());
//		insertUser(user);
//	}
}

