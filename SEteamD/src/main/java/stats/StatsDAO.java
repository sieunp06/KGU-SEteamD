package stats;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import table.Table;
import user.Regular;

public class StatsDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public StatsDAO() {
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

	public double getAvgofCovers() { // 평균 인원수
		String sql = "SELECT AVG(covers) `avg of covers` FROM reservation";
		Double avg = 0.0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				avg = rs.getDouble(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return avg;
	}

	public ArrayList<Table> getTablePreference() { // 테이블 선호도
		String sql = "SELECT `table`.number, COUNT(table_number)\r\n" + "FROM reservation LEFT JOIN `table`\r\n"
				+ "ON `table`.number = reservation.table_number\r\n" + "GROUP BY `table`.number\r\n"
				+ "ORDER BY COUNT(table_number) DESC;\r\n";
		ArrayList<Table> tableList = new ArrayList<Table>();
		int index;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				index = 1;
				Table table = new Table();
				table.setNumber(rs.getInt(index++));
				table.setVisits(rs.getInt(index++));
				tableList.add(table);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return tableList;
	}
	
	public int[] getMonthlyPreference() {
		String sql = "SELECT MONTH(date), COUNT(date)\r\n" + "FROM reservation\r\n" + "GROUP BY MONTH(date)\r\n"
				+ "HAVING COUNT(date) > 0\r\n" + "ORDER BY MONTH(date) ASC";
		int[] month = new int[12]; // index = 월, value = 방문 횟수
		int index = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				month[index++] = rs.getInt(2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return month;
	}
	
	public String[][] getHourlyPreference() {
		String sql = "SELECT TIME(time), COUNT(time)\r\n" + "FROM reservation\r\n" + "GROUP BY TIME(time)\r\n"
				+ "HAVING COUNT(time) > 0\r\n" + "ORDER BY TIME(time) ASC";
		String[][] hour = new String[19][2]; // [i][0] = 예약시간, [i][1] = 방문 횟수
		int index = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				hour[index][0] = rs.getString(1);
				hour[index++][1] = String.valueOf(rs.getInt(2));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return hour;
	}
	
	public ArrayList<Regular> getRegular() { // 단골 리스트(3회 이상 방문한 손님)
		String sql = "SELECT user_id, user.name, user.phonenumber, COUNT(date) AS `Number of visits`\r\n"
				+ "FROM reservation RIGHT JOIN user\r\n" + "ON reservation.user_id = user.id\r\n"
				+ "GROUP BY user_id\r\n" + "HAVING count(date) >= 3\r\n" + "ORDER BY count(date) DESC;";
		ArrayList<Regular> regList = new ArrayList<Regular>();
		int index;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				index = 1;
				Regular reg = new Regular();
				reg.setId(rs.getString(index++));
				reg.setName(rs.getString(index++));
				reg.setPhoneNumber(rs.getString(index++));
				reg.setNumofVisits(rs.getInt(index++));
				regList.add(reg);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return regList;
	}
}
