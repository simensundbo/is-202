<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Velkommen</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/navbar.css" >
    <link rel="stylesheet" href="css/styles.css" >
    <link rel="shortcut icon" href="images/norges%20roforbund.png">



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
<div class="jumbotron main-img">
    <div class="container">
        <h1 class="display-3">Velkommen til Norges Roforbund</h1>
        <h4>Her finner du nye og gamle testresultater til alle utøvere i roforbundet</h4>
        <br><br><br>

    </div>
</div>


<div class="container">
    <h2>
        <% if(session.getAttribute("user")!=null) {
            Object x = session.getAttribute("user");
            out.print("Du er logget på som " + x);
        }
        %>
    </h2> <br>

    <div class="row">
        <div class="col-md-4">
            <h2>Siste testresultater</h2>
            <p>Alle testresultatene fra uke 44 er nå tilgjengelig. Sjekk de ut her! </p><br><br>
            <p><a class="btn btn-primary" href="newestResults" role="button">Siste testresultater</a></p>
        </div>
        <div class="col-md-4">
            <h2>Søk etter resultater</h2>
            <p>Her kan du spesifisere søket ditt etter år og uke.</p><br><br>
            <p><a class="btn btn-primary" href="søkResultater.jsp" role="button">Søk etter resultater</a></p>
        </div>
        <div class="col-md-4">
            <h2>Vis alle resultater</h2>
            <p>Her kan du se både nye og gamle resultater.</p> <br><br><br>
            <form action="getAllResults">
                <input type="submit" class="btn btn-primary" value="Vis alle resultater">
            </form>

        </div>
    </div>
    <hr>
</div>

<%

    if(session.getAttribute("user")!=null) {
    out.print("  <div class=\"container\">\n" +
            "    <div class=\"row\">\n" +
            "      <div class=\"col-md-4\">\n" +
            "        <h2>Legg inn nye resultater</h2>\n" +
            "        <p>Her kan trenere og forbundet legge inn nye resultater</p><br><br><br><br><br>\n" +
            "        <p><a class=\"btn btn-primary\" href=\"leggInnResultater.jsp\" role=\"button\">Legg inn nye resultater</a></p>\n" +
            "      </div>\n" +
            "      <div class=\"col-md-4\">\n" +
            "        <h2>Endre eller slette resultat</h2>\n" +
            "        <p>Her kan trenere og forbundet endre eller slette resultater</p><br><br><br>\n" +
            "            <form action=\"getAllResults\">\n" +
            "                <input type=\"submit\" class=\"btn btn-primary\" value=\"Endre eller slette!\">\n" +
            "            </form> \n" +
            "      </div>\n" +
            "      <div class=\"col-md-4\">\n" +
            "        <h2>Endre eller legg til en utøver</h2>\n" +
            "        <p>Her kan man endre informasjonen om en utøverer eller legge til nye</p><br><br><br>\n" +
            "            <form action=\"getAthletes\">\n" +
            "                <input type=\"submit\" class=\"btn btn-primary\" value=\"Endre eller slett\">\n" +
            "            </form>\n" +
            "      </div>\n" +
            "    </div>\n" +
            "    <hr>\n" +
            "  </div>");
    };
%>

<footer class="container">
    <p>
        Gruppe 1<br>
        UIA - 2020
    </p>
</footer>


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>