package model;


import Beans.Athletes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AthletesModel {
    private int utøverID;
    private String fornavn;
    private String etternavn;
    private int fødeselsår;
    private int vekt;
    private int høyde;
    private String klubb;
    private String klasse;

    private final String allAthletesSQL = ("select * from 202db.athletes;");
    private final String deleteSQL = ("delete from 202db.athletes where UtøverID=?;");

    public int getUtøverID() {
        return utøverID;
    }

    public void setUtøverID(int utøverID) {
        this.utøverID = utøverID;
    }

    public String getFornavn() {
        return fornavn;
    }

    public void setFornavn(String fornavn) {
        this.fornavn = fornavn;
    }

    public String getEtternavn() {
        return etternavn;
    }

    public void setEtternavn(String etternavn) {
        this.etternavn = etternavn;
    }

    public int getFødeselsår() {
        return fødeselsår;
    }

    public void setFødeselsår(int fødeselsår) {
        this.fødeselsår = fødeselsår;
    }

    public int getVekt() {
        return vekt;
    }

    public void setVekt(int vekt) {
        this.vekt = vekt;
    }

    public int getHøyde() {
        return høyde;
    }

    public void setHøyde(int høyde) {
        this.høyde = høyde;
    }

    public String getKlubb() {
        return klubb;
    }

    public void setKlubb(String klubb) {
        this.klubb = klubb;
    }

    public String getKlasse() {
        return klasse;
    }

    public void setKlasse(String klasse) {
        this.klasse = klasse;
    }


    public ArrayList<Athletes> getAllAthletes(){

        ArrayList<Athletes> a = new ArrayList<>();
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement(allAthletesSQL);

            ResultSet rs=ps.executeQuery();

            while (rs.next()) {
                Athletes athlete = new Athletes(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8)
                );

                a.add(athlete);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return a;
    }


    public boolean delete(){
        try{
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement(deleteSQL);

            ps.setInt(1, getUtøverID());

            int i= ps.executeUpdate();
            if (i!=0) {
                return true;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return false;
    }




}



