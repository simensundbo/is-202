package controllers;

import model.loginDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "login", urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String uname =req.getParameter("uname");
        String pass =req.getParameter("pass");

        loginDB db = new loginDB();
        if(db.validate(uname, pass)){

            res.sendRedirect("welcome.html");

        }else {
            out.println("<p>Feil brukernavn eller passord.</p>");

        }

        out.close();
    }


}
