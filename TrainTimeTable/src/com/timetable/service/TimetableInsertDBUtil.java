package com.timetable.service;

import java.sql.Connection;
import java.sql.Statement;

public class TimetableInsertDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
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

}
