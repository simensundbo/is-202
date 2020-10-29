package model;

public class ResultModel {
    private String klubb;
    private String fornavn;
    private String etternavn;
    private int år;
    private int uke;
    private String klasse;
    private double femtusen_tid;
    private int femtusen_watt;
    private String tretusen_tid;
    private String totusen_tid;
    private String totusen_watt;
    private String sekstiwatt;
    private String liggroKilo;
    private String liggroProsent;
    private String knebøykilo;
    private String knebøyprosent;
    private String bevegelighet;
    private String sargeant;
    private String kroppshev;

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
}
