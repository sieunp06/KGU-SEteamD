package manage;

import java.sql.Time;
import java.util.Date;

public class Manage {
	private String user_id;
	private int table_number;
	private int covers;
	private Date date;
	private Time time;
	private Time arrivalTime;
	
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public int getTable_number() {
		return table_number;
	}
	
	public void setTable_number(int table_number) {
		this.table_number = table_number;
	}
	
	public int getCovers() {
		return covers;
	}
	
	public void setCovers(int covers) {
		this.covers = covers;
	}
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date = date;
	}
	
	public Time getTime() {
		return time;
	}
	
	public void setTime(Time time) {
		this.time = time;
	}
	
	public Time getArrivalTime() {
		return arrivalTime;
	}
	
	public void setArrivalTime(Time arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	
}
