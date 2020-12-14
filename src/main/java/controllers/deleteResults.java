package controllers;

import model.ResultModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "deleteResults", urlPatterns = "/deleteResults")
public class deleteResults extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {


        int resultatID = Integer.parseInt(req.getParameter("resultatID"));

        ResultModel model = new ResultModel();

        model.setResultatID(resultatID);

        boolean status = model.delete();

        if(status){
            HttpSession session = req.getSession();
            session.getAttribute("user");
            req.setAttribute("deleteSucceeds", "Resultatet ble slettet!");
            res.sendRedirect("getAllResults");

        } else {
            req.setAttribute("deleteError", "En feil skjedde. Prøv på nytt!");
            res.sendRedirect("getAllResults");
        }

    }

}
