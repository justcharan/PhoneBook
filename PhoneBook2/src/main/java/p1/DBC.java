package p1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBC {
	public static Connection getcon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/phonebook","root","root");
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
