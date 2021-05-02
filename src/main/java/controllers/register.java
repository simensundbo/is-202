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
import java.util.Base64;

@WebServlet(name = "register", urlPatterns = "/register")
public class register extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        /*if(req.getAttribute("method") == "insert") {
            insert(req, res);
        } else if(req.getAttribute("method") == "login") {
            login();
            }
        */

        req.setCharacterEncoding("UTF-8");

        res.setContentType("test/html");

        String u=req.getParameter("uname");
        String p=req.getParameter("pass");

        UserModel model = new UserModel();

        Base64.Encoder encoder = Base64.getEncoder();

        String es = encoder.encodeToString(p.getBytes());

        model.setName(u);
        model.setPass(es);

        boolean status = model.registerUser();

        if(status) {
            HttpSession session = req.getSession();
            session.setAttribute("user", model.getName());
            RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
            rd.forward(req, res);
        } else {
            RequestDispatcher rd=req.getRequestDispatcher("500Error.jsp");
            rd.forward(req, res);
        }


    }

}
