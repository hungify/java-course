<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="./assets/css/reset.css" rel="stylesheet" type="text/css">
<link href="./assets/css/style.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
	
<!-- Style css -->	
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<header class="blog-header py-3">
			<div
				class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 pt-1">
					<a class="link-secondary" href="#">Logo name</a>
				</div>
				<div class="col-4 text-center">
					<h3 class="blog-header-logo text-dark" href="#">
						Hello world</a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<a class="link-secondary" href="#" aria-label="Search"> <svg
							xmlns="http://www.w3.org/2000/svg" width="20" height="20"
							fill="none" stroke="currentColor" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2" class="mx-3" role="img"
							viewBox="0 0 24 24">
							<title>Search</title><circle cx="10.5" cy="10.5" r="7.5" />
							<path d="M21 21l-5.2-5.2" /></svg>
					</a> <a class="btn btn-sm btn-outline-secondary" href="#"
						data-target="#myModal" data-toggle="modal">Đăng ký</a>
				</div>
			</div>
		</header>

		<!-- The Modal -->
		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content rounded-8 shadow">

					<!-- Modal Header -->
					<div class="modal-header p-3 pb-2 border-bottom-0">
						<h2 class="fw-bold mb-0">Đăng ký ngay</h2>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body p-3 pt-0">
						<form action="">
							<div class="row mb-3">
								<label for="email" class="col-sm-3 col-form-label">Email</label>
								<div class="col-sm-9">
									<input type="email" class="form-control rounded-4" id="email"
										placeholder="Nhập vào email">
								</div>
							</div>

							<div class="row mb-3">
								<label for="date" class="col-sm-3 col-form-label">User
									name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control rounded-4" id="date"
										placeholder="Nhập vào tên đăng nhập">
								</div>
							</div>

							<div class="row mb-3">
								<label for="password" class="col-sm-3 col-form-label">Password</label>
								<div class="col-sm-9">
									<input type="password" class="form-control rounded-4"
										id="password" placeholder="Nhập vào passowrd">
								</div>
							</div>


							<div class="row mb-3">
								<label for="date" class="col-sm-3 col-form-label">Date</label>
								<div class="col-sm-9">
									<input type="date" class="form-control rounded-4" id="date"
										placeholder="Nhập vào passowrd">
								</div>
							</div>

							<div class="row mb-3">
								<div class="form-check col-form-label ml-5 ">
									<input class="form-check-input" type="checkbox"
										id="inlineFormCheck"> <label class="form-check-label"
										for="inlineFormCheck">I accept the Terms of Use &
										Privacy Policy</label>
								</div>
							</div>
							<button class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"
								type="submit">Sign up</button>
							<hr class="my-4">
							<h2 class="fs-5 fw-bold mb-3">Hoặc đăng ký thông qua</h2>
							<button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-4"
								type="submit">Twitter</button>
							<button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-4"
								type="submit">Facebook</button>
							<button
								class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-4"
								type="submit">GitHub</button>
						</form>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				</div>
			</div>
		</div>

	</div>


</body>
</html>