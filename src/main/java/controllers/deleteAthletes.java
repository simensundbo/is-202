package controllers;

import model.AthletesModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "deleteAthletes", urlPatterns = "/deleteAthletes")
public class deleteAthletes extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int utøverID = Integer.parseInt(req.getParameter("utøverID"));

        AthletesModel model = new AthletesModel();
        //Burkes for testing
        //System.out.println(utøverID);

        model.setUtøverID(utøverID);

        boolean status = model.delete();

        if(status){
            HttpSession session = req.getSession();
            session.getAttribute("user");
            res.sendRedirect("getAthletes");
        } else {
            res.sendRedirect("500Error.jsp");
        }
    }

}
