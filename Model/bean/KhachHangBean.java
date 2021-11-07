package bean;

public class KhachHangBean {
    private int maKH;
    private String hoTen;
    private String tenDangNhap;
    private String diaChi;
    private String matKhau;
    private String soDienThoai;
    private String email;

    public int getMaKH() {
	return maKH;
    }

    public void setMaKH(int maKH) {
	this.maKH = maKH;
    }

    public String getHoTen() {
	return hoTen;
    }

    public void setHoTen(String hoTen) {
	this.hoTen = hoTen;
    }

    public String getTenDangNhap() {
	return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
	this.tenDangNhap = tenDangNhap;
    }

    public String getDiaChi() {
	return diaChi;
    }

    public void setDiaChi(String diaChi) {
	this.diaChi = diaChi;
    }

    public String getMatKhau() {
	return matKhau;
    }

    public void setMatKhau(String matKhau) {
	this.matKhau = matKhau;
    }

    public String getSoDienThoai() {
	return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
	this.soDienThoai = soDienThoai;
    }

    public String getEmail() {
	return email;
    }

    public void setEmail(String email) {
	this.email = email;
    }

    public KhachHangBean(String fullname, String address, String username, String email, String phoneNumber,
	    String password) {
	super();
	// TODO Auto-generated constructor stub
	this.hoTen = fullname;
	this.diaChi = address;
	this.matKhau = password;
	this.email = email;
	this.soDienThoai = phoneNumber;
	this.tenDangNhap = username;
    }

    public KhachHangBean(String fullname, String address, String username, String email, String phoneNumber) {
	super();
	// TODO Auto-generated constructor stub
	this.hoTen = fullname;
	this.diaChi = address;
	this.email = email;
	this.soDienThoai = phoneNumber;
	this.tenDangNhap = username;
    }

    public KhachHangBean() {
	// TODO Auto-generated constructor stub
    }

}
