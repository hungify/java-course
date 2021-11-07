package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.SachBean;

public class SachDao {
    public ArrayList<SachBean> getSach() throws Exception {

	{
	    ArrayList<SachBean> ds = new ArrayList<SachBean>();
	    DungChung dc = new DungChung();
	    dc.ketNoi();
	    String sql = "select * from sach";
	    PreparedStatement cmd = dc.cn.prepareStatement(sql);
	    ResultSet rs = cmd.executeQuery();
	    
	    while (rs.next()) {
		String masach = rs.getString("masach");
		String tensach = rs.getString("tensach");
		String tacgia = rs.getString("tacgia");
		Long gia = rs.getLong("gia");
		String anh = rs.getString("anh");
		String maLoai = rs.getString("maLoai");
		ds.add(new SachBean(masach, tensach, tacgia, gia, anh, maLoai));
	    }
	    rs.close();
	    dc.cn.close();
	    return ds;
	}
    }
}
