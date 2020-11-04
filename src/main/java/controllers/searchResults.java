package controllers;

import model.ResultModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "searchResults", urlPatterns = "/searchResults")
public class searchResults extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String klubb=req.getParameter("Klubb");
        String fornavn=req.getParameter("Fornavn");
        String etternavn=req.getParameter("Etternavn");
        String klasse=req.getParameter("Klasse");
        int uke=Integer.parseInt(req.getParameter("Uke"));
        int år = Integer.parseInt(req.getParameter("aar"));


        ResultModel model = new ResultModel();


        model.setKlubb(klubb);
        model.setFornavn(fornavn);
        model.setEtternavn(etternavn);
        model.setKlasse(klasse);
        model.setUke(uke);
        model.setÅr(år);

        model.search();





    }
}
