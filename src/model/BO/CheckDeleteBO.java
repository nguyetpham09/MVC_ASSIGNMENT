package model.BO;

import java.sql.SQLException;

import model.DAO.CheckDeleteDAO;

public class CheckDeleteBO {
	CheckDeleteDAO checkDeleteDAO = new CheckDeleteDAO();
	public boolean CheckDeleteStudent (String masv) throws ClassNotFoundException, SQLException {
		return checkDeleteDAO.CheckDeleteStudent(masv);
	}
}
