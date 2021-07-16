package train.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Service.UpdateReservationDBUtil;

@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//get Reservation details from FORM
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("resID");
		String name = request.getParameter("name");
		String FromStation = request.getParameter("from");
		String ToStation = request.getParameter("to");
		String PaymentID = request.getParameter("paymentID");
		String BookedDate = request.getParameter("date");
		
		
		boolean Updated;
		//call method for update details
		Updated = UpdateReservationDBUtil.updateReservation(id, name, FromStation, ToStation, PaymentID, BookedDate);
		
		if(Updated == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("SuccessfullyUpdated.jsp");
			dis.forward(request, response);
	    }
		else {
			RequestDispatcher dis = request.getRequestDispatcher("UnsuccessRequest.jsp");
			dis.forward(request, response);

		}
	}
}