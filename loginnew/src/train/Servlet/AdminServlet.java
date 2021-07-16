package train.Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import train.Service.AdminDBUtil;
import train.Model.Admin;

public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("uname");
		String password = request.getParameter("password");

		try {
			List<Admin> adDetails = AdminDBUtil.validate(username, password);
			request.setAttribute("adDetails", adDetails);
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dis = request.getRequestDispatcher("admin.jsp");
		dis.forward(request, response);

	}

}
