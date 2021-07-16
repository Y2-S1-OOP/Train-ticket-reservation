package com.timetable;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class TimeTableDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<TimeTable> getTimetable(){
		
		ArrayList<TimeTable> td= new ArrayList<>();
		
		try {
			while(rs.next()) {
				int id = rs.getInt(1);
				String tarinID = rs.getString(2);
				String name = rs.getString(3);
				String fromT = rs.getString(4);
				String toT = rs.getString(5);
				String dayT = rs.getString(6);
				String arvTime = rs.getString(7);
				String depTime = rs.getString(8);
			
				TimeTable c = new TimeTable(id,tarinID,name,fromT,toT,dayT,arvTime,depTime);
				td.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return td;
		
		
	}

	public static boolean validate(String from, String to, String day){
		
		
		//validate
		
		try {
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from search where fromT ='"+from+"' and toT='"+to+"' and dayT='"+day+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<TimeTable> getSearchTimetable(String from, String to, String day) {
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from search where fromT ='"+from+"' and toT='"+to+"' and dayT='"+day+"'";
			rs = stmt.executeQuery(sql);
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		
		return getTimetable();	
	
	}
	

	public static boolean TimetableInsert(String trainID, String name, String fromT, String toT, String dayT, String arvTime, String depTime) {		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Insert into search values (0,'"+trainID+"','"+name+"','"+fromT+"','"+toT+"','"+dayT+"','"+arvTime+"','"+depTime+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	public static boolean TimetableUpdate(String id, String trainID, String name, String fromT, String toT, String dayT, String arvTime, String depTime) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update search set trainID='"+trainID+"',name='"+name+"',fromT='"+fromT+"',toT='"+toT+"',dayT='"+dayT+"',arvTime='"+arvTime+"',depTime='"+depTime+"' where id='"+id+"'";
			int rs = stmt.executeUpdate(sql);
			
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}

	public static List<TimeTable> getUpdateTimetable(String ID) {
		
		int convertedID = Integer.parseInt(ID);
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from search where id='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		return getTimetable();	
	
	}
	
	public static boolean TimetableDelete(String id) {
    	
    	int convertedID = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from search where id='"+convertedID+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

	
	
}
