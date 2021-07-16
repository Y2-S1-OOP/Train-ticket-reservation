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
import com.timetable.service.TimetableDeleteDBUtil;
import com.timetable.service.TimetableUpdateDBUtil;

@WebServlet("/AdminTimetableDeleteServlet")
public class AdminTimetableDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = TimetableDeleteDBUtil.TimetableDelete(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminTimetable.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<TimeTable> timeDetails = TimetableUpdateDBUtil.getUpdateTimetable(id);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("AdminTimetable.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}
}
