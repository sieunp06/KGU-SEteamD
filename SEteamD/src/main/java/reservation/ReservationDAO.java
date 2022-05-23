package reservation;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapListHandler;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import user.User;
import utill.DatabaseUtill;

public class ReservationDAO {
	
    public static ReservationDAO it;

    public static ReservationDAO getInstance(){
        if(it==null)
            it = new ReservationDAO();
        return it;
    }
	// Date date = Date.valueOf("yyyy-mm-dd"); -> Date �ν��Ͻ��� �� �������� �����ؾ� ��
	
//		public Reservation selectReservation(User user, Date date, Time time) {
//			String sql = "SELECT * FROM reservation WHERE user_id = ? AND DATE(date) = ? AND TIME(time) = ?";
//			Reservation reserv = null;
//			try {
//				Connection conn = DatabaseUtill.getConnection();
//				PreparedStatement pstmt = conn.prepareStatement(sql);
//				ResultSet rs = null;
//				pstmt.setString(1, user.getId());
//				pstmt.setDate(2, date);
//				pstmt.setTime(3, time);
//				rs = pstmt.executeQuery();
//				if (rs.next()) {
//					int tableNum = rs.getInt(2);
//					int covers = rs.getInt(3);
//					reserv = new Reservation(user, tableNum, covers, date, time);
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			return reserv;
//		}

//		public int insertReservation(Reservation reserv) {
//			String sql = "INSERT INTO reservation VALUES (?, ?, ?, ?, ?, ?)";
//			try {
//				Connection conn = DatabaseUtill.getConnection();
//				PreparedStatement pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, reserv.getUser().getId());
//				pstmt.setInt(2, reserv.getTableNum());
//				pstmt.setInt(3, reserv.getCovers());
//				pstmt.setDate(4, reserv.getDate());
//				pstmt.setTime(5, reserv.getTime());
//				pstmt.setTime(6, reserv.getArrivalTime());
//				return pstmt.executeUpdate(); // ����: ���Ե� �������� ���� > 0
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			return -1;
//		}
		
		public String insertReservation(String data) {
			Connection conn = DatabaseUtill.getConnection();
			
			String []arr = data.split("-/-/-");
			String name = arr[0];
			String phoneN = arr[1];
			String date = arr[2];
			String cover = arr[3];
			String time = arr[4];
			String table_number = arr[5];
//			List<Map<String, Object>> user_id = "SeEun123";
			List<Map<String, Object>> user;
			String user_id;
			String arrivalTime = "00:00:00";
			System.out.println(name+phoneN+date+cover+time+"여기는 예약DAO임");			
			try {
				QueryRunner queryRunner = new QueryRunner();
				user = queryRunner.query(conn,"SELECT * FROM user WHERE name = ? AND phoneNumber = ?", new MapListHandler(), name, phoneN);
				user_id=user.get(0).get("id").toString();
				//System.out.println(user_id+" user_id 출력!");
	            queryRunner.update(conn, "INSERT INTO `reservation`(user_id, table_number, covers, date, time, arrivalTime) VALUES (?,?,?,?,?,?)", user_id, table_number, cover, date, time, arrivalTime);
	        }
	        catch (SQLException se){
	            se.printStackTrace();    
	        }
	        finally {
	            DbUtils.closeQuietly(conn);
	        }
			
	        return "예약완료";
		}

		public String delectReservation(String data) {
			Connection conn = DatabaseUtill.getConnection();
			String []arr = data.split("-/-/-");
			String name = arr[0];
			String phoneN = arr[1];
			String date = arr[2];
			String cover = arr[3];
			String time = arr[4];
			String table_number = arr[5];
			List<Map<String, Object>> user;
			String user_id;
			String arrivalTime = "00:00:00";
			
			try {
	            QueryRunner queryRunner = new QueryRunner();
	            user = queryRunner.query(conn,"SELECT * FROM user WHERE name = ? AND phoneNumber = ?", new MapListHandler(), name, phoneN);
				user_id=user.get(0).get("id").toString();
	            queryRunner.update(conn, "DELETE FROM `reservation` WHERE  user_id = ? AND table_number = ? AND covers = ? AND date = ? AND time = ? AND arrivalTime = ?", user_id, table_number, cover, date, time, arrivalTime);
	        }
	        catch (SQLException se){
	            se.printStackTrace();
	        }
	        finally {
	            DbUtils.closeQuietly(conn);
	        }
			
			return "예약취소 완료";
		}

		public String modifyReservation(String data) {
			Connection conn = DatabaseUtill.getConnection();
			
			String []arr = data.split("-/-/-");
			String pr_name = arr[0];
			String pr_phoneN = arr[1];
			String pr_date = arr[2];
			
			String ppr_cover = arr[3];
			String []appr_cover = ppr_cover.split("명");
			String pr_cover = appr_cover[0];
			
			String pr_time = arr[4];
			
			String ppr_table_number = arr[5];
			String []appr_table_number = ppr_table_number.split("번");
			String pr_table_number = appr_table_number[0];
			

			String name = arr[6];
			String phoneN = arr[7];
			String date = arr[8];
			String cover = arr[9];
			String time = arr[10];
			String table_number = arr[11];
			List<Map<String, Object>> user;
			String user_id;
			String arrivalTime = "00:00:00";
			
			try {
	            QueryRunner queryRunner = new QueryRunner();
	            user = queryRunner.query(conn,"SELECT * FROM user WHERE name = ? AND phoneNumber = ?", new MapListHandler(), pr_name, pr_phoneN);
				user_id=user.get(0).get("id").toString();
	            queryRunner.update(conn, "DELETE FROM `reservation` WHERE  user_id = ? AND table_number = ? AND covers = ? AND date = ? AND time = ? AND arrivalTime = ?", user_id, pr_table_number, pr_cover, pr_date, pr_time, arrivalTime);
	            queryRunner.update(conn, "INSERT INTO `reservation`(user_id, table_number, covers, date, time, arrivalTime) VALUES (?,?,?,?,?,?)", user_id, table_number, cover, date, time, arrivalTime);
	        }
	        catch (SQLException se){
	            se.printStackTrace();
	        }
	        finally {
	            DbUtils.closeQuietly(conn);
	        }
			
			
			return "예약수정 완료";
		}

		public String getReservation(String data) {
			Connection conn = DatabaseUtill.getConnection();
			
//			String []arr = data.split("-/-/-");
//			String user_id = arr[0];
//			String user_pw = arr[1];
			String user_id = data;
			String user_name = null;
			String user_phoneN = null;
			
			List<Map<String, Object>> user;
			
			try {
	            QueryRunner queryRunner = new QueryRunner();
	            user = queryRunner.query(conn,"SELECT * FROM user WHERE id = ?", new MapListHandler(), user_id);
	            user_name=user.get(0).get("name").toString();
	            user_phoneN=user.get(0).get("phoneNumber").toString();
	        }
	        catch (SQLException se){
	            se.printStackTrace();
	        }
	        finally {
	            DbUtils.closeQuietly(conn);
	        }
			
			String data1 = user_name + "-/-/-" + user_phoneN;
			
			return data1;
		}

		public String checkDuplication(String data) {
			Connection conn = DatabaseUtill.getConnection();
			
			String []arr = data.split("-/-/-");
			String date = arr[0];
			String time = arr[1];
			String table_number;
			String table1 = "0";
			String table2 = "0";
			String table3 = "0";
			String table4 = "0";
			String table5 = "0";
			String table6 = "0";
			String table7 = "0";
			String table8 = "0";
			String table9 = "0";
			String table10 = "0";
			String data2 = null;
			
			
			List<Map<String, Object>> tableN;
			
			try {
	            QueryRunner queryRunner = new QueryRunner();
	            tableN = queryRunner.query(conn,"SELECT * FROM reservation WHERE date = ? AND time = ?", new MapListHandler(), date, time);
	            for(int i = 0; i < tableN.size(); i++) {
	            	table_number = tableN.get(i).get("table_number").toString();
	            	if(table_number.equals("1")) {
	            		table1 = "1";
	            	}
	            	else if(table_number.equals("2")) {
	            		table2 = "2";
	            	}
	            	else if(table_number.equals("3")) {
	            		table3 = "3";
	            	}
	            	else if(table_number.equals("4")) {
	            		table4 = "4";
	            	}
	            	else if(table_number.equals("5")) {
	            		table5 = "5";
	            	}
	            	else if(table_number.equals("6")) {
	            		table6 = "6";
	            	}
	            	else if(table_number.equals("7")) {
	            		table7 = "7";
	            	}
	            	else if(table_number.equals("8")) {
	            		table8 = "8";
	            	}
	            	else if(table_number.equals("9")) {
	            		table9 = "9";
	            	}
	            	else {
	            		table10 = "10";
	            	}
	            	data2 = table1 + "-/-/-" + table2 + "-/-/-" + table3 + "-/-/-" + table4 + "-/-/-" + table5 + "-/-/-" + table6 + "-/-/-" + table7 + "-/-/-" 
	            	+ table8 + "-/-/-" + table9 + "-/-/-" + table10;
	        
	            }
	        }
	        catch (SQLException se){
	            se.printStackTrace();
	        }
	        finally {
	            DbUtils.closeQuietly(conn);
	        }
			
			return data2;
		}
		
//		public String getReservation(String user_id){
//	        List<Map<String,Object>> listOfMaps = null;
//	        Connection conn = DatabaseUtill.getConnection();
//	        
//	        try {
//	            QueryRunner queryRunner = new QueryRunner();
//	            listOfMaps = queryRunner.query(conn, "SELECT * FROM `reservation`  WHERE user_id = ?", new MapListHandler(), user_id);
//	        }
//	        catch (SQLException se){
//	            se.printStackTrace();
//	        }
//	        finally {
//	            DbUtils.closeQuietly(conn);
//	        }
//	        Gson gson = new Gson();
//	        ArrayList<ReservationDAO> selectedList = gson.fromJson(gson.toJson(listOfMaps), new TypeToken<List<ReservationDAO>>(){
//	        }.getType());
//	        
//	        for(int i = 0; i < selectedList.size(); i++) {
//	        	System.out.println(selectedList.table_number[i])
//	        }
//	        
//	        return "";
//	    }
		
		
//		public int deleteReservation(User user, Date date, Time time) {
//			String sql = "DELETE FROM reservation WHERE user_id = ? AND DATE(date) = ? AND TIME(time) = ?";
//			try {
//				Connection conn = DatabaseUtill.getConnection();
//				PreparedStatement pstmt = conn.prepareStatement(sql);
//				pstmt.setString(1, user.getId());
//				pstmt.setDate(2, date);
//				pstmt.setTime(3, time);
//				return pstmt.executeUpdate(); // ����: ���Ե� �������� ���� = 0
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			return -1;
//		}


//		public void updateReservation(Reservation reserv) {
//			deleteReservation(reserv.getUser(), reserv.getDate(), reserv.getTime());
//			insertReservation(reserv);
//		}
}


