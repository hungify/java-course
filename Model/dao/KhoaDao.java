package dao;

import java.util.ArrayList;

import bean.KhoaBean;

public class KhoaDao {
    public ArrayList<KhoaBean> getKhoa(){
	ArrayList<KhoaBean> ds = new ArrayList<KhoaBean>();
	ds.add(new KhoaBean("cntt", "Cộng nghệ thông tin"));
	ds.add(new KhoaBean("toan", "Khoa toán"));
	ds.add(new KhoaBean("ly", "Khoa lý"));
	ds.add(new KhoaBean("hoa", "Khoa hoá"));
	return ds;
	
    }
}

