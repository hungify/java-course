package bo;

import java.util.ArrayList;

import bean.KhachHangBean;
import bean.SinhVienBean;
import dao.KhachHangDao;

public class KhachHangBo {
    KhachHangDao khdao = new KhachHangDao();
    public ArrayList<KhachHangBean> getKhachHang() {
  	return khdao.getKhachHang();
      }
    
    public KhachHangBean kiemTraDN(String maKH, String mk) {
	ArrayList<KhachHangBean> ds = getKhachHang();
	for(KhachHangBean k : ds) {
	    if(k.getMaKH().equals(maKH) && k.getMatKhau().equals(mk)) {
		return k;
	    }
	}
	return null; 
    }
}
