<%@page import="java.util.ArrayList"%>
<%@page import="model.BEAN.Student" %>
<%@page import="model.BEAN.Faculty" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Danh sách sinh viên</title>
<script type="text/javascript">
	function xuly(){
		var x = document.form.faculty.value;
		window.location.href = "CheckSearchServlet?faculty="+x;
	}	
</script>
</head>
<body>
<%
	String userName = request.getParameter("username");
	session.setAttribute("userName", userName);
	ArrayList<Student> listStudent = (ArrayList<Student>) request.getAttribute("listStudent");
	ArrayList<Faculty> listFaculty = (ArrayList<Faculty>) request.getAttribute("listFaculty");
	session.setAttribute("listFaculty", listFaculty);
%>
	Welcome <%=userName %>
	<form action="add_new_student.jsp" method="post" name="form">
		<h2>DANH SÁCH SINH VIÊN</h2>
		<select name="faculty">
		<%for (int i = 0; i < listFaculty.size(); i++) {%>
			<option><%=listFaculty.get(i).getName()%></option>
		<%} %>
		</select>
		<input type="button" value="Xem" onclick="xuly()">
		<input type="submit" value="Thêm mới">
		<table border=1>
			<tr>
				<td>Mã SV</td>
				<td>Họ tên</td>
				<td>Giới tính</td>
				<td>Khoa</td>
				<td></td>
				<td></td>
			</tr>
			<%
				for (int i = 0; i< listStudent.size(); i++){
			%>
			<tr>
				<td><%=listStudent.get(i).getMaSV()%></td>
				<td><%=listStudent.get(i).getHoTen()%></td>
				<td><%=listStudent.get(i).getGioiTinh()%></td>
				<td><%=listStudent.get(i).getKhoa() %></td>
				<td><a href="update_student_infor.jsp?masv=<%=listStudent.get(i).getMaSV()%>&hoten=<%=listStudent.get(i).getHoTen()%>&gioitinh=<%=listStudent.get(i).getGioiTinh() %>&khoa=<%listStudent.get(i).getKhoa(); %>">Sửa</a></td>
				<td><a href="delete_student.jsp?masv=<%=listStudent.get(i).getMaSV()%>&hoten=<%=listStudent.get(i).getHoTen()%>&gioitinh=<%=listStudent.get(i).getGioiTinh() %>&khoa=<%listStudent.get(i).getKhoa(); %>">Xóa</a></td>
			</tr>
			<%} %>
		</table>
	</form>

</body>
</html>