package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet  extends  HttpServlet{
	protected void doPost(HttpServletRequest req,HttpServletResponse res)
 throws ServletException ,IOException{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		User ub= new userdao().login(req);
		if(ub==null) {
			pw.println("invalid email or password");
			RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
			rd.include(req, res);
		
		}else {
			HttpSession hs=req.getSession();
			hs.setAttribute("name",ub.getName());
			RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
			rd.forward(req,res);
		}
		
	}
}
