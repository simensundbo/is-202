<%--
  Created by IntelliJ IDEA.
  User: Andreas Martinsen
  Date: 27.10.2020
  Time: 13.46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Søk etter resultater</title>
    <link rel="stylesheet" href="css/søkResultater.css">
</head>
<body>
<div class="søkform">
    <form method="get">
        <h1>Søk etter resultater</h1>
        <h2>Filtrer ditt søk</h2>
        <div class="Filter">
            <select class="Klubb">
                <option disabled="disabled" selected="selected">Klubb</option>
                <option> Alle </option>
                <option> Arendals Roklubb </option>
                <option> Bærum Roklubb </option>
                <option> Kristiansand Roklubb </option>
                <option> Oslo Roklubb </option>
                <option> Porsgrunn Roklubb </option>
            </select>

            <select class="Utøver">
                <option disabled="disabled" selected="selected">Utøver</option>
                <option> Alle </option>
                <option> Anders Korsnes </option>
                <option> Andreas Martinsen </option>
                <option> Elias Gauslaa </option>
                <option> Martin Løvberg </option>
                <option> Simen Sundbø </option>
            </select>

            <select class="Klasse">
                <option disabled="disabled" selected="selected">Klasse</option>
                <option> Senior menn </option>
                <option> Senior kvinner </option>
                <option> Junior A gutter </option>
                <option> Junior A jenter </option>
                <option> Junior B gutter </option>
                <option> Junior B jenter </option>
                <option> Junior C gutter </option>
                <option> Junior C jenter </option>
            </select>
            <br>
        </div>
        <div class="ÅrogUke">
            <select class="Uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option> Uke 2 </option>
                <option> Uke 11 </option>
                <option> Uke 44 </option>
            </select>
            <select class="År">
                <option disabled="disabled" selected="selected">År</option>
                <option> 2020 </option>
                <option> 2019 </option>
            </select>
        </div>
        <div>
            <button class="søk" type="submit">Vis resultater</button>
        </div>
    </form>
</div>
</body>
</html>
