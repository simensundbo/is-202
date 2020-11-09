package controllers;

import model.UserModel;

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
        HttpSession session = req.getSession();

        if (status) {
            session.setAttribute("user", model.getName());
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            rd.forward(req, res);

        } else {
            session.invalidate();
            req.setAttribute("errorMessage", "Feil passord eller brukernavn, prøv på nytt!");
            RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
            rd.forward(req, res);

        }

        out.close();
    }
}
