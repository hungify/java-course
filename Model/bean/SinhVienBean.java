package bean;

public class SinhVienBean {
    private String maSV;
    private String hoTen;
    private String diaChi;
    private Double dtb;
    private String maKhoa;
    
    
    public SinhVienBean() {
	super();
	// TODO Auto-generated constructor stub
    }
    public SinhVienBean(String maSV, String hoTen, String diaChi, Double dtb, String maKhoa) {
	super();
	this.maSV = maSV;
	this.hoTen = hoTen;
	this.diaChi = diaChi;
	this.dtb = dtb;
	this.maKhoa = maKhoa;
    }
    public String getMaSV() {
        return maSV;
    }
    public void setMaSV(String maSV) {
        this.maSV = maSV;
    }
    public String getHoTen() {
        return hoTen;
    }
    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }
    public String getDiaChi() {
        return diaChi;
    }
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    public Double getDtb() {
        return dtb;
    }
    public void setDtb(Double dtb) {
        this.dtb = dtb;
    }
    public String getMaKhoa() {
        return maKhoa;
    }
    public void setMaKhoa(String maKhoa) {
        this.maKhoa = maKhoa;
    }
}
