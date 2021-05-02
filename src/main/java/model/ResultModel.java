package model;

import Beans.Results;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ResultModel {
    private int resultatID;
    private String klubb;
    private String fornavn;
    private String etternavn;
    private int år;
    private double score;
    private int uke;
    private String klasse;
    private double femtusen_tid;
    private int femtusen_watt;
    private double tretusen_tid;
    private double totusen_tid;
    private int totusen_watt;
    private double sekstiwatt;
    private double liggroKilo;
    private double liggroProsent;
    private int knebøykilo;
    private double knebøyprosent;
    private int bevegelighet;
    private int sargeant;
    private int kroppshev;

    private final String addResultSQL= "insert into test202.results(år, uke, fornavn, etternavn, klasse, klubb, `5000_watt`, `5000_tid`, `3000_tid`, `2000_tid`, `2000_watt`, `60_watt`, liggro_kilo, liggro_prosent, knebøy_kilo, knebøy_prosent, bevegelighet, sargeant_cm, kroppshev) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
    private final String searchSQL= "select * from test202.results where klubb=? and Fornavn=? and Etternavn=? and Klasse=? and Uke=? and År=?;";
    private final String deleteSQL= "delete from test202.results where ResultatID=?;";
    private final String updateSQL= "update test202.results set år=?, uke=?, Score=?, fornavn=?, etternavn=?, klasse=?, klubb=?, 5000_watt=?, 5000_tid=?, 3000_tid=?, 2000_tid=?, 2000_watt=?, 60_watt=?, liggro_kilo=?, liggro_prosent=?, knebøy_kilo=?, knebøy_prosent=?, bevegelighet=?, sargeant_cm=?, kroppshev=? where ResultatID=?;";
    private final String resultByIdSQL= "select * from test202.results where ResultatID=?;";
    private final String listAllResultsSQL = "select * from test202.results;";
    private final String newestResultsSQL = "select * from test202.results where uke=44;";

    public int getResultatID() {
        return resultatID;
    }

    public void setResultatID(int resultatID) {
        this.resultatID = resultatID;
    }

    public String getKlubb() {
        return klubb;
    }

    public void setKlubb(String klubb) {
        this.klubb = klubb;
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

    public int getÅr() {
        return år;
    }

    public void setÅr(int år) {
        this.år = år;
    }

    public int getUke() {
        return uke;
    }

    public void setUke(int uke) {
        this.uke = uke;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getKlasse() {
        return klasse;
    }

    public void setKlasse(String klasse) {
        this.klasse = klasse;
    }

    public double getFemtusen_tid() {
        return femtusen_tid;
    }

    public void setFemtusen_tid(double femtusen_tid) {
        this.femtusen_tid = femtusen_tid;
    }

    public int getFemtusen_watt() {
        return femtusen_watt;
    }

    public void setFemtusen_watt(int femtusen_watt) {
        this.femtusen_watt = femtusen_watt;
    }

    public double getTretusen_tid() {
        return tretusen_tid;
    }

    public void setTretusen_tid(double tretusen_tid) {
        this.tretusen_tid = tretusen_tid;
    }

    public double getTotusen_tid() {
        return totusen_tid;
    }

    public void setTotusen_tid(double totusen_tid) {
        this.totusen_tid = totusen_tid;
    }

    public int getTotusen_watt() {
        return totusen_watt;
    }

    public void setTotusen_watt(int totusen_watt) {
        this.totusen_watt = totusen_watt;
    }

    public double getSekstiwatt() {
        return sekstiwatt;
    }

    public void setSekstiwatt(double sekstiwatt) {
        this.sekstiwatt = sekstiwatt;
    }

    public double getLiggroKilo() {
        return liggroKilo;
    }

    public void setLiggroKilo(double liggroKilo) {
        this.liggroKilo = liggroKilo;
    }

    public double getLiggroProsent() {
        return liggroProsent;
    }

    public void setLiggroProsent(double liggroProsent) {
        this.liggroProsent = liggroProsent;
    }

    public int getKnebøykilo() {
        return knebøykilo;
    }

    public void setKnebøykilo(int knebøykilo) {
        this.knebøykilo = knebøykilo;
    }

    public double getKnebøyprosent() {
        return knebøyprosent;
    }

    public void setKnebøyprosent(double knebøyprosent) {
        this.knebøyprosent = knebøyprosent;
    }

    public int getBevegelighet() {
        return bevegelighet;
    }

    public void setBevegelighet(int bevegelighet) {
        this.bevegelighet = bevegelighet;
    }

    public int getSargeant() {
        return sargeant;
    }

    public void setSargeant(int sargeant) {
        this.sargeant = sargeant;
    }

    public int getKroppshev() {
        return kroppshev;
    }

    public void setKroppshev(int kroppshev) {
        this.kroppshev = kroppshev;
    }


    public boolean insert() throws SQLException {
    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement(addResultSQL);

        ps.setInt(1, getÅr());
        ps.setInt(2, getUke());
        ps.setString(3, getFornavn());
        ps.setString(4, getEtternavn());
        ps.setString(5, getKlasse());
        ps.setString(6, getKlubb());
        ps.setInt(7, getFemtusen_watt());
        ps.setDouble(8, getFemtusen_tid());
        ps.setDouble(9, getTretusen_tid());
        ps.setDouble(10, getTotusen_tid());
        ps.setInt(11, getTotusen_watt());
        ps.setDouble(12, getSekstiwatt());
        ps.setDouble(13, getLiggroKilo());
        ps.setDouble(14, getLiggroProsent());
        ps.setInt(15, getKnebøykilo());
        ps.setDouble(16, getKnebøyprosent());
        ps.setInt(17, getBevegelighet());
        ps.setInt(18, getSargeant());
        ps.setInt(19, getKroppshev());

        int i = ps.executeUpdate();
        if(i!=0) {
            return true;
        }

        }catch (Exception e) {
        e.printStackTrace();
        }
        return false;
    }

    public boolean search(){
        try { //blir ikke brukt
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement(searchSQL);

            ps.setString(1, getKlubb());
            ps.setString(2, getFornavn());
            ps.setString(3, getEtternavn());
            ps.setString(4, getKlasse());
            ps.setInt(5, getUke());
            ps.setInt(6, getÅr());


            ResultSet result = ps.executeQuery();


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return false;
    }

    public boolean delete(){

        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement(deleteSQL);

            ps.setInt(1, getResultatID());

            int i= ps.executeUpdate();
            if (i!=0) {
                return true;
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
        }

        return false;

    }

    public boolean update() {
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement(updateSQL);

            ps.setInt(1, getÅr());
            ps.setInt(2, getUke());
            ps.setDouble(3, getScore());
            ps.setString(4, getFornavn());
            ps.setString(5, getEtternavn());
            ps.setString(6, getKlasse());
            ps.setString(7, getKlubb());
            ps.setInt(8, getFemtusen_watt());
            ps.setDouble(9, getFemtusen_tid());
            ps.setDouble(10, getTretusen_tid());
            ps.setDouble(11, getTotusen_tid());
            ps.setInt(12, getTotusen_watt());
            ps.setDouble(13, getSekstiwatt());
            ps.setDouble(14, getLiggroKilo());
            ps.setDouble(15, getLiggroProsent());
            ps.setInt(16, getKnebøykilo());
            ps.setDouble(17, getKnebøyprosent());
            ps.setInt(18, getBevegelighet());
            ps.setInt(19, getSargeant());
            ps.setInt(20, getKroppshev());
            ps.setInt(21, getResultatID());

            int i= ps.executeUpdate();
            if (i!=0) {
                return true;
            }


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return false;
    }

    public boolean resultById(){
        try{
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement(resultByIdSQL);

            ps.setInt(1, getResultatID());
            ResultSet rs=ps.executeQuery();

            while(rs.next()){
                setResultatID(rs.getInt(1));
                setÅr(rs.getInt(2));
                setUke(rs.getInt(3));
                setScore(rs.getDouble(4));
                setFornavn(rs.getString(5));
                setEtternavn(rs.getString(6));
                setKlasse(rs.getString(7));
                setKlubb(rs.getString(8));
                setFemtusen_watt(rs.getInt(9));
                setFemtusen_tid(rs.getDouble(10));
                setTretusen_tid(rs.getDouble(11));
                setTotusen_tid(rs.getDouble(12));
                setTotusen_watt(rs.getInt(13));
                setSekstiwatt(rs.getInt(14));
                setLiggroKilo(rs.getInt(15));
                setLiggroProsent(rs.getDouble(16));
                setKnebøykilo(rs.getInt(17));
                setKnebøyprosent(rs.getInt(18));
                setBevegelighet(rs.getInt(19));
                setSargeant(rs.getInt(20));
                setKroppshev(rs.getInt(21));
            }


        }catch(Exception e)
        {System.out.println(e);}

        return false;
    }

    public ArrayList<Results> getAllResults(){

        ArrayList<Results> a = new ArrayList<>();
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement(listAllResultsSQL);

            ResultSet rs=ps.executeQuery();

            while (rs.next()) {
                Results resultater = new Results(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDouble(10),
                        rs.getDouble(11),
                        rs.getDouble(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getInt(15),
                        rs.getDouble(16),
                        rs.getInt(17),
                        rs.getInt(18),
                        rs.getInt(19),
                        rs.getInt(20),
                        rs.getInt(21)
                );

                a.add(resultater);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return a;
    }

    public ArrayList<Results> newestResults(){

        ArrayList<Results> newestResults = new ArrayList<>();
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement(newestResultsSQL);

            ResultSet rs=ps.executeQuery();

            while (rs.next()) {
                Results resultater = new Results(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getDouble(10),
                        rs.getDouble(11),
                        rs.getDouble(12),
                        rs.getInt(13),
                        rs.getInt(14),
                        rs.getInt(15),
                        rs.getDouble(16),
                        rs.getInt(17),
                        rs.getInt(18),
                        rs.getInt(19),
                        rs.getInt(20),
                        rs.getInt(21)
                );

                newestResults.add(resultater);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return newestResults;
    }


}
