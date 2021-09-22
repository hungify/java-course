package bo;

import java.util.ArrayList;

import bean.SinhVienBean;
import dao.SinhVienDao;

public class SinhVienBo {
    SinhVienDao svdao = new SinhVienDao();

    public ArrayList<SinhVienBean> getSinhVien() {
	return svdao.getSinhVien();
    }

    public ArrayList<SinhVienBean> Tim(String makhoa) {
	ArrayList<SinhVienBean> ds = svdao.getSinhVien();
	ArrayList<SinhVienBean> tam = new ArrayList<SinhVienBean>();
	for (SinhVienBean sv : ds) {
	    if (sv.getMaKhoa().equals(makhoa))
		tam.add(sv);
	}
	return tam;
    }

    public ArrayList<SinhVienBean> TimChung(String key) {
	ArrayList<SinhVienBean> ds = svdao.getSinhVien();
	ArrayList<SinhVienBean> tam = new ArrayList<SinhVienBean>();
	for (SinhVienBean sv : ds) {
	    if (sv.getHoTen().toLowerCase().trim().contains(key.toLowerCase().trim())
		    || sv.getDiaChi().toLowerCase().trim().contains(key.toLowerCase().trim()))
		tam.add(sv);
	}
	return tam;
    }
}
