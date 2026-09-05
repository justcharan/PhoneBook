package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/editcontact")
public class EditConatactServlet extends  HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)
 throws ServletException ,IOException{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();
		int id=Integer.parseInt(req.getParameter("id"));
		 Contactbean edit= new ContactDao().editcontact(id);
		 req.setAttribute("edit", edit);
		 RequestDispatcher rd= req.getRequestDispatcher("editcontact.jsp");
		 rd.forward(req,res);

}
}
