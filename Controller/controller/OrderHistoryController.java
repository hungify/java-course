package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.GioHangBean;
import bean.KhachHangBean;
import bo.KhachHangBo;

/**
 * Servlet implementation class OrderHistoryController
 */
@WebServlet("/order-history")
public class OrderHistoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderHistoryController() {
	super();
	// TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	try {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");

	    HttpSession session = request.getSession();
	    KhachHangBean kh = (KhachHangBean) session.getAttribute("auth");
	    if (kh != null) {
		KhachHangBo khbo = new KhachHangBo();

		ArrayList<GioHangBean> orderHistory = (ArrayList<GioHangBean>) khbo.layLichSuMuaHang(kh.getMaKH());

		request.setAttribute("orderHistory", (ArrayList<GioHangBean>) orderHistory);
		RequestDispatcher rd = request.getRequestDispatcher("views/order-history.jsp");
		rd.forward(request, response);
		return;
	    }
	    request.setAttribute("isSigin", false);
	    RequestDispatcher rd = request.getRequestDispatcher("home");
	    rd.forward(request, response);
	    return;
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
