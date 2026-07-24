package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class RegisterServlet  extends  HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)
 throws ServletException ,IOException{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		int i= new userdao().Register(req);
		if(i>0) {
			pw.println("Register Successfuly");
		res.sendRedirect("login.jsp");
		
		}
		else {
			res.sendRedirect("Register.jsp");
		}

}
}
