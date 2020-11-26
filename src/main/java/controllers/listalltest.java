package controllers;

import model.Athletes;
import model.ResultModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet(name = "listalltest", urlPatterns = "/listalltest")
public class listalltest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ResultModel model = new ResultModel();

        boolean result  = model.listAllResults();

        request.setAttribute("results", result);

        if(result) {
            RequestDispatcher rd = request.getRequestDispatcher("listallresultstest.jsp");
            rd.forward(request, response);
        } else {
            System.out.println("En feil skjedde");
        }

    }
}
