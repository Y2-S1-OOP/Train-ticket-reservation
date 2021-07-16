package train.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Service.TicketBookingDBUtill;
import train.Model.TrainJourney;

@WebServlet("/TicketBookingServlet")
public class TicketBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fromStation = request.getParameter("FROM");
		String toStation = request.getParameter("TO");
		String frequency = request.getParameter("RunsOn");

		try {
			List<TrainJourney> jouDetails = TicketBookingDBUtill.validate(fromStation, toStation, frequency);
			request.setAttribute("jouDetails", jouDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("TrainSearchResult.jsp");
		dis.forward(request, response);

	}

}
