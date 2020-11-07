<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.BEAN.Faculty" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thêm mới sinh viên</title>
</head>
<body>
	<%
		String userName = request.getParameter("username");	
		ArrayList<Faculty> listFaculty = (ArrayList<Faculty>) session.getAttribute("listFaculty");
	%>
	<form action="CheckServletAdd" method="post">
		<h2>THÊM MỚI SINH VIÊN</h2>
		<table border=0>
			<tr>
				<td>Mã sinh viên</td>
				<td><input type="text" name="masv"></td>
			</tr>
			<tr>
				<td>Họ tên</td>
				<td><input type="text" name="hoten"></td>
			</tr>
			<tr>
				<td>Giới tính</td>
				<td><input type="radio" name="gt" checked="true" value=1>Nam</td>
				<td><input type="radio" name="gt" value=0>Nữ</td>
			</tr>
			<tr>
				<td>Khoa</td>
				<td><select name="faculty">
					<%for (int i = 0; i < listFaculty.size(); i++){ %>
					<option><%=listFaculty.get(i).getName() %></option>
					<%} %>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Thêm mới"></td>
				<td><input type="reset" value="Quay lại"></td>
			</tr>
		</table>
	</form>
</body>
</html>