package controllers;

import model.ResultModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "edit", urlPatterns = "/edit")
public class edit extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int år = Integer.parseInt(req.getParameter("år"));
        int uke = Integer.parseInt(req.getParameter("uke"));
        int score = Integer.parseInt(req.getParameter("score"));
        String fornavn = req.getParameter("fornavn");
        String etternavn = req.getParameter("etternavn");
        String klasse = req.getParameter("klasse");
        String klubb = req.getParameter("klubb");

        double femtusen_tid=Double.parseDouble(req.getParameter("femtusen_tid"));
        int femtusen_watt=Integer.parseInt(req.getParameter("fremtusen_watt"));
        double tretusen_tid=Double.parseDouble(req.getParameter("tretusen_tid"));
        double totusen_tid=Double.parseDouble(req.getParameter("totusen_tid"));
        int totusen_watt=Integer.parseInt(req.getParameter("totusen_watt"));
        double sekstiwatt=Double.parseDouble(req.getParameter("seksti_watt"));
        double liggrokilo = Double.parseDouble(req.getParameter("liggero_kilo"));
        double liggroprosent = Double.parseDouble(req.getParameter("liggero_prosent"));
        int knebøykilo = Integer.parseInt(req.getParameter("kneboy_kilo"));
        double knebøyprosent = Double.parseDouble(req.getParameter("kneboy_prosent"));
        int bevegelighet=Integer.parseInt(req.getParameter("bevegelighet"));
        int sargeant=Integer.parseInt(req.getParameter("sargeant"));
        int kroppshev=Integer.parseInt(req.getParameter("kroppshev"));

        
        System.out.println(fornavn);
        System.out.println(etternavn);
        System.out.println(knebøykilo);
        System.out.println(knebøyprosent);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
