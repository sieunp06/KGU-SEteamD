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
			Class.forName("com.mysql.cj.dbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	private ResultSet rs = null;
//
//	public User selectUser(String id) {
//		String sql = "SELECT * FROM user WHERE id = ?";
//		User user = null;
//		try {
//			Connection conn = DatabaseUtill.getConnection();
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
	public int insertUser(User user) {
		String sql = "INSERT INTO user VALUES (?,?,?,?)";
		try {
//			Connection conn = DatabaseUtill.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getPhoneNumber());
			return pstmt.executeUpdate(); // ����: ���Ե� �������� ���� > 0
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
//
//	public int deleteUser(String id) {
//		String sql = "DELETE FROM user WHERE id = ?";
//		try {
//			Connection conn = DatabaseUtill.getConnection();
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, id);
//			return pstmt.executeUpdate(); // ����: ���Ե� �������� ���� = 0
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

	public int login(String id, String pw) {

		String SQL = "SELECT pw FROM USER WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(pw)) {
					return 1; // �α��� ����
				} else {
					return 0; // ��й�ȣ ����ġ
				}
			}
			return -1; // ���̵� ����
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // �����ͺ��̽� ����
	}

//	public int join(User user) {
//		String SQL = "INSERT INTO USER VALUES (?,?,?,?)";
//
//		try {
//			pstmt = conn.prepareStatement(SQL);
//			pstmt.setString(1, user.getId());
//			pstmt.setString(2, user.getPw());
//			pstmt.setString(3, user.getName());
//			pstmt.setString(4, user.getPhoneNumber());
//			return pstmt.executeUpdate();
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return -1; // �����ͺ��̽� ����
//	}

}
