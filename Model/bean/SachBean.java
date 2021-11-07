package bean;

public class SachBean {
    private String masach;
    private String tensach;
    private String tacgia;
    private Long gia;
    private String anh;
    private String maloai;
    
    public SachBean(String masach, String tensach, String tacgia, Long gia, String anh, String maloai) {
   	super();
   	this.masach = masach;
   	this.maloai = maloai;
   	this.tensach = tensach;
   	this.tacgia = tacgia;
   	this.gia = gia;
   	this.anh = anh;
   	
       }
    
    public SachBean() {
   	super();
   	
       }

    public String getMasach() {
        return masach;
    }

    public void setMasach(String masach) {
        this.masach = masach;
    }

    public String getTensach() {
        return tensach;
    }

    public void setTensach(String tensach) {
        this.tensach = tensach;
    }

    public String getTacgia() {
        return tacgia;
    }

    public void setTacgia(String tacgia) {
        this.tacgia = tacgia;
    }

    public Long getGia() {
        return gia;
    }

    public void setGia(Long gia) {
        this.gia = gia;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getMaLoai() {
        return maloai;
    }

    public void setMaLoai(String maloai) {
        this.maloai = maloai;
    }
      
}	


