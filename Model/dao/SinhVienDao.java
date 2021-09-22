package dao;

import java.util.ArrayList;

import bean.SinhVienBean;



public class SinhVienDao {
    public ArrayList<SinhVienBean> getSinhVien(){
  	ArrayList<SinhVienBean> dssv = new ArrayList<SinhVienBean>();
  	
  	dssv.add(new SinhVienBean("18T1", "Nguyễn Văn A", "Huế", 8.4, "cntt"));
  	dssv.add(new SinhVienBean("18T2", "Nguyễn Văn B", "Huế", 6.1, "toan"));
  	dssv.add(new SinhVienBean("18T3", "Nguyễn Văn C", "Huế", 6.9, "ly"));
  	dssv.add(new SinhVienBean("18T4", "Nguyễn Văn D", "Huế", 5.4, "hoa"));
  	
  	dssv.add(new SinhVienBean("18T5", "Nguyễn Thị Q", "Huế", 9.4, "hoa"));
  	dssv.add(new SinhVienBean("18T6", "Nguyễn Kim H", "Huế", 7.4, "cntt"));
  	dssv.add(new SinhVienBean("18T7", "Nguyễn Hải G", "Huế", 5.4, "cntt"));
  	dssv.add(new SinhVienBean("18T8", "Nguyễn Tiền F", "Huế", 10.0, "cntt"));
  	
  	return dssv;
  	
      }
}
