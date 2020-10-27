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
        <div class="Klubb">
            <h2>Finn utøver</h2>
            <select class="Klubb">
                <option disabled="disabled" selected="selected">Klubb</option>
                <option> Arendals Roklubb </option>
                <option> Bærum Roklubb </option>
                <option> Kristiansand Roklubb </option>
                <option> Oslo Roklubb </option>
                <option> Porsgrunn Roklubb </option>
            </select>

            <select class="Utøver">
                <option disabled="disabled" selected="selected">Utøver</option>
                <option> Anders Korsnes </option>
                <option> Andreas Martinsen </option>
                <option> Elias Gauslaa </option>
                <option> Martin Løvberg </option>
                <option> Simen Sundbø </option>
            </select>
        </div>
        <div>
            <h2>Velg test</h2>
            <select class="År">
                <option disabled="disabled" selected="selected">År</option>
                <option> 2020 </option>
                <option> 2019 </option>
            </select>

            <select class="Uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option> Uke 2 </option>
                <option> Uke 11 </option>
                <option> Uke 44 </option>
            </select>
        </div>

        <div>
            <h2>Velg klasse</h2>
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
        </div>
        <div>
            <h3>Legg inn resultater</h3>
            <label class="femtidlabel">5000, Tid</label>
            <input class="femTid" type="text"><br>

            <label class="femwattlabel">5000, Watt</label>
            <input class="femWatt" type="text"><br>

            <label class="totidlabel">2000, Tid</label>
            <input class="toTid" type="text"><br>

            <label class="sekstiwattlabel">60", Watt</label>
            <input class="sekstiWatt" type="text"><br>

            <label class="liggroKilolabel">Liggende rotak, Kilo</label>
            <input class="liggroKilo" type="text"><br>

            <label class="liggroProsentlabel">Liggende rotak, Prosent</label>
            <input class="liggroProsent" type="text"><br>

            <label class="knebøyKilolabel">Knebøy, Kilo</label>
            <input class="knebøyKilo" type="text"><br>

            <label class="knebøyProsentlabel">Knebøy, Prosent</label>
            <input class="knebøyProsent" type="text"><br>

            <label class="bevegelighetlabel">Bevegelighet, Antall</label>
            <input class="bevegelighet" type="text"><br>
            <br>
            <button class="LeggInnFlere" type="submit">Legg inn flere</button><br>
            <button class="SendInn" type="submit">Send inn</button>
        </div>
    </form>
</div>
</body>
</html>

