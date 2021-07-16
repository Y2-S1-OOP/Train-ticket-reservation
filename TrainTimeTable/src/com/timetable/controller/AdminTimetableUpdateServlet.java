package com.timetable.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.timetable.model.TimeTable;
import com.timetable.service.TimetableUpdateDBUtil;

@WebServlet("/AdminTimetableUpdateServlet")
public class AdminTimetableUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id  = request.getParameter("id");
		String tarinid  = request.getParameter("tarinid");
		String name = request.getParameter("nameid");
		String from = request.getParameter("fromid");
		String to = request.getParameter("toid");
		String day = request.getParameter("dayid");
		String avtime = request.getParameter("avtimeid");
		String detime = request.getParameter("detimeid");
		
		boolean isTrue;
		
		isTrue = TimetableUpdateDBUtil.TimetableUpdate(id, tarinid, name, from, to, day, avtime, detime);
		
		if(isTrue == true) {
			
			List<TimeTable> timeDetails = TimetableUpdateDBUtil.getUpdateTimetable(id);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminTimetable.jsp");
			dis.forward(request, response);
		}
		else {
			List<TimeTable> timeDetails = TimetableUpdateDBUtil.getUpdateTimetable(id);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("AdminTimetable.jsp");
			dis.forward(request, response);
		}

	}
}
