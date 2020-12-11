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

@WebServlet(name = "newestResults", urlPatterns = "/newestResults")
public class newestResults extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ResultModel model = new ResultModel();

        ArrayList<Results> newestResults  = model.newestResults();

        req.setAttribute("newestResults", newestResults);

        RequestDispatcher rd = req.getRequestDispatcher("newestResults.jsp");
        rd.forward(req, res);

    }
}
