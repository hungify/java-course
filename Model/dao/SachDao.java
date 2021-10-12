package dao;

import java.util.ArrayList;

import bean.LoaiBean;
import bean.SachBean;

public class SachDao {
    public ArrayList<SachBean> getSach() {
	ArrayList<SachBean> ds = new ArrayList<SachBean>();
	ds.add(new SachBean("s1", "Cấu trúc dữ liệu", "Đỗ Ngọc", (long) 120000, "b11.jpg", "cntt"));
	ds.add(new SachBean("s2", "Cơ sở dữ liệu", "Đỗ Ngọc", (long) 12000, "b12.jpg", "cntt"));
	ds.add(new SachBean("s3", "lập trình Java", "Quách Tuấn Ngọc", (long) 1000, "b14.jpg", "cntt"));
	ds.add(new SachBean("s11", "Cấu trúc dữ liệu1", "Đỗ Ngọc", (long) 120000, "b21.jpg", "cntt"));
	ds.add(new SachBean("s22", "Cơ sở dữ liệu2", "Đỗ Ngọc", (long) 120000, "b22.jpg", "cntt"));
	ds.add(new SachBean("s33", "lập trình Java3", "Quách Tuấn Ngọc", (long) 120000, "b24.jpg", "cntt"));
	ds.add(new SachBean("s4", "Đại chất công trình", "Đỗ Ngọc", (long) 120000, "b20.jpg", "dia"));
	ds.add(new SachBean("s5", "Bản đồ", "Đỗ Ngọc", (long) 120000, "b11.jpg", "dia"));
	return ds;
    }
}

