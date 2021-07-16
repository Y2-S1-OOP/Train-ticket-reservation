package com.timetable.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.timetable.model.TimeTable;

	public class TimetableUpdateDBUtil {
		
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
		
		public static boolean TimetableUpdate(String id, String trainID, String name, String fromT, String toT, String dayT, String arvTime, String depTime) {
		
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "update search set trainID='"+trainID+"',name='"+name+"',fromT='"+fromT+"',toT='"+toT+"',dayT='"+dayT+"',arvTime='"+arvTime+"',depTime='"+depTime+"' where id='"+id+"'";
				int r = stmt.executeUpdate(sql);
				
				
				if(r > 0) {
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

}
	
