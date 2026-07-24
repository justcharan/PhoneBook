package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

public class userdao {
	public User ub=null;
	public User login(HttpServletRequest req) {
		try {
			Connection con=DBC.getcon();
			PreparedStatement ps= con.prepareStatement("Select * from users where email=? and password=?");
			ps.setString(1, req.getParameter("email"));
			ps.setString(2,req.getParameter("password"));
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				ub= new User();
				ub.setId(rs.getInt(1));
				ub.setName(rs.getString(2));
				ub.setEmail(rs.getString(3));
				ub.setPassword(rs.getString(4));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return ub;
	}
	public int Register(HttpServletRequest req) {
		int i=0;
		try {
			Connection con=DBC.getcon();
			PreparedStatement ps= con.prepareStatement("insert into users(name, email,password)values(?,?,?)");
		 ps.setString(1, req.getParameter("name"));
		 ps.setString(2, req.getParameter("email"));
		 ps.setString(3, req.getParameter("password"));
		 i= ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}

}
