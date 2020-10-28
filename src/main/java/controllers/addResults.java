package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addResults", urlPatterns = "/addResults")
public class addResults extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        res.setContentType("text/html");

        String klubb=req.getParameter("Klubb");
        String fornavn=req.getParameter("Fornavn");
        String etternavn=req.getParameter("Etternavn");
        String år=req.getParameter("År");
        String uke=req.getParameter("Uke");
        String klasse=req.getParameter("Klasse");

        String femtusen_tid=req.getParameter("5000tid");
        String femtusen_watt=req.getParameter("5000watt");
        String tretusen_tid=req.getParameter("3000tid");
        String totusen_tid=req.getParameter("2000tid");
        String totusen_watt=req.getParameter("2000watt");
        String sekstiwatt=req.getParameter("60watt");
        String liggroKilo=req.getParameter("LiggroKilo");
        String liggroProsent=req.getParameter("LiggroProsent");
        String knebøykilo=req.getParameter("KnebøyKilo");
        String knebøyprosent=req.getParameter("KnebøyProsent");
        String bevegelighet=req.getParameter("Bevegelighet");
        String sargeant=req.getParameter("Sargeant");
        String kroppshev=req.getParameter("Kroppshev");


    }

}


