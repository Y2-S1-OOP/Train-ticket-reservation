package com.timetable;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String from  = request.getParameter("fromid");
		String to = request.getParameter("toid");
		String day = request.getParameter("dayid");
		boolean isTrue;
		
		isTrue = TimeTableDBUtil.validate(from, to, day);
		
		if(isTrue == true) {
			
			List<TimeTable> timeDetails = TimeTableDBUtil.getSearchTimetable(from, to, day);
			request.setAttribute("timeDetails", timeDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("SearchTable.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("Search.jsp");
			dis.forward(request, response);
		}
	}

}
