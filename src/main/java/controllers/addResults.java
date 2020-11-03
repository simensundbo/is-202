package controllers;

import model.ResultModel;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;

@WebServlet(name = "addResults", urlPatterns = "/addResults")
public class addResults extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String klubb=req.getParameter("Klubb");
        String fornavn=req.getParameter("Fornavn");
        String etternavn=req.getParameter("Etternavn");
        int år = Integer.parseInt(req.getParameter("aar"));
        int uke=Integer.parseInt(req.getParameter("Uke"));
        String klasse=req.getParameter("Klasse");

        double femtusen_tid=Double.parseDouble(req.getParameter("5000tid"));
        int femtusen_watt=Integer.parseInt(req.getParameter("5000watt"));
        double tretusen_tid=Double.parseDouble(req.getParameter("3000tid"));
        double totusen_tid=Double.parseDouble(req.getParameter("2000tid"));
        int totusen_watt=Integer.parseInt(req.getParameter("2000watt"));
        double sekstiwatt=Double.parseDouble(req.getParameter("60watt"));
        double liggroKilo=Double.parseDouble(req.getParameter("LiggroKilo"));
        double liggroProsent=Double.parseDouble(req.getParameter("LiggroProsent"));
        int knebøykilo=Integer.parseInt(req.getParameter("KneboyKilo"));
        double knebøyprosent=Double.parseDouble(req.getParameter("KneboyProsent"));
        int bevegelighet=Integer.parseInt(req.getParameter("Bevegelighet"));
        int sargeant=Integer.parseInt(req.getParameter("Sargeant"));
        int kroppshev=Integer.parseInt(req.getParameter("Kroppshev"));

        ResultModel model = new ResultModel();

        model.setKlubb(klubb);
        model.setFornavn(fornavn);
        model.setEtternavn(etternavn);
        model.setÅr(år);
        model.setUke(uke);
        model.setKlasse(klasse);

        model.setFemtusen_tid(femtusen_tid);
        model.setFemtusen_watt(femtusen_watt);
        model.setTretusen_tid(tretusen_tid);
        model.setTotusen_tid(totusen_tid);
        model.setTotusen_watt(totusen_watt);
        model.setSekstiwatt(sekstiwatt);
        model.setLiggroKilo(liggroKilo);
        model.setLiggroProsent(liggroProsent);
        model.setKnebøykilo(knebøykilo);
        model.setKnebøyprosent(knebøyprosent);
        model.setBevegelighet(bevegelighet);
        model.setSargeant(sargeant);
        model.setKroppshev(kroppshev);

        boolean status  = false;
        try {
            status = model.insert();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        if(status) {
            HttpSession session = req.getSession();
            session.getAttribute("user");
            res.sendRedirect("welcome.jsp");

        } else {

        }

    }


}


