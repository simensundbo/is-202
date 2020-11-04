package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResultModel {
    private String klubb;
    private String fornavn;
    private String etternavn;
    private int år;
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

    private final String addResultSQL= "insert into test202.results(år, uke, fornavn, etternavn, klasse, klubb, `5000_watt`, `5000_tid`, `3000_tid`, `2000_tid`, `2000_watt`, `60_watt`, liggro_kilo, liggro_prosent, knebøy_kilo, knebøy_prosent, bevegelighet, sargeant_cm, kroppshev) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    private final String searchSQL= "select * from test202.results where klubb=? and Fornavn=? and Etternavn=? and Klasse=? and Uke=? and År=?";


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
        try {
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

}
