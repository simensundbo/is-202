<%@ page import="helpers.navbar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nye resultater</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
<div class="regform">
    <form action="addResults" method="post">
        <h1>Legg inn resultater</h1>
        <div class="Filtrer">
            <h2>Velg utøver</h2>
            <select class="Klubb" name="Klubb" id="Klubb">
                <option disabled="disabled" selected="selected">Klubb</option>
                <option value="Arendals"> Arendals Roklubb </option>
                <option value="Bærum"> Bærum Roklubb </option>
                <option value="Kristiansand"> Kristiansand Roklubb </option>
                <option value="Oslo"> Oslo Roklubb </option>
                <option value="Porsgrunn"> Porsgrunn Roklubb </option>
            </select>
            <br>
            <div class="navn">
                <input class="fornavn" type="text" placeholder="Fornavn" name="Fornavn">
                <input class="etternavn" type="text" placeholder="Etternavn" name="Etternavn">
            </div>
        </div>

        <div class="ÅrogUkeFilter">
            <h2>Velg test</h2>
            <select class="År" name="aar">
                <option disabled="disabled" selected="selected">År</option>
                <option value="2020"> 2020 </option>
                <option value="2019"> 2019 </option>
            </select>

            <select class="ÅrogUke" name="Uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option value="2"> Uke 2 </option>
                <option value="11"> Uke 11 </option>
                <option value="44"> Uke 44 </option>
            </select>
        </div>
        <h2>Velg klasse</h2>
        <div class="Filtrer">
            <select class="Klasse" name="Klasse" id="Klasse">
                <option disabled="disabled" selected="selected">Klasse</option>
                <option value="Senior menn"> Senior menn </option>
                <option value="Senior kvinner"> Senior kvinner </option>
                <option value="Junior A gutter"> Junior A gutter </option>
                <option value="Junior A jenter"> Junior A jenter </option>
                <option value="Junior B gutter"> Junior B gutter </option>
                <option value="Junior B jenter"> Junior B jenter </option>
                <option value="Junior C gutter"> Junior C gutter </option>
                <option value="Junior C jenter"> Junior C jenter </option>
            </select>
        </div>
        <h3>Legg inn resultater</h3>
        <div class="Resultater">
            <label>5000 meter</label>
            <input Type="text" placeholder="Tid" name="5000tid">

            <input type="text" placeholder="Watt" name="5000watt"><br>
        </div>
        <div class="Resultater">
            <label>3000 meter</label>
            <input type="text" placeholder="Tid" name="3000tid"><br>
        </div>
        <div class="Resultater">
            <label>2000 meter</label>
            <input type="text" placeholder="Tid" name="2000tid">

            <input type="text" placeholder="Watt" name="2000watt"><br>
        </div>
        <div class="Resultater">
            <label>60"</label>
            <input type="text" placeholder="Watt" name="60watt"><br>
        </div>
        <div class="Resultater">
            <label>Liggende rotak</label>
            <input type="text" placeholder="Kilo" name="LiggroKilo">

            <input type="text" placeholder="Prosent" name="LiggroProsent"><br>
        </div>
        <div class="Resultater">
            <label>Knebøy</label>
            <input type="text" placeholder="Kilo" name="KneboyKilo">

            <input type="text" placeholder="Prosent" name="KneboyProsent"><br>
        </div>
        <div class="Resultater">
            <label>Bevegelighet</label>
            <input type="text" placeholder="Antall" name="Bevegelighet"><br>
        </div>
        <div class="Resultater">
            <label>Sargeant</label>
            <input type="text" placeholder="Cm" name="Sargeant"><br>
        </div>
        <div class="Resultater">
            <label>Kroppshev</label>
            <input type="text" placeholder="Antall" name="Kroppshev"><br>
        </div>
        <div class="Knapper">
            <button class="SendInn" type="submit" name="SendInn">Send inn</button>
        </div>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>