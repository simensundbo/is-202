<%@ page import="model.AthletesModel" %><%--
  Created by IntelliJ IDEA.
  User: simensundbo
  Date: 15/12/2020
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Endre utøver informasjon</title>
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/leggInnResultater.css">
</head>
<body>
<header>
    <a class="logo" href="index.jsp"><img class="logo" src="images/norges%20roforbund.png"></a>
    <nav class="navbar">
        <ul class="nav_links">
            <li><a href="#">Klubber</a></li>
            <li><a href="getAthletes">Utøvere</a></li>
            <li><a href="https://www.roing.no/">Norges Roforbund</a></li>
            <li><a href="contactUs.jsp">Kontakt oss</a></li>
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
    int Id = Integer.parseInt(request.getParameter("utoverID"));
    AthletesModel model = new AthletesModel();
    model.setUtøverID(Id);
    model.athleteById();
%>

    <div class="regform">
        <form action="editAthletes" method="post">
            <h1>Endre utøver infomrasjon</h1>
            <div class="Filtrer">
                <h2>Endre navn og fødselsår</h2>
                <input type="text" placeholder="Fornavn" value="<%=model.getFornavn()%>" name="fornavn">
                <input type="text" placeholder="Etternavn" value="<%=model.getEtternavn()%>" name="etternavn">
                <input type="text" placeholder="Fødselsår" value="<%=model.getFødeselsår()%>" name="fødselsår">
            </div>
            <div class="Filtrer">
                <h2>Endre vekt og høyde (Valgfritt)</h2>
                <input type="text" placeholder="Vekt" value="<%=model.getVekt()%>" name="vekt">
                <input type="text" placeholder="Høyde" value="<%=model.getHøyde()%>" name="høyde">
            </div>
            <div class="Filtrer">
                <h2>Endre på klubb og klasse</h2>
                <input type="text" placeholder="Klubb" value="<%=model.getKlubb()%>" name="klubb">
                <input type="text" placeholder="Klasse" value="<%=model.getKlasse()%>" name="klasse">
            </div>
            <div class="Knapper">
                <button class="SendInn" type="submit" name="Endre!">Endre!</button>
            </div>
        </form>
    </div>

</body>
</html>