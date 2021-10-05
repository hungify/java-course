package dao;

import java.util.ArrayList;

import bean.KhachHangBean;


public class KhachHangDao {
    public ArrayList<KhachHangBean> getKhachHang(){
	ArrayList<KhachHangBean> ds = new ArrayList<KhachHangBean>();
	ds.add(new KhachHangBean("kh1", "Nguyễn Văn A", "Huế", "123"));
	ds.add(new KhachHangBean("kh2", "Nguyễn Văn B", "Đà Nẵng", "abc"));
	return ds;
	
    }
}
