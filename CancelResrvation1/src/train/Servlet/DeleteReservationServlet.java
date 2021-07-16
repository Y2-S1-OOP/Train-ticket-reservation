package train.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Service.DeleteReservationDBUtil;

@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//get ReservationID from FORM
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("resID");
		
		boolean Deleted;
		//call delete reservation method and store return value
		Deleted = DeleteReservationDBUtil.DeleteReservation(id);
		
        if(Deleted == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("SuccessfullyDeleted.jsp");
			dis.forward(request, response);
			
	    }
		else {
			RequestDispatcher dis = request.getRequestDispatcher("UnsuccessRequest.jsp");
			dis.forward(request, response);

		}
		
	}

}
