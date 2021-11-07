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
		for (GioHangBean g : ds) {
			if (g.getTenSach().toLowerCase().trim().equals(tenSach.toLowerCase().trim())) {
				g.setSoLuong(g.getSoLuong() + soLuong);
				return;
			}

		}
		GioHangBean h = new GioHangBean(maSach, tenSach, tacGia, anh, giaBan, soLuong);
		ds.add(h);

	}

	public void Xoa(String masach) {
		for (GioHangBean g : ds)
			if (g.getMaSach().equals(masach)) {
				ds.remove(g);
				return;
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

	public int totalQuanity() {
		int total = 0;
		for (GioHangBean g : ds) {
			total += g.getSoLuong();
		}
		return total;
	}

}
