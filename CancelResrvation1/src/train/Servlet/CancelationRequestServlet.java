package train.Servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import train.Service.CancelationRequestDBUtil;


@WebServlet("/CancelationRequestServlet")
public class CancelationRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    //get Cancellation details from FORM
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//Assign values separately to variables
		String resID = request.getParameter("ResID");
		String fName = request.getParameter("firstname");
		String lName = request.getParameter("lastname");
		String email = request.getParameter("youremail");
		String phone = request.getParameter("yourphoneno");
		String msg = request.getParameter("yourmessage");
		
		//call DBUtil class and store return value
		boolean isTrue = CancelationRequestDBUtil.InsertCancelationRequest(resID,fName, lName, email, phone, msg);
		
		if(isTrue==true) {
			//If request details successfully insert to table , run this
			RequestDispatcher dis = request.getRequestDispatcher("SuccessRequest.jsp");
			dis.forward(request, response);
			
		} else {
			//If request details not successfully insert to table , run this
			RequestDispatcher dis2 = request.getRequestDispatcher("UnsuccessRequest.jsp");
			dis2.forward(request, response);
		}
		
	}


}
