package com.timetable.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.timetable.model.TimeTable;

public class SearchTimetableDBUtil {
	
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

}
