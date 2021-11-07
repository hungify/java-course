package dao;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import bean.GioHangBean;
import bean.KhachHangBean;
import bean.SachBean;

public class KhachHangDao {
    public KhachHangBean kiemTraDangNhap(String username, String password) throws Exception, SQLException {
	DungChung dc = new DungChung();
	dc.ketNoi();
	CallableStatement cs = dc.cn.prepareCall("{call proc_KhachHang_Authenticate(?, ?)}");

	cs.setString(1, username);
	cs.setString(2, password);

	ResultSet rs = cs.executeQuery();

	if (rs.next() == false) {
	    return null;
	} else {
	    KhachHangBean kh = new KhachHangBean();
	    kh.setMaKH(rs.getInt("makh"));
	    kh.setHoTen(rs.getString("hoten"));
	    kh.setTenDangNhap(rs.getString("tendn"));
	    kh.setDiaChi(rs.getString("diachi"));
	    kh.setEmail(rs.getString("email"));
	    kh.setSoDienThoai(rs.getString("sodt"));
	    return kh;
	}
    }

    public boolean kiemTraDangKy(String username, String fullname, String email, String password, String address,
	    String phoneNumber) throws Exception, SQLException {
	DungChung dc = new DungChung();
	dc.ketNoi();

	CallableStatement cs = dc.cn.prepareCall("{call proc_KhachHang_Register(?, ?, ?, ?, ?, ?, ?)}");

	cs.setString(1, fullname);
	cs.setString(2, username);
	cs.setString(3, password);
	cs.setString(4, address);
	cs.setString(5, email);
	cs.setString(6, phoneNumber);

	cs.registerOutParameter(7, Types.INTEGER);

	cs.execute();

	int newCustomerId = cs.getInt(7);


	if (newCustomerId > 0) {
	    return true;
	}
	return false;
    }

    public boolean datHang(int customerId, Date orderDate, int isBought, String bookId, int quantity)
	    throws SQLException, Exception {

	DungChung dc = new DungChung();
	dc.ketNoi();

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd hh:mm:ss");

	CallableStatement cstmt = dc.cn.prepareCall("{call proc_HoaDon_Create(?, ?, ?, ?)}");

	cstmt.setInt(1, customerId);
	cstmt.setString(2, sdf.format(orderDate));
	cstmt.setInt(3, isBought);
	cstmt.registerOutParameter(4, Types.INTEGER);

	cstmt.execute();
	int orderId = cstmt.getInt(4);

	if (orderId > 0) {

	    cstmt = dc.cn.prepareCall("{call proc_ChiTietHoaDon_Create(?, ?, ?, ?)}");

	    cstmt.setString(1, bookId);
	    cstmt.setInt(2, quantity);
	    cstmt.setInt(3, orderId);
	    cstmt.registerOutParameter(4, Types.INTEGER);

	    cstmt.execute();

	    int statusCode = cstmt.getInt(4);

	    if (statusCode > 0) {
		return true;
	    }
	}
	return false;
    }

    public ArrayList<GioHangBean> getOrderHistoty(int customerId) throws Exception {
	DungChung dc = new DungChung();
	dc.ketNoi();

	CallableStatement cs = dc.cn.prepareCall("{call proc_HoaDon_OrderHistory(?)}");

	cs.setInt(1, customerId);

	ResultSet rs = cs.executeQuery();

	ArrayList<GioHangBean> list = new ArrayList<GioHangBean>();

	while (rs.next()) {

	    GioHangBean ghb = new GioHangBean();

	    ghb.setAnh(rs.getString("anh"));
	    ghb.setGia(rs.getLong("gia"));
	    ghb.setMaSach(rs.getString("masach"));
	    ghb.setTacGia(rs.getString("tacgia"));
	    ghb.setTenSach(rs.getString("tensach"));
	    ghb.setSoLuong(rs.getInt("SoLuongMua"));
	    ghb.setThanhTien(rs.getInt("SoLuongMua") * rs.getLong("gia"));
	    list.add(ghb);
	}
	return list;
    }
}
