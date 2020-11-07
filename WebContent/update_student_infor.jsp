<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.BEAN.Faculty" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sửa thông tin sinh viên</title>
</head>
<body>
<%
	session.getAttribute("userName");
	String masv = request.getParameter("masv");
	String hoten = request.getParameter("hoten");
	String gioitinh = request.getParameter("gioitinh");
	String khoa = request.getParameter("khoa");
	ArrayList<Faculty> listFaculty = (ArrayList<Faculty>) session.getAttribute("listFaculty");
%>
	<form action="CheckUpdateServlet" method="post">
		<h2>SỬA THÔNG TIN SINH VIÊN</h2>
		<table border=0>
			<tr>
				<td>Sửa sinh viên:</td>
				<td><b><%=hoten %></b></td>
			</tr>
			<tr>
				<td>Mã sinh viên</td>
				<td><input type="text" name="masv" value = "<%=masv%>" readonly="readonly" ></td>
			</tr>
			<tr>
				<td>Họ tên</td>
				<td><input type="text" name="hoten" value="<%=hoten%>"></td>
			</tr>
			<tr>
				<td>Giới tính</td>
				<td><input type="radio" name="gt" checked="true" value=1>Nam</td>
				<td><input type="radio" name="gt" value=0>Nữ</td>
			</tr>
			<tr>
				<td>Khoa</td>
				<td><select name="faculty" value="<%=khoa%>">
					<%for (int i = 0; i < listFaculty.size(); i++){ %>
					<option><%=listFaculty.get(i).getName() %></option>
					<%} %>
				</select></td>
			</tr>
			<tr>
				<td><input type="submit" value="Lưu lại"></td>
				<td><input type="reset" value="Quay lại"></td>
			</tr>
		</table>
	</form>
</body>
</html>