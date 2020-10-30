<%--
  Created by IntelliJ IDEA.
  User: Andreas Martinsen
  Date: 27.10.2020
  Time: 13.27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Nye resultater</title>
    <link rel="stylesheet" href="css/leggInnResultater.css">
</head>
<body>
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
<<<<<<< Updated upstream
        <h2>Velg test</h2>
        <div class="Filtrer">
            <select class="ÅrogUke" name="År">
=======
        <div class="ÅrogUkeFilter">
            <h2>Velg test</h2>
            <select class="År" name="aar">
>>>>>>> Stashed changes
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
            <button class="LeggInnFlere" type="submit" name="LeggInnFlere">Legg inn flere</button><br>
            <button class="SendInn" type="submit" name="SendInn">Send inn</button>
        </div>
    </form>
</div>
</body>
</html>