package bo;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import bean.GioHangBean;
import bean.KhachHangBean;
import dao.KhachHangDao;

public class KhachHangBo {
    KhachHangDao khdao = new KhachHangDao();
   
  
    public KhachHangBean kiemTraDN(String tendn, String pass) throws Exception {
	return khdao.kiemTraDangNhap(tendn, pass); 
    }
    
    public boolean kiemTraDK(String username, String fullname, String email, String password, String address, String phoneNumber) throws Exception {
   	return khdao.kiemTraDangKy(username, fullname, email, password, address, phoneNumber); 
       }
    
    public boolean datHang(int customerId, Date orderDate, int isBought, String bookId, int quantity) throws SQLException, Exception {
	return khdao.datHang(customerId, orderDate, isBought, bookId, quantity);
    }
    public ArrayList<GioHangBean> layLichSuMuaHang(int customerId) throws Exception {
	return khdao.getOrderHistoty(customerId);
    }
}
