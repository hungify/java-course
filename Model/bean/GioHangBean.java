package bean;

public class GioHangBean {
    private String maSach;
    private String tenSach;
    private String tacGia;
    private String anh;
    private Long gia;
    private int soLuong;
    private Long thanhTien;
    public GioHangBean() {
	super();
	// TODO Auto-generated constructor stub
    }
    public GioHangBean(String maSach, String tenSach, String tacGia, String anh, Long gia, int soLuong) {
	super();
	this.maSach = maSach;
	this.tenSach = tenSach;
	this.tacGia = tacGia;
	this.anh = anh;
	this.gia = gia;
	this.soLuong = soLuong;
	this.thanhTien = gia *  soLuong;
    }
    public String getMaSach() {
        return maSach;
    }
    public void setMaSach(String maSach) {
        this.maSach = maSach;
    }
    public String getTenSach() {
        return tenSach;
    }
    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }
    public String getTacGia() {
        return tacGia;
    }
    public void setTacGia(String tacGia) {
        this.tacGia = tacGia;
    }
    public String getAnh() {
        return anh;
    }
    public void setAnh(String anh) {
        this.anh = anh;
    }
    
    public Long getGia() {
        return gia;
    }
    public void setGia(Long gia) {
        this.gia = gia;
    }
    public int getSoLuong() {
        return soLuong;
    }
    public void setSoLuong(int slt) {
        this.soLuong = slt;
    }
    public Long getThanhTien() {
        return  gia * soLuong;
    }
    public void setThanhTien(Long thanhTien) {
        this.thanhTien = thanhTien;
    }
    
}
