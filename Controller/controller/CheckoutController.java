package controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.GioHangBean;
import bean.KhachHangBean;
import bean.SachBean;
import bo.GioHangBo;
import bo.KhachHangBo;
import bo.SachBo;

/**
 * Servlet implementation class CheckoutController
 */
@WebServlet("/checkout")
public class CheckoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutController() {
	super();
	// TODO Auto-generated constructor stub
    }

    /**
     * @throws UnsupportedEncodingException 
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, UnsupportedEncodingException {

	try {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");

	    HttpSession session = request.getSession();
	    KhachHangBean kh = (KhachHangBean) session.getAttribute("auth");
	    GioHangBo ghbo = (GioHangBo) session.getAttribute("giohang");

	    KhachHangBo khbean = new KhachHangBo();
	    SachBo sbo = new SachBo();

	    ArrayList<SachBean> ds = sbo.getSach();
	    int totalOrder = ghbo.ds.size();

	    String paid = request.getParameter("paid");
	    if (kh != null) {
		if (paid != null) {
		    for (int i = 0; i < totalOrder; i++) {
			Date orderDate = new Date();
			GioHangBean g = ghbo.ds.get(i);
			boolean paidStatus = khbean.datHang(kh.getMaKH(), orderDate, 1, g.getMaSach(), g.getSoLuong());
			if (paidStatus == true) {
			    request.setAttribute("paidSuccess", true);
			    RequestDispatcher rd = request.getRequestDispatcher("cart");
			    rd.forward(request, response);
			    return;
			}
		    }
		}

		request.setAttribute("paid", true);
		RequestDispatcher rd = request.getRequestDispatcher("payment");
		rd.forward(request, response);
		return;
	    }
	    request.setAttribute("isSigin", false);
	    RequestDispatcher rd = request.getRequestDispatcher("home");
	    rd.forward(request, response);
	} catch (SQLException e) {
	    System.out.println(e.getMessage());
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
