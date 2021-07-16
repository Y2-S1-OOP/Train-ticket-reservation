package com.timetable.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.timetable.model.TimeTable;


public class TimeTableDBUtil {
	
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

	
	

	
	
	
	
	
	

	
	
}
