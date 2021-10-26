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

import bean.LoaiBean;
import bean.SachBean;
import bo.GioHangBo;
import bo.KhachHangBo;
import bo.LoaiBo;
import bo.SachBo;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/cart")
public class CartController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
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
	
	HttpSession session = request.getSession();
	KhachHangBo khbo = new KhachHangBo();
	
	String order = request.getParameter("order");

	
	String maSach = request.getParameter("ms");
	String tenSach = request.getParameter("ts");
	String tacGia = request.getParameter("tg");
	String gia = request.getParameter("gia");
	String anh = request.getParameter("anh");
	Long giaBan = 0L;

	//Xoá
	String msxoa = request.getParameter("delms");
	
	//Cập nhật
	String upsl = request.getParameter("upsl");
	String upms = request.getParameter("upms");
	

	if (maSach != null && giaBan != null && anh != null && gia != null) {
	    giaBan = Long.parseLong(gia);
	    GioHangBo ghbo = new GioHangBo();

	    if (session.getAttribute("giohang") == null) {
		session.setAttribute("giohang", ghbo);
	    }

	    ghbo = (GioHangBo) session.getAttribute("giohang");

	    ghbo.Them(maSach, tenSach, tacGia, anh, giaBan, 1);

	    session.setAttribute("giohang", ghbo);
	}

	else if (msxoa != null) {
	    GioHangBo ghbo = new GioHangBo();
	    ghbo = (GioHangBo) session.getAttribute("giohang");
	    ghbo.Xoa(msxoa);
	    if(ghbo.ds.size() == 0)
	    {
		session.setAttribute("giohang", null);
	    } else {		
		session.setAttribute("giohang", ghbo);
	    }
	}

	else if (upsl != null && upms != null) {
	    int sl = Integer.parseInt(upsl);
	    
	    GioHangBo ghbo = new GioHangBo();
	    ghbo = (GioHangBo) session.getAttribute("giohang");

	    ghbo.Sua(upms, sl);
	    int size = ghbo.ds.size();
	    
	    session.setAttribute("giohang", ghbo);
	    
	    
	    
	}
	
	if(order != null) {
	    RequestDispatcher rd = request.getRequestDispatcher("home");
	    rd.forward(request, response);
	    return;
	}
	
	RequestDispatcher rd = request.getRequestDispatcher("Practice_5/cart.jsp");
	rd.forward(request, response);
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
