<%@ page import="model.ResultModel" %><%--
  Created by IntelliJ IDEA.
  User: simensundbo
  Date: 12/11/2020
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Endre</title>
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/leggInnResultater.css">
</head>
<body>
<header>
    <a class="logo" href="index.jsp"><img class="logo" src="images/norges%20roforbund.png"></a>
    <nav class="navbar">
        <ul class="nav_links">
            <li><a href="#">Klubber</a></li>
            <li><a href="allResults.jsp">Resultater</a></li>
            <li><a href="roing.no">Norges Roforbund</a></li>
            <li><a href="#">Kontakt oss</a></li>
        </ul>

    </nav>
    <% if(session.getAttribute("user")==null) {
        out.print("<a href=\"login.jsp\"><button>Logg inn</button></a>");
    } else {
        out.print("<a href=\"logout\"><button>Logg ut</button></a>");
    }
    %>
</header>


<%
    int id = Integer.parseInt(request.getParameter("resultatID"));
    ResultModel model = new ResultModel();
    model.setResultatID(id);
    model.resultById();
%>

<div class="regform">
    <form action="edit" method="post">
        <h1>Endre testresultatet</h1>
        <div class="Filtrer">
            <h2>Rediger utøver</h2>
            <input hidden type="text" value="<%=model.getResultatID()%>" name="resultatID">
            <input type="text" placeholder="Klubb" value="<%=model.getKlubb()%>" name="klubb">
            <br>
            <div class="navn">
                <input type="text" placeholder="Fornavn" value="<%=model.getFornavn()%>" name="fornavn">
                <input type="text" placeholder="Etternavn" value="<%=model.getEtternavn()%>" name="etternavn">
            </div>
            <div class="ÅrogUkeFilter">
                <h2>Rediger test</h2>
                <input type="text" placeholder="År" value="<%=model.getÅr()%>" name="år">

                <input type="text" placeholder="Uke" value="<%=model.getUke()%>" name="uke">
            </div>
        </div>
        <div class="Filtrer">
            <h2>Rediger klasse</h2>
            <input type="text" value="<%=model.getKlasse()%>" name="klasse">
        </div>
        <br>
        <div class="Resultater">
            <label>Score</label>
            <input type="text" placeholder="Sum" value="<%=model.getScore()%>" name="score">
        </div>
        <div class="Resultater">
            <label>5000 meter</label>
            <input type="text" placeholder="Tid" value="<%=model.getFemtusen_tid()%>" name="femtusen_tid">
            <input type="text" placeholder="Watt" value="<%=model.getFemtusen_watt()%>" name="femtusen_watt">
        </div>
        <div class="Resultater">
            <label>3000 meter</label>
            <input type="text" placeholder="Tid" value="<%=model.getTretusen_tid()%>" name="tretusen_tid">
        </div>
        <div class="Resultater">
            <label>2000 meter</label>
            <input type="text" placeholder="Tid" value="<%=model.getTotusen_tid()%>" name="totusen_tid">
            <input type="text" placeholder="Watt" value="<%=model.getTotusen_watt()%>" name="totusen_watt">
        </div>
        <div class="Resultater">
            <label>60"</label>
            <input type="text" placeholder="Watt" value="<%=model.getSekstiwatt()%>" name="seksti_watt">
        </div>
        <div class="Resultater">
            <label>Liggende rotak</label>
            <input type="text" placeholder="Kilo" value="<%=model.getLiggroKilo()%>" name="liggero_kilo">
            <input type="text" placeholder="Prosent" value="<%=model.getLiggroProsent()%>" name="liggero_prosent">
        </div>
        <div class="Resultater">
            <label>Knebøy</label>
            <input type="text" placeholder="Kilo" value="<%=model.getKnebøykilo()%>" name="kneboy_kilo">
            <input type="text" placeholder="Prosent" value="<%=model.getKnebøyprosent()%>" name="kneboy_prosent">
        </div>
        <div class="Resultater">
            <label>Bevegelighet</label>
            <input type="text" placeholder="Antall" value="<%=model.getBevegelighet()%>" name="bevegelighet">
        </div>
        <div class="Resultater">
            <label>Sargeant</label>
            <input type="text" placeholder="Cm" value="<%=model.getSargeant()%>" name="sargeant">
        </div>
        <div class="Resultater">
            <label>Kroppshev</label>
            <input type="text" placeholder="Antall" value="<%=model.getKroppshev()%>" name="kroppshev">
        </div>
        <div class="Knapper">
            <button class="SendInn" type="submit" name="Endre!">Endre!</button>
        </div>
    </form>
</div>
</body>
</html>
