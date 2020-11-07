package model.BO;

import java.sql.SQLException;

import model.DAO.CheckAddStudentDAO;

public class CheckAddStudentBO {
	CheckAddStudentDAO checkAddStudentDAO = new CheckAddStudentDAO();
	public boolean addStudent (String id, String name, int gender, String faculty) throws ClassNotFoundException, SQLException {
		return checkAddStudentDAO.addStudent(id, name, gender, faculty);
	}
}
