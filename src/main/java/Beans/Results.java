package Beans;

public class Results {
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


    public Results(int resultatID, int år, int uke, double score, String fornavn, String etternavn, String klasse, String klubb, int femtusen_watt, double femtusen_tid, double tretusen_tid, double totusen_tid,
                   int totusen_watt, double sekstiwatt, double liggroKilo, double liggroProsent, int knebøykilo, double knebøyprosent, int bevegelighet, int sargeant, int kroppshev){
        this.resultatID = resultatID;
        this.klubb = klubb;
        this.fornavn = fornavn;
        this.etternavn = etternavn;
        this.år = år;
        this.score = score;
        this.uke = uke;
        this.klasse = klasse;
        this.femtusen_tid = femtusen_tid;
        this.femtusen_watt = femtusen_watt;
        this.tretusen_tid = tretusen_tid;
        this.totusen_tid = totusen_tid;
        this.totusen_watt = totusen_watt;
        this.sekstiwatt = sekstiwatt;
        this.liggroKilo = liggroKilo;
        this.liggroProsent = liggroProsent;
        this.knebøykilo= knebøykilo;
        this.knebøyprosent = knebøyprosent;
        this.bevegelighet = bevegelighet;
        this.sargeant = sargeant;
        this.kroppshev = kroppshev;
    }

}
