package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.BEAN.Faculty;
import model.BEAN.Student;

public class CheckLoginDAO {
	public boolean isExisted (String username, String password) throws SQLException, ClassNotFoundException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		Statement statement = connection.createStatement();
		String query = "select username, password from admin where username='"+username+"' and password='"+password+"'";
		ResultSet resultSet = statement.executeQuery(query);
		if (resultSet.next()) {
			return true;
		}
		return false;
	}
	public ArrayList<Student> getListStudent() throws ClassNotFoundException, SQLException {
		ArrayList<Student> listStudents = new ArrayList<Student>();
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		Statement statement = connection.createStatement();
		String query = "select ID, name, gender, faculty from student";
		ResultSet resultSet = statement.executeQuery(query);
		while (resultSet.next()) {
			String id = resultSet.getNString("ID");
			String name = resultSet.getNString("name");
			boolean gender = resultSet.getBoolean("gender");
			String faculty = resultSet.getNString("faculty");
			Student student = new Student();
			student.setMaSV(id);
			student.setHoTen(name);
			student.setGioiTinh(gender);
			student.setKhoa(faculty);
			listStudents.add(student);
		}
		return listStudents;
	}
	public ArrayList<Student> getListStudentByFaculty(String khoa) throws ClassNotFoundException, SQLException {
		ArrayList<Student> listStudents = new ArrayList<Student>();
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		Statement statement = connection.createStatement();
		String query = "select * from student where faculty='"+khoa+"'";
		ResultSet resultSet = statement.executeQuery(query);
		while (resultSet.next()) {
			String id = resultSet.getNString("ID");
			String name = resultSet.getNString("name");
			boolean gender = resultSet.getBoolean("gender");
			String faculty = resultSet.getNString("faculty");
			Student student = new Student();
			student.setMaSV(id);
			student.setHoTen(name);
			student.setGioiTinh(gender);
			student.setKhoa(faculty);
			listStudents.add(student);
		}
		return listStudents;
	}
	public boolean seachFaculty(String faculty) throws ClassNotFoundException, SQLException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		Statement statement = connection.createStatement();
		String query = "select * from student where faculty='"+faculty+"'";
		ResultSet resultSet = statement.executeQuery(query);
		if (resultSet.next()) return true; 
		return false;
	}
	public ArrayList<Faculty> getListFaculty() throws ClassNotFoundException, SQLException {
		ArrayList<Faculty> listFaculty = new ArrayList<Faculty>();
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = null;
		try {
			connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Statement statement = connection.createStatement();
		String query = "select distinct faculty from student";
		ResultSet resultSet = statement.executeQuery(query);
		while (resultSet.next()) {
			
			String faculty = resultSet.getNString("faculty");
			Faculty facultys = new Faculty();
			facultys.setName(faculty);
			listFaculty.add(facultys);
		}
		return listFaculty;
	}
}
