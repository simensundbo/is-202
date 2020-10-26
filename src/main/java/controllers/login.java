package controllers;

import model.UserModel;
import model.loginDB;

import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "login", urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String u = req.getParameter("uname");
        String p = req.getParameter("pass");

        UserModel model = new UserModel();

        model.setName(u);
        model.setPass(p);

        boolean status = model.loginUser();

        if (status) {
            HttpSession session = req.getSession();
            session.setAttribute("user", model.getName());
            RequestDispatcher rd=req.getRequestDispatcher("welcome.jsp");
            rd.forward(req, res);

        } else {
            RequestDispatcher rs = req.getRequestDispatcher("loginError.jsp");
            //req.setAttribute("");
            rs.forward(req, res);
        }


        /*
        loginDB db = new loginDB();

        if (db.validate(uname, pass)) {

            RequestDispatcher rs = req.getRequestDispatcher("welcome.jsp");
           rs.forward(req, res);
            //res.sendRedirect("welcome.jsp");

        } else {

            res.sendRedirect("loginError.jsp");

        }
        */

        out.close();
    }
}
