package bo;

import java.util.ArrayList;

import bean.GioHangBean;
import bean.KhachHangBean;

public class GioHangBo {
    public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();

    public GioHangBo() {
	super();
	// TODO Auto-generated constructor stub
    }

    public void Them(String maSach, String tenSach, String tacGia, String anh, Long giaBan, int soLuong) {
	int n = ds.size();
	for (int i = 0; i < n; i++) {
	    if (ds.get(i).getTenSach().toLowerCase().trim().equals(tenSach.toLowerCase().trim())) {
		int slt = ds.get(i).getSoLuong() + soLuong;
		ds.get(i).setSoLuong(slt);
		long thanhTien = slt * giaBan;
		ds.get(i).setThanhTien(thanhTien);
		return;
	    }
	}
	GioHangBean h = new GioHangBean(maSach, tenSach, tacGia, anh, giaBan, soLuong);
	ds.add(h);

    }

    public void Xoa(String masach) {
	for (int i = 0; i < ds.size(); i++) {
	    if (masach.equals(ds.get(i).getMaSach()))
		ds.remove(i);
	}
    }

    public long tongTien() {
	long total = 0;
	for (int i = 0; i < ds.size(); i++) {
	    total += ds.get(i).getThanhTien();
	}
	return total;
    }

    public void Sua(String masach, int soluong) {
	for (int i = 0; i < ds.size(); i++) {
	    if (masach.equals(ds.get(i).getMaSach())) {
		ds.get(i).setSoLuong(soluong);
		return;
	    }
	}
    }

}
