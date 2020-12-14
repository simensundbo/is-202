package controllers;

import Beans.Athletes;
import model.AthletesModel;

import javax.jms.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "getAthletes", urlPatterns = "/getAthletes")
public class getAthletes extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        AthletesModel model = new AthletesModel();

        ArrayList<Athletes> athlete = model.getAllAthletes();

        req.setAttribute("data", athlete);

        HttpSession session = req.getSession();

        if(session.getAttribute("user") == null) {
            RequestDispatcher rd = req.getRequestDispatcher("athletes.jsp");
            rd.forward(req, res);
        } else {
            RequestDispatcher rd = req.getRequestDispatcher("editOrDeleteAthletes.jsp");
            rd.forward(req, res);
        }
    }
}
