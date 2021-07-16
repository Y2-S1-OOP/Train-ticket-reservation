package train.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import train.Service.CustomerDBUtil;
import train.Model.Customer;

public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String dateofbirth = request.getParameter("dateofbirth");
		String phone = request.getParameter("phone");
		String zippostalcode = request.getParameter("zippostalcode");
		String gender = request.getParameter("gender");
		String password = request.getParameter("psw");

		boolean isTrue;

		isTrue = CustomerDBUtil.updatecustomer(id, name, username, email, address, dateofbirth, phone, zippostalcode,
				gender, password);

		if (isTrue == true) {

			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		} else {

			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);

			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
