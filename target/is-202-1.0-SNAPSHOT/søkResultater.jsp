<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Søk etter resultater</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/navbar.css" >
    <link rel="stylesheet" href="css/søkResultater.css">
</head>
<body class="bakgrund">
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

<form action="searchResults.jsp" method="get">
    <div class="søkform">
        <h1>Søk etter resultater</h1>
        <h2>Filtrer ditt søk</h2>
        <div class="KlasseUkeÅr">
            <h3>Velg test</h3>
            <select class="ÅrSøk" name="aar">
                <option disabled="disabled" selected="selected">År</option>
                <option value="2020"> 2020 </option>
                <option value="2019"> 2019 </option>
            </select>

            <select class="UkeSøk" name="uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option value="2"> Uke 2 </option>
                <option value="11"> Uke 11 </option>
                <option value="44"> Uke 44 </option>
            </select>
        </div>
        <div>
            <button class="søk" type="submit">Vis resultater!</button>
        </div>
    </div>
</form>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
