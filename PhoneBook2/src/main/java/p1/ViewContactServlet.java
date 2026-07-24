package p1;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/viewcontact")
public class ViewContactServlet extends  HttpServlet{
	protected void doGet(HttpServletRequest req,HttpServletResponse res)
 throws ServletException ,IOException{
		List<Contactbean>data=new ContactDao().viewContacts();
		req.setAttribute("contact",data);
		RequestDispatcher rd = req.getRequestDispatcher("viewcontact.jsp");
		rd.forward(req,res);

}
}