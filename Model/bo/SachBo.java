package bo;

import java.util.ArrayList;

import bean.SachBean;
import dao.SachDao;

public class SachBo {
    SachDao sdao = new SachDao();

    public ArrayList<SachBean> getSach() throws Exception {
	return sdao.getSach();
    }

    public ArrayList<SachBean> timMaLoai(String maLoai) throws Exception {
	
	ArrayList<SachBean> ds = sdao.getSach();
	ArrayList<SachBean> tam = new ArrayList<SachBean>();
	for (SachBean sb : ds) {
	    if (sb.getMaLoai().equals(maLoai))
		tam.add(sb);
	}
	return tam;
    }

    public ArrayList<SachBean> timChung(String key) throws Exception {
	ArrayList<SachBean> ds = sdao.getSach();
	ArrayList<SachBean> tam = new ArrayList<SachBean>();
	if (key != "" && key != null) {
	    for (SachBean sv : ds) {
		if (sv.getMasach().toLowerCase().trim().contains(key.toLowerCase().trim())
			|| sv.getTacgia().toLowerCase().trim().contains(key.toLowerCase().trim()))
		    tam.add(sv);
	    }
	}
	return tam;
    }

    public Long demSach(String maloai) throws Exception {
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
