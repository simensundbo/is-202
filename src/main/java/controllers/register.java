package controllers;

import model.ConnectionProvider;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "register", urlPatterns = "/register")
public class register extends HttpServlet {
    private String sql = "insert into test.login (uname, pass) values (?,?)";

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {


        res.setContentType("test/html");
        PrintWriter out = res.getWriter();

        String u=req.getParameter("uname");
        String p=req.getParameter("pass");



        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement li = con.prepareStatement(sql);

            li.setString(1, u);
            li.setString(2, p);

            int r = li.executeUpdate();
            if (r>0) {
                res.sendRedirect("welcome.html");
            }



        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

}
