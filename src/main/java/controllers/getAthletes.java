package controllers;

import Beans.Athletes;
import model.AthletesModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "getAthletes", urlPatterns = "/getAthletes")
public class getAthletes extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AthletesModel model = new AthletesModel();

        ArrayList<Athletes> athlete = model.getAllAthletes();

        request.setAttribute("data", athlete);

        RequestDispatcher rd = request.getRequestDispatcher("athletes.jsp");
        rd.forward(request, response);
    }
}
