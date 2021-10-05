package bo;

import java.util.ArrayList;

import bean.LoaiBean;

import dao.LoaiSachDao;

public class LoaiBo {
    LoaiSachDao sdao = new LoaiSachDao();

    public ArrayList<LoaiBean> getLoai() {
	return sdao.getLoaiSach();
    }
}
