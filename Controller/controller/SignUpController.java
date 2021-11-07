package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.KhachHangBean;
import bo.KhachHangBo;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class SignUpController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
	super();
	// TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	String fullname = request.getParameter("fullname");
	String address = request.getParameter("address");
	String username = request.getParameter("username");
	String email = request.getParameter("email");
	String phoneNumber = request.getParameter("phone_number");
	String password = request.getParameter("password");

	try {

	    if (fullname != null && address != null && username != null && email != null && phoneNumber != null
		    && password != null) {

		String usernameLowerCase = username.toLowerCase();
		KhachHangBo khbo2 = new KhachHangBo();
		boolean isSuccess = khbo2.kiemTraDK(usernameLowerCase, fullname, email, password, address, phoneNumber);

		if (isSuccess == true) {
		    request.setAttribute("username", username);
		    request.setAttribute("password", password);

		    RequestDispatcher rd = request.getRequestDispatcher("signin");
		    rd.forward(request, response);
		    return;
		}
		KhachHangBean khbean = new KhachHangBean(fullname, address, username, email, phoneNumber, password);
		request.setAttribute("exsitsCustomer", khbean);
		RequestDispatcher rd = request.getRequestDispatcher("views/signup.jsp");
		rd.forward(request, response);
		return;
	    }
	    RequestDispatcher rd = request.getRequestDispatcher("views/signup.jsp");
	    rd.forward(request, response);

	} catch (SQLException e) {
	    e.printStackTrace();
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
    }

}
