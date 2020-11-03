<%@ page import="helpers.navbar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Søk etter resultater</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/søkResultater.css">
</head>
<body>
<%
    out.println(navbar.nav);
%>
<form action="searchResults" method="get">
    <div class="søkform">
        <h1>Søk etter resultater</h1>
        <h2>Filtrer ditt søk</h2>
        <div class="Filter">
            <select class="Klubb" name="Klubb">
                <option disabled="disabled" selected="selected">Klubb</option>
                <option> Alle </option>
                <option value="Arendals"> Arendals Roklubb </option>
                <option value="Bærum"> Bærum Roklubb </option>
                <option value="Kristiansand"> Kristiansand Roklubb </option>
                <option value="Oslo"> Oslo Roklubb </option>
                <option value="Porsgrunn"> Porsgrunn Roklubb </option>
            </select>
        </div>
        <div class="navn">
            <input class="fornavn" type="text" placeholder="Fornavn" name="Fornavn">
            <input class="etternavn" type="text" placeholder="Etternavn" name="Etternavn">
        </div>
        <div class="KlasseUkeÅr">
            <select class="Klasse" name="Klasse">
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

            <select class="Uke" name="Uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option value="2"> Uke 2 </option>
                <option value="11"> Uke 11 </option>
                <option value="44"> Uke 44 </option>
            </select>
            <select class="År" name="aar">
                <option disabled="disabled" selected="selected">År</option>
                <option value="2020"> 2020 </option>
                <option value="2019"> 2019 </option>
            </select>
        </div>
        <div>
            <button class="søk" type="submit" >Vis resultater</button>
        </div>
    </div>
</form>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
