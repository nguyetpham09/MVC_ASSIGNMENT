<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
</head>
<body>
	<form action="CheckLoginServlet" method="post" name="login_form">
	<table border=0>
		<p><h2>ĐĂNG NHẬP HỆ THỐNG</h2></p>
		<tr>
			<td>Tên đăng nhập</td> 
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>Mật khẩu</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td><input type="submit" value="Đăng nhập"></td>
			<td><input type="reset" value="Hủy"></td>
		</tr>
	</table>
	</form>
</body>
</html>