package bo;

import java.util.ArrayList;

import bean.LoaiBean;

import dao.LoaiDao;

public class LoaiBo {
    LoaiDao sdao = new LoaiDao();

    public ArrayList<LoaiBean> getLoai() throws Exception {
	return sdao.getLoaiSach();
    }
}
