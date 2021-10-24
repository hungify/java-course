package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.LoaiBean;
import bean.SachBean;
import bo.KhachHangBo;
import bo.LoaiBo;
import bo.SachBo;

/**
 * Servlet implementation class htSachContronller
 */
@WebServlet("/home")
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
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

	SachBo sbo = new SachBo();
	LoaiBo lbo = new LoaiBo();
	
	ArrayList<SachBean> dssach = sbo.getSach();
	ArrayList<LoaiBean> dsloai = lbo.getLoai();

	String ml = request.getParameter("ml");
	String key = request.getParameter("txttk");
	
	
	 
	if (ml != null)
	    dssach = sbo.timMaLoai(ml);
	else if (key != null)
	{
	    dssach = sbo.timChung(key);
	}

	request.setAttribute("dsloai", dsloai);
	request.setAttribute("dssach", dssach);
	request.setAttribute("timkiemsach", key);
	
	RequestDispatcher rd = request.getRequestDispatcher("Practice_5/home.jsp");
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
