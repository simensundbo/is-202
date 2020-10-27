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
    <form method="post">
        <h1>Legg inn resultater</h1>
        <div class="Filtrer">
            <h2>Velg utøver</h2>
            <select class="Klubb" name="Klubb">
                <option disabled="disabled" selected="selected">Klubb</option>
                <option> Arendals Roklubb </option>
                <option> Bærum Roklubb </option>
                <option> Kristiansand Roklubb </option>
                <option> Oslo Roklubb </option>
                <option> Porsgrunn Roklubb </option>
            </select>
            <br>
            <input class="fornavn" type="text" placeholder="Fornavn" name="Fornavn">
            <input class="etternavn" type="text" placeholder="Etternavn" name="Etternavn">
        </div>
        <div class="ÅrogUkeFilter">
            <h2>Velg test</h2>
            <select class="År" name="År">
                <option disabled="disabled" selected="selected">År</option>
                <option> 2020 </option>
                <option> 2019 </option>
            </select>

            <select class="Uke" name="Uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option> Uke 2 </option>
                <option> Uke 11 </option>
                <option> Uke 44 </option>
            </select>
        </div>

        <div>
            <h2>Velg klasse</h2>
            <select class="Klasse" name="Klasse">
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
        </div>
        <h3>Legg inn resultater</h3>
        <div class="femtusen">
            <label class="femtusenlabel">5000</label>
            <input class="femTid" type="text" placeholder="Tid" name="5000tid">

            <input class="femWatt" type="text" placeholder="Watt" name="5000watt"><br>
        </div>
        <div class="tretusen">
            <label class="tretusenlabel">3000</label>
            <input class="treTid" type="text" placeholder="Tid" name="3000tid">

            <input class="treWatt" type="text" placeholder="Watt" name="3000watt"><br>
        </div>
        <div class="tretusenløp">
            <label class="tretusenløplabel">3000 løp</label>
            <input class="treløpTid" type="text" placeholder="Tid" name="3000løp"><br>
        </div>
        <div class="totusen">
            <label class="totusenlabel">2000</label>
            <input class="toTid" type="text" placeholder="Tid" name="2000tid">

            <input class="toWatt" type="text" placeholder="Watt" name="2000watt"><br>
        </div>
        <div class="seksti">
            <label class="sekstiwattlabel">60"</label>
            <input class="sekstiWatt" type="text" placeholder="Watt" name="60watt"><br>
        </div>
        <div class="liggro">
            <label class="liggrolabel">Liggende rotak</label>
            <input class="liggroKilo" type="text" placeholder="Kilo" name="LiggroKilo">

            <input class="liggroProsent" type="text" placeholder="Prosent" name="LiggroWatt"><br>
        </div>
        <div class="knebøy">
            <label class="knebøyKilolabel">Knebøy</label>
            <input class="knebøyKilo" type="text" placeholder="Kilo" name="KnebøyKilo">

            <input class="knebøyProsent" type="text" placeholder="Prosent" name="KnebøyProsent"><br>
        </div>
        <div class="bevegelighetantall">
            <label class="bevegelighetlabel">Bevegelighet</label>
            <input class="bevegelighet" type="text" placeholder="Antall" name="Bevegelighet"><br>
        </div>
        <div class="sargeantcm">
            <label class="sargeantlabel">Sargeant</label>
            <input class="sargeant" type="text" placeholder="Cm" name="Sargeant"><br>
        </div>
        <div class="kroppshevantall">
            <label class="kroppshevlabel">Kroppshev</label>
            <input class="kroppshev" type="text" placeholder="Antall" name="Kroppshev"><br>
        </div>
        <div>
            <button class="LeggInnFlere" type="submit">Legg inn flere</button><br>
            <button class="SendInn" type="submit">Send inn</button>
        </div>
    </form>
</div>
</body>
</html>