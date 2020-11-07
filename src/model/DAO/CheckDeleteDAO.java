package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CheckDeleteDAO {
	public boolean CheckDeleteStudent (String masv) throws SQLException, ClassNotFoundException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		Connection connection = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-KRLMP3T\\SQLEXPRESS:1433;databaseName=ltm;integratedSecurity=true");
		Statement statement = connection.createStatement();
		String query = "delete from student where id='"+masv+"'";
		int rs = statement.executeUpdate(query);
		if (rs==1) return true;
		return false;
	}
}
