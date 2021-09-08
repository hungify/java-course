<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="./assets/css/reset.css" rel="stylesheet" type="text/css">
<link href="./assets/css/style.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
<title>Document</title>
</head>

<body>
	<div class="signup__wrapper">
		<div class="signup__heading">
			<h1>
				Đăng Ký</span>
		</div>
		<div class="signup__content">
			<p class="signup__title">Đăng ký mới bằng tài khoản TaiLieu.VN</p>
			<form action="post" class="signup__form">
				<p>Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận
					ngay 50 ePoints thưởng từ TaiLieu.VN</p>
				<div class="wrapper__input">
					<input type="text" placeholder="Nhập Username" /> <input
						type="text" placeholder="Nhập Họ và Tên" />
				</div>

				<div class="wrapper__input">
					<input type="password" placeholder="Nhập mật khẩu" /> <select
						name="gender">
						<option value="gender">Giới tính</option>
						<option value="male">Nam</option>
						<option value="female">Nữ</option>
					</select>
				</div>

				<div class="wrapper__input">
					<input type="password" placeholder="Nhập lại mật khẩu" /> <select
						name="day">
						<option value="">Ngày sinh</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>
					</select> <select name="month">
						<option value="">Tháng</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <select name="year">
						<option value="">Năm</option>
						<option value="1960">1960</option>
						<option value="1961">1961</option>
						<option value="1962">1962</option>
						<option value="1963">1963</option>
						<option value="1964">1964</option>
						<option value="1965">1965</option>
						<option value="1966">1966</option>
						<option value="1967">1967</option>
						<option value="1968">1968</option>
						<option value="1969">1969</option>
						<option value="1970">1970</option>
						<option value="1971">1971</option>
						<option value="1972">1972</option>
						<option value="1973">1973</option>
						<option value="1974">1974</option>
						<option value="1975">1975</option>
						<option value="1976">1976</option>
						<option value="1977">1977</option>
						<option value="1978">1978</option>
						<option value="1979">1979</option>
						<option value="1980">1980</option>
						<option value="1981">1981</option>
						<option value="1982">1982</option>
						<option value="1983">1983</option>
						<option value="1984">1984</option>
						<option value="1985">1985</option>
						<option value="1986">1986</option>
						<option value="1987">1987</option>
						<option value="1988">1988</option>
						<option value="1989">1989</option>
						<option value="1990">1990</option>
						<option value="1991">1991</option>
						<option value="1992">1992</option>
						<option value="1993">1993</option>
						<option value="1994">1994</option>
						<option value="1995">1995</option>
						<option value="1996">1996</option>
						<option value="1997">1997</option>
						<option value="1998">1998</option>
						<option value="1999">1999</option>
					</select>
				</div>


				<div class="wrapper__input">
					<input type="email" placeholder="Nhập địa chỉ Email" /> <select
						name="city">
						<option value="">Tỉnh/TP</option>
						<option value="76">An Giang</option>
						<option value="64">Bà Rịa Vũng Tàu</option>
						<option value="281">Bắc Cạn</option>
						<option value="240">Bắc Giang</option>
						<option value="781">Bạc Liêu</option>
						<option value="241">Bắc Ninh</option>
						<option value="75">Bến Tre</option>
						<option value="650">Bình Dương</option>
						<option value="651">Bình Phước</option>
						<option value="62">Bình Thuận</option>
						<option value="56">Bình Định</option>
						<option value="78">Cà Mau</option>
						<option value="71">Cần Thơ</option>
						<option value="26">Cao Bằng</option>
						<option value="59">Gia Lai</option>
						<option value="19">Hà Giang</option>
						<option value="351">Hà Nam</option>
						<option value="4">Hà Nội</option>
						<option value="34">Hà Tây</option>
						<option value="39">Hà Tỉnh</option>
						<option value="320">Hải Dương</option>
						<option value="31">Hải Phòng</option>
						<option value="18">Hòa Bình</option>
						<option value="321">Hưng Yên</option>
						<option value="58">Khánh Hòa</option>
						<option value="77">Kiên Giang</option>
						<option value="60">Kon Tum</option>
						<option value="23">Lai Châu</option>
						<option value="63">Lâm Đồng</option>
						<option value="25">Lạng Sơn</option>
						<option value="20">Lào Cai</option>
						<option value="72">Long An</option>
						<option value="350">Nam Định</option>
						<option value="38">Nghệ An</option>
						<option value="30">Ninh Bình</option>
						<option value="68">Ninh Thuận</option>
						<option value="901">Nơi khác</option>
						<option value="210">Phú Thọ</option>
						<option value="57">Phú Yên</option>
						<option value="52">Quảng Bình</option>
						<option value="510">Quảng Nam</option>
						<option value="55">Quảng Ngãi</option>
						<option value="33">Quảng Ninh</option>
						<option value="53">Quảng Trị</option>
						<option value="79">Sóc Trăng</option>
						<option value="22">Sơn La</option>
						<option value="66">Tây Ninh</option>
						<option value="36">Thái Bình</option>
						<option value="280">Thái Nguyên</option>
						<option value="37">Thanh Hóa</option>
						<option value="54">Thừa Thiên Huế</option>
						<option value="73">Tiền Giang</option>
						<option value="8">TP.HCM</option>
						<option value="74">Trà Vinh</option>
						<option value="27">Tuyên Quang</option>
						<option value="70">Vĩnh Long</option>
						<option value="211">Vĩnh Phúc</option>
						<option value="29">Yên Bái</option>
						<option value="511">Đà Nẵng</option>
						<option value="50">Đắc Lắc</option>
						<option value="1042">Đắc Nông</option>
						<option value="900">Điện Biên</option>
						<option value="61">Đồng Nai</option>
						<option value="67">Đồng Tháp</option>
					</select>
				</div>

				<div class="wrapper__input">
					<input type="email" placeholder="Nhập lại địa chỉ Email" /> <input
						class="input__code" type="text" placeholder="Nhập mã xác nhận">
				</div>
				<div class="form__submit">
					<div class="btn">
						<input type="button" class="btn__signup" value="Đăng ký">
					</div>
					<div class="checkbox">
						<input type="checkbox" checked=true> Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN
					</div>
				</div>

			</form>
		</div>

	</div>
</body>
</html>
