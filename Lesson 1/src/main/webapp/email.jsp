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
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
<title>Email</title>
</head>

<body>
	<div class="box__wrapper">
		<div class="box__email">
			<p class="box__message">Thư mới</p>
			<p class="box__address">
				Người nhận <input type="text" class="input__address" />
			</p>
			<p>
				<input type="text" class="input__topic" placeholder="Chủ đề" />
			</p>
			<div contenteditable="true" class="text_area"></div>
			<div class="wrapper__btn">
				<input type="button" value="Gửi" class="btn__send">
				<div class="wrapper__icon">
					<i class="icon__dropdown"></i>
				</div>
			</div>
		</div>

	</div>
</body>
</html>