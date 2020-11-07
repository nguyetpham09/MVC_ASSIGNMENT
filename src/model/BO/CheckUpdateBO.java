package model.BO;

import java.sql.SQLException;

import model.DAO.CheckAddStudentDAO;
import model.DAO.CheckUpdateDAO;

public class CheckUpdateBO {
	CheckUpdateDAO checkUpdateDAO = new CheckUpdateDAO();
	public boolean UpdateStudent (String id, String name, int gender, String faculty) throws ClassNotFoundException, SQLException {
		return checkUpdateDAO.UpdateStudentInformation(id, name, gender, faculty);
	}
}	
