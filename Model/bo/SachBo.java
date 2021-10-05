package bo;

import java.util.ArrayList;

import bean.SachBean;
import bean.SinhVienBean;
import dao.SachDao;
import dao.SinhVienDao;

public class SachBo {
    SachDao sdao = new SachDao();

    public ArrayList<SachBean> getSach() {
	return sdao.getSach();
    }

    public ArrayList<SachBean> timMaLoai(String maLoai) {
	ArrayList<SachBean> ds = sdao.getSach();
	ArrayList<SachBean> tam = new ArrayList<SachBean>();
	for (SachBean sv : ds) {
	    System.out.println(sv);
	    if (sv.getMaLoai().equals(maLoai))
		tam.add(sv);
	}

	return tam;
    }

    public ArrayList<SachBean> timChung(String key) {
	ArrayList<SachBean> ds = sdao.getSach();
	ArrayList<SachBean> tam = new ArrayList<SachBean>();
	if (key != "" && key != null) {
	    for (SachBean sv : ds) {
		if (sv.getTenSach().toLowerCase().trim().contains(key.toLowerCase().trim())
			|| sv.getTacGia().toLowerCase().trim().contains(key.toLowerCase().trim()))
		    tam.add(sv);
	    }
	}
	return tam;
    }

    public Long demSach(String maloai) {
	long dem = 0;
	ArrayList<SachBean> sbean = sdao.getSach();
	int n = sbean.size();
	for (int i = 0; i < n; i++) {
	    if (sbean.get(i).getMaLoai().equals(maloai))
		dem = dem + 1;

	}
	return dem;
    }
}
