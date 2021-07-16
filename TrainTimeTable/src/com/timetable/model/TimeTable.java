package com.timetable.model;

public class TimeTable {
	private int id;
	private String tarinID;
	private String name;
	private String from;
	private String to;
	private String day;
	private String arvTime;
	private String depTime;
	
	public TimeTable(int id, String tarinID, String name, String from, String to, String day, String arvTime, String depTime) {
		this.id = id;
		this.tarinID = tarinID;
		this.name = name;
		this.from = from;
		this.to = to;
		this.day = day;
		this.arvTime = arvTime;
		this.depTime = depTime;
	}

	public int getId() {
		return id;
	}

	public String getTarinID() {
		return tarinID;
	}

	public String getName() {
		return name;
	}

	public String getFrom() {
		return from;
	}

	public String getTo() {
		return to;
	}

	public String getDay() {
		return day;
	}

	public String getArvTime() {
		return arvTime;
	}

	public String getDepTime() {
		return depTime;
	}
	

}
