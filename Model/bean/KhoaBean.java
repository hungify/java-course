package bean;

public class KhoaBean {
    private String maKhoa;
    private String tenKhoa;
    
    public KhoaBean(String maKhoa, String tenKhoa) {
	super();
	this.maKhoa = maKhoa;
	this.tenKhoa = tenKhoa;
    }
    public String getMaKhoa() {
	return maKhoa;
    }
    public void setMaKhoa(String maKhoa) {
	this.maKhoa = maKhoa;
    }
    public String getTenKhoa() {
	return tenKhoa;
    }
    @Override
    public String toString() {
	return "KhoaBean [maKhoa=" + maKhoa + ", tenKhoa=" + tenKhoa + "]";
    }
    public void setTenKhoa(String tenKhoa) {
	this.tenKhoa = tenKhoa;
    }
    public KhoaBean() {
	super();
	// TODO Auto-generated constructor stub
    }
  
}
