<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng ký</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<style type="text/css">
		input {
			margin: 26px 0;
		}
		select {
			margin: 10px ;
			padding: 5px 10px;
		}
		.title {
		font-size : 25px;
		color : red
		}
	</style>
</head>

<body>
	<form action="" method="post">
	<div class="container">
		<div class="row">
		<div class="col-12 pt-5 pb-5 text-center title"> Đăng ký</div>
			<div class="col-lg-6">
				<input type="text" name="" class="form-control" placeholder="Nhập Username">
				<input type="password" name="" class="form-control" placeholder="Nhập pasword">
				<input type="password" name="" class="form-control" placeholder="Nhập lại password">
				<input type="email" name="" class="form-control" placeholder="Nhập Email">
				<input type="email" name="" class="form-control" placeholder="Nhập lại email">
			</div>
			<div class="col-lg-6">
				<input type="text" name="" class="form-control" placeholder="Nhập Username">
				<div>
					<select>
						<option>Giới tính</option>
						<option>Nam</option>
						<option>Nữ</option>
					</select>
				</div>
				<select  name="sngay">
					<option>Ngày sinh</option>
					<option>14/09/1998</option>
					<option>15/09/1998</option>
				</select>
				<select class="">
					<option>Tháng</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
				<select class="">
					<option>Năm</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
				<div class="">
					<select class="">
					<option>Năm</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
				</div>
				<input type="text" name="" class="form-control" placeholder="nhập mã xác nhận">
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Đăng kí</button>
	</div>
	</form>
	<script
  src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
		
	});
	</script>
</body>
</html>