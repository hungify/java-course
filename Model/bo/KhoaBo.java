package bo;

import java.util.ArrayList;

import bean.KhoaBean;
import dao.KhoaDao;

public class KhoaBo {
    KhoaDao kdao = new KhoaDao();

    public ArrayList<KhoaBean> getKhoa() {
	return kdao.getKhoa();
    }

    public ArrayList<KhoaBean> searchByName(String name) {
	var dsk = kdao.getKhoa();
	ArrayList<KhoaBean> result = new ArrayList<KhoaBean>();
	
	for (KhoaBean k : dsk) {
	    if (k.getTenKhoa().toLowerCase().contains(name.toLowerCase())) {
		result.add(k);
	    }
	}
	return result;
    }

}
