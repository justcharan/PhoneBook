package p1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ContactDao {
	
	public int add(HttpServletRequest req) {
		int i=0;
		try {
		Connection con=DBC.getcon();
		PreparedStatement ps=con.prepareStatement("insert into contact(name,email,phno,about)values(?,?,?,?)");
		ps.setString(1, req.getParameter("name"));
		ps.setString(2, req.getParameter("email"));
		ps.setString(3, req.getParameter("phno"));
		ps.setString(4, req.getParameter("abt"));
		 i=ps.executeUpdate();
		
	
	}catch(Exception e) {
		e.printStackTrace();
	}
		return i;

}
	public List<Contactbean>viewContacts(){
		List<Contactbean>List=new ArrayList<>();
		try {
			Connection con=DBC.getcon();
			PreparedStatement ps= con.prepareStatement("Select * from contact");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				 Contactbean cb= new Contactbean();
				cb.setId(rs.getInt(1));
				cb.setName(rs.getString(2));
				cb.setEmail(rs.getString(3));
				cb.setPhno(rs.getString(4));
				cb.setAbt(rs.getString(5));
				List.add(cb);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return List;
	}
		
	public Contactbean editcontact(int id) {
		Contactbean cb=null;
		try {
			Connection con=DBC.getcon();
			PreparedStatement ps= con.prepareStatement("Select * from contact where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				  cb= new Contactbean();
				cb.setId(rs.getInt(1));
				cb.setName(rs.getString(2));
				cb.setEmail(rs.getString(3));
				cb.setPhno(rs.getString(4));
				cb.setAbt(rs.getString(5));
	}
	}catch(Exception e) {
		e.printStackTrace();
	}
		return cb;
	}
	public int updateContact(Contactbean cb) {
	    int i = 0;
	    try {
	        Connection con = DBC.getcon();
	        PreparedStatement ps = con.prepareStatement(
	            "UPDATE contact SET name=?, email=?, phno=?, about=? WHERE id=?"
	        );

	        ps.setString(1, cb.getName());
	        ps.setString(2, cb.getEmail());
	        ps.setString(3, cb.getPhno());
	        ps.setString(4, cb.getAbt());
	        ps.setInt(5, cb.getId());

	        i = ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return i;
	}
	public int  delete(int id) {
		int i=0;
		try {
			Connection con=DBC.getcon();
			PreparedStatement ps = con.prepareStatement("delete  from contact where id=?");
		ps.setInt(1, id);
		i=ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
		
	}
}

