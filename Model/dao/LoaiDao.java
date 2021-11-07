package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.LoaiBean;
import dao.LoaiDao;

public class LoaiDao {
    public ArrayList<LoaiBean> getLoaiSach() throws Exception {
	{
	    ArrayList<LoaiBean> ds = new ArrayList<LoaiBean>();
	    DungChung dc = new DungChung();
	    dc.ketNoi();
	    String sql = "select * from loai";
	    PreparedStatement cmd = dc.cn.prepareStatement(sql);
	    ResultSet rs = cmd.executeQuery();
	    while (rs.next()) {
		String maloai = rs.getString("maloai");
		String tenloai = rs.getString("tenloai");
		ds.add(new LoaiBean(maloai, tenloai));
	    }
	    rs.close();
	    dc.cn.close();
	    return ds;
	}
    }
}
