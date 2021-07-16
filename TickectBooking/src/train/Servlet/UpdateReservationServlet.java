package train.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Model.ReservationDetails;
import train.Service.UpdateReservationDBUtil;

@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String reservationID = request.getParameter("ResID");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String Email = request.getParameter("Email");
		String trainID = request.getParameter("trainid");
		String FSTATION = request.getParameter("FSTATION");
		String TSTATION = request.getParameter("TSTATION");
		String CLASS = request.getParameter("CLASS");
		String DATE = request.getParameter("DATE");

		boolean isTrue;

		isTrue = UpdateReservationDBUtil.UpdateReservation(reservationID, firstname, lastname, Email, trainID, FSTATION,
				TSTATION, CLASS, DATE);

		if (isTrue == true) {

			List<ReservationDetails> ResDetails = UpdateReservationDBUtil.getResDetails(firstname, Email);
			request.setAttribute("ResDetails", ResDetails);

			RequestDispatcher dis = request.getRequestDispatcher("ReservationCart.jsp");
			dis.forward(request, response);
		} else {

			List<ReservationDetails> ResDetails = UpdateReservationDBUtil.getResDetails(firstname, Email);
			request.setAttribute("ResDetails", ResDetails);

			RequestDispatcher dis = request.getRequestDispatcher("UpdateReservation.jsp");
			dis.forward(request, response);
		}

	}

}
