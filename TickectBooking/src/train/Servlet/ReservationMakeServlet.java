package train.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Service.ReservationMakeDBUtil;
import train.Model.ReservationDetails;

@WebServlet("/ReservationMakeServlet")
public class ReservationMakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("Email");
		String trainID = request.getParameter("trainid");
		String fromStation = request.getParameter("FSTATION");
		String toStation = request.getParameter("TSTATION");
		String trainClass = request.getParameter("CLASS");
		String reservationDate = request.getParameter("DATE");

		boolean isTrue;

		isTrue = ReservationMakeDBUtil.MakeReservation(firstName, lastName, email, trainID, fromStation, toStation,
				trainClass, reservationDate);

		if (isTrue == true) {

			List<ReservationDetails> ResDetails = ReservationMakeDBUtil.getResDetails(firstName, email);
			request.setAttribute("ResDetails", ResDetails);

			RequestDispatcher dis = request.getRequestDispatcher("ReservationCart.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ReservationMake.jsp");
			dis2.forward(request, response);
		}

	}

}
