-------------------------------------------------------------------------------
--  proc_KhachHang_Register: Đăng ký một tài khoản khách hàng mới
-------------------------------------------------------------------------------

if(exists(select * from sys.objects where name = 'proc_KhachHang_Register'))
	drop procedure proc_KhachHang_Register
go
create procedure proc_KhachHang_Register
@hoten nvarchar(255),
@tendn varchar(50),
@pass varchar(50),
@diachi nvarchar(455),
@email nvarchar(50),
@sodt nvarchar(15),
@makh int output

as
begin
	set nocount on;
		if((@tendn is null) or @tendn = N'')
			begin
				set @makh = -3
				return;
			end
		if(exists(select * from KhachHang as t where t.tendn = @tendn))
			begin
				set @makh = -5
				return;
			end
		if(@pass = N'' or LEN(@pass) < 1)
			begin
				set @makh = -2
				return;
			end
		if (not exists(select * from KhachHang where email = @email) or @email = '' 
			or  @Email NOT LIKE '%_@__%.__%' AND PATINDEX('%[^a-z,0-9,@,.,_,\-]%', @email) = 0)
			begin
				set @makh = -1
				return;
			end
		if(@sodt = NULL or LEN(@sodt) < 1)
			begin
				set @makh = -4
				return;
			end

		insert into KhachHang(hoten, tendn, pass, email, diachi, sodt)
		values (@hoten, @tendn, @pass, @email, @diachi, @sodt);
		set @makh = SCOPE_IDENTITY();

end
go

-- Test thủ tục: proc_KhachHang_Register
declare @makh int 
exec  proc_KhachHang_Register		
@hoten = 'a',
@tendn = 'kh2',
@pass = '123',
@diachi = '32 a',
@email = 'a@gmail.com',
@sodt = '09302',
@makh = @makh output

-------------------------------------------------------------------------------
--  proc_KhachHang_Authenticate: Kiểm tra đang nhập
-------------------------------------------------------------------------------

if(exists(select * from sys.objects where name = 'proc_KhachHang_Authenticate'))
	drop procedure proc_KhachHang_Authenticate
go
create procedure proc_KhachHang_Authenticate
@tendn varchar(255),
@pass varchar(255) 
as
begin
	set nocount on;
	select top 1 * from KhachHang as t where t.tendn = @tendn and t.pass = @pass

end
go

-- Test thủ tục: proc_KhachHang_Authenticate

exec  proc_KhachHang_Authenticate
		@tendn = 'kh1',
		@pass = 123
		

-------------------------------------------------------------------------------
--  proc_HoaDon_Create: Tạo mới một hoá đơn
-------------------------------------------------------------------------------

if(exists(select * from sys.objects where name = 'proc_HoaDon_Create'))
	drop procedure proc_HoaDon_Create
go
create procedure proc_HoaDon_Create
@maKh bigint,
@ngayMua date,
@damua bit,
@maHoaDon int output
as
begin
	set nocount on;
	if(not exists(select * from KhachHang as t where t.makh = @maKh))
		begin
			set @maHoaDon = -1
			return;
		end
	insert into HoaDon (makh, NgayMua, damua) values(@maKh, @ngayMua, @damua)
	set @maHoaDon = @@IDENTITY;
end
go

-- Test thủ tục: proc_HoaDon_Create
declare @maHoaDon bigint;
exec  proc_HoaDon_Create
		@maKh = 52,
		@ngayMua = '2021-02-02',
		@daMua = 1,
		@maHoaDon = @maHoaDon output

-------------------------------------------------------------------------------
--  proc_ChiTietHoaDon_Create: Tạo mới chi tiết hoá đơn
-------------------------------------------------------------------------------
if(exists(select * from sys.objects where name = 'proc_ChiTietHoaDon_Create'))
	drop procedure proc_ChiTietHoaDon_Create
go
create procedure proc_ChiTietHoaDon_Create
@maSach varchar(50),
@soLuong int,
@maHoaDon bigint,
@StatusCode int = 0 output
as
begin

	if(not exists(select * from hoadon as t where t.MaHoaDon = @maHoaDon))
		begin
			set @StatusCode = 0
			return;
		end

	set nocount on;
	insert into ChiTietHoaDon 
	select @maSach, @soLuong, @maHoaDon
	where exists(select * from hoadon as h where h.MaHoaDon = @maHoaDon)
	if(@@ROWCOUNT > 0)
		set @StatusCode = 1
		return;
end
go

-- Test thủ tục: proc_ChiTietHoaDon_Create
declare @StatusCode int;
exec  proc_ChiTietHoaDon_Create
		@maSach = '99',
		@soLuong = 99,
		@maHoaDon = 15,
		@StatusCode = @StatusCode output

-------------------------------------------------------------------------------
--  proc_HoaDon_OrderHistory: Lấy lịch sử đặt hàng
-------------------------------------------------------------------------------

if(exists(select * from sys.objects where name = 'proc_HoaDon_OrderHistory'))
	drop procedure proc_HoaDon_OrderHistory
go
create procedure proc_HoaDon_OrderHistory
@customerId int
as
begin	
	set nocount on
	if(not exists(select * from HoaDon as c where c.makh = @customerId))
		return;
	select s.anh, gia, s.masach,  tacgia, tensach, c.SoLuongMua
	from hoadon as h join ChiTietHoaDon as c on h.MaHoaDon = h.MaHoaDon 
		join sach as s on s.masach = c.MaSach
	 order by h.NgayMua
end
go

exec proc_HoaDon_OrderHistory
@customerId = 23

