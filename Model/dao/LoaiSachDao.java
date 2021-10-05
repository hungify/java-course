package dao;

import java.util.ArrayList;
import bean.LoaiBean;

public class LoaiSachDao {
    public ArrayList<LoaiBean> getLoaiSach() {
	ArrayList<LoaiBean> ds = new ArrayList<LoaiBean>();
	ds.add(new LoaiBean("cntt", "Công nghệ thông tin"));
	ds.add(new LoaiBean("yte", "Y tế"));
	ds.add(new LoaiBean("sinh", "Sinh học"));
	ds.add(new LoaiBean("vatly", "Vật ký"));
	ds.add(new LoaiBean("dia", "Địa lý"));
	return ds;

    }
}
