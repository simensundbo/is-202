package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Athletes {
    private int utøverID;
    private String fornavn;
    private String etternavn;
    private int fødeselsår;
    private int vekt;
    private int høyde;
    private String klubb;
    private String klasse;

    private final String allAthletesSQL = ("select * from 202db.athletes;");


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




    public Athletes(int utøverID, String fornavn, String etternavn, int fødeselsår, int vekt, int høyde, String klubb, String klasse){

        this.utøverID = utøverID;
        this.fornavn = fornavn;
        this.etternavn = etternavn;
        this.fødeselsår = fødeselsår;
        this.vekt = vekt;
        this.høyde = høyde;
        this.klubb = klubb;
        this.klasse = klasse;

    }



}
