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
    <link rel="stylesheet" href="css/leggInnResultater.css">
    <link rel="stylesheet" href="css/navbar.css" >
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
            <input hidden type="text" value="<%=model.getResultatID()%>" name="resultatID">
            <div class="ÅrogUke">
            <input type="text" value="<%=model.getÅr()%>" name="år">
            <input type="text" value="<%=model.getUke()%>" name="uke">
            </div>
                <label>Score</label>
                <input type="text" value="<%=model.getScore()%>" name="score">
            <div class="navn">
                <input type="text" value="<%=model.getFornavn()%>" name="fornavn">
                <input type="text" value="<%=model.getEtternavn()%>" name="etternavn">
            </div>
            <div>
                <input type="text" value="<%=model.getKlasse()%>" name="klasse">
                <input type="text" value="<%=model.getKlubb()%>" name="klubb">
            </div>
        </div>

        <div>
            <input type="text" value="<%=model.getFemtusen_watt()%>" name="fremtusen_watt">
            <input type="text" value="<%=model.getFemtusen_tid()%>" name="femtusen_tid">
            <input type="text" value="<%=model.getTretusen_tid()%>" name="tretusen_tid">
            <input type="text" value="<%=model.getTotusen_tid()%>" name="totusen_tid">
            <input type="text" value="<%=model.getTotusen_watt()%>" name="totusen_watt">
            <input type="text" value="<%=model.getSekstiwatt()%>" name="seksti_watt">
            <input type="text" value="<%=model.getLiggroKilo()%>" name="liggero_kilo">
            <input type="text" value="<%=model.getLiggroProsent()%>" name="liggero_prosent">
            <input type="text" value="<%=model.getKnebøykilo()%>" name="kneboy_kilo">
            <input type="text" value="<%=model.getKnebøyprosent()%>" name="kneboy_prosent">
            <input type="text" value="<%=model.getBevegelighet()%>" name="bevegelighet">
            <input type="text" value="<%=model.getSargeant()%>" name="sargeant">
            <input type="text" value="<%=model.getKroppshev()%>" name="kroppshev">
        </div>

        <input class="SendInn" type="submit" value="Endre!">

    </form>
</div>
</body>
</html>
