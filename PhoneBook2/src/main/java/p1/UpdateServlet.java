package p1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Updatecontact")
public class UpdateServlet extends HttpServlet{
protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

    Contactbean cb = new Contactbean();

    cb.setId(Integer.parseInt(req.getParameter("id")));
    cb.setName(req.getParameter("name"));
    cb.setEmail(req.getParameter("email"));
    cb.setPhno(req.getParameter("phno"));
    cb.setAbt(req.getParameter("abt"));

    new ContactDao().updateContact(cb);

    res.sendRedirect("viewcontact");
}
}
