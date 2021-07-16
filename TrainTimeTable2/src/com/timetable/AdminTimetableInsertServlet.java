package com.timetable;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminTimetableInsertServlet")
public class AdminTimetableInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String trainID = request.getParameter("tranid");
		String name = request.getParameter("name");
		String fromT = request.getParameter("from");
		String toT = request.getParameter("to");
		String dayT = request.getParameter("day");
		String arvTime = request.getParameter("avtime");
		String depTime = request.getParameter("detime");
		
		boolean isTrue;
				
		isTrue = TimeTableDBUtil.TimetableInsert(trainID,  name,  fromT,  toT,  dayT,  arvTime,  depTime);
				
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("AdminTimetable.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
