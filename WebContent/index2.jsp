<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
		*{
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		}
		html,body {
			background: #7FBBE3
		}
		#form-details {
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
			box-shadow: 2px 3px 5px #fff;
			border: 1px solid #fff
		}
	</style>
</head>
<body>
	<div id="form-details">
		<form action="https://ums-husc.hueuni.edu.vn/Student/News">
			<h3 class="title">Sinh viên</h3>
			<div class="">
				<label for="">Tên đăng nhập</label>
				<input id="loginID" type="text" name="loginID" class="form-control" placeholder="Mã sinh viên">
			</div>
			<div class="mb-3">
				<label for="">Mật khẩu</label>
				<input id="password"  type="password" name="password" class="form-control" placeholder="Mật khẩu">
			</div>
			<button type="submit" class="form-control">Đăng nhập</button>
		</form>
	</div>
</body>
</html>