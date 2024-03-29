package controllers;

import model.AthletesModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "editAthletes", urlPatterns = "/editAthletes")
public class editAthletes extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int Id = Integer.parseInt(req.getParameter("utøverID"));
        String fornavn = req.getParameter("fornavn");
        String etternavn = req.getParameter("etternavn");
        int fødselsår = Integer.parseInt(req.getParameter("fødselsår"));
        int vekt = Integer.parseInt(req.getParameter("vekt"));
        int høyde = Integer.parseInt(req.getParameter("høyde"));
        String klubb = req.getParameter("klubb");
        String klasse = req.getParameter("klasse");

        AthletesModel model = new AthletesModel();

        model.setUtøverID(Id);
        model.setFornavn(fornavn);
        model.setEtternavn(etternavn);
        model.setFødeselsår(fødselsår);
        model.setVekt(vekt);
        model.setHøyde(høyde);
        model.setKlubb(klubb);
        model.setKlasse(klasse);

        boolean status = model.update();

        if(status) {
            res.sendRedirect("getAthletes");
        }else {
            res.sendRedirect("500Error.jsp");
        }
    }


}
