package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class CheckAddStudentDAO {
	public boolean addStudent (String id, String name, int gender, String faculty) throws ClassNotFoundException, SQLException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		Statement statement = connection.createStatement();
		String query = "INSERT INTO student (id, name, gender, faculty) VALUES ( \'"+id+"\',\'"+name+"\',\'"+gender+"\',\'"+faculty+"\')" ;
		int rs = statement.executeUpdate(query);
		if (rs==1) return true;
		return false;
	}
}
