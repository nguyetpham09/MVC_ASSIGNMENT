<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="model.BEAN.Faculty" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Xóa thông tin sinh viên</title>
</head>
<body>
<%
 	session.getAttribute("userName");
	String userName = request.getParameter("username");
	String masv = request.getParameter("masv");
	String hoten = request.getParameter("hoten");
	//String gioitinh = request.getParameter("gioitinh");
	//String khoa = request.getParameter("khoa");
	ArrayList<Faculty> listFaculty = (ArrayList<Faculty>) session.getAttribute("listFaculty");
%>
<form action="CheckDeleteServlet" method="post">
		<h2>XÓA THÔNG TIN SINH VIÊN</h2>
		<table border=0>
			<tr>
				<td>Xóa sinh viên:</td>
				<td><b><%=hoten %></b></td>
			</tr>
			<tr>
				<td>Mã sinh viên</td>
				<td><input type="text" name="masv" value="<%=masv %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Họ tên</td>
				<td><input type="text" name="hoten" value="<%=hoten %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Giới tính</td>
				<td><input type="radio" name="gt" readonly="readonly" >Nam</td>
				<td><input type="radio" name="gt" disabled="disabled">Nữ</td>
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
				<td><input type="submit" value="Xác nhận"></td>
				<td><input type="reset" value="Quay lại"></td>
			</tr>
		</table>
	</form>
</body>
</html>