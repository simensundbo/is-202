package controllers;

import Beans.Results;
import model.ResultModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "getAllResults", urlPatterns = "/getAllResults")
public class getAllResults extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ResultModel model = new ResultModel();

        ArrayList<Results> result  = model.getAllResults();

        req.setAttribute("results", result);

        System.out.println(req.getParameter("results"));



        if(req.getParameter("results") != null) {
            RequestDispatcher rd = req.getRequestDispatcher("Results.jsp");
            rd.forward(req, res);
        } else {
            RequestDispatcher rd = req.getRequestDispatcher("editOrDeleteResults.jsp");
            rd.forward(req, res);
        }

    }
}
