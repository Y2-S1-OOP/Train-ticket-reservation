package train.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Service.CheckReservationUtil;
import train.Model.Reservation;

@WebServlet("/CheckReservationServlet")
public class CheckReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//get ReservationID and Name from FORM
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Assign values separately to variables
		String resID = request.getParameter("uid");
		String name = request.getParameter("name");
		
		try {
		//call validate method store return values	
		List<Reservation> resDetails =  CheckReservationUtil.validate(resID, name);
		request.setAttribute("resDetails", resDetails);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("ReservationDetails.jsp");
		dis.forward(request, response);
	}

}
