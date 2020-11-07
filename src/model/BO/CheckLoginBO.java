package model.BO;

import java.sql.SQLException;
import java.util.ArrayList;

import model.BEAN.Faculty;
import model.BEAN.Student;
import model.DAO.CheckLoginDAO;

public class CheckLoginBO {
	CheckLoginDAO checkLoginDAO = new CheckLoginDAO();
	public boolean isExisted(String username, String password) throws SQLException, ClassNotFoundException {
		return checkLoginDAO.isExisted(username, password);
	}
	public ArrayList<Student> getListStudents() throws ClassNotFoundException, SQLException {
		return checkLoginDAO.getListStudent();
	}
	public ArrayList<Faculty> getListFaculty() throws ClassNotFoundException, SQLException {
		return checkLoginDAO.getListFaculty();
	}
	public ArrayList<Student> getListStudentsByFaculty(String khoa) throws ClassNotFoundException, SQLException {
		return checkLoginDAO.getListStudentByFaculty(khoa);
	}
	public boolean seachFaculty (String faculty) throws ClassNotFoundException, SQLException {
		return checkLoginDAO.seachFaculty(faculty);
	}
}
