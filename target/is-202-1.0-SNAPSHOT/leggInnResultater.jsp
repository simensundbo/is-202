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
            <input class="fornavn" type="text" placeholder="Fornavn" name="Fornavn">
            <input class="etternavn" type="text" placeholder="Etternavn" name="Etternavn">
        </div>
        <div class="ÅrogUkeFilter">
            <h2>Velg test</h2>

            <select name="aar" class="År">
                <option disabled="disabled" selected="selected">År</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
            </select>

            <select class="Uke" name="Uke">
                <option disabled="disabled" selected="selected">Uke</option>
                <option value="2"> Uke 2 </option>
                <option value="11"> Uke 11 </option>
                <option value="44"> Uke 44 </option>
            </select>
        </div>

        <div>
            <h2>Velg klasse</h2>
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
        <div class="femtusen">
            <label class="femtusenlabel">5000 meter</label>
            <input class="femTid" type="text" placeholder="Tid" name="5000tid">

            <input class="femWatt" type="text" placeholder="Watt" name="5000watt"><br>
        </div>
        <div class="tretusen">
            <label class="tretusenlabel">3000 meter</label>
            <input class="treTid" type="text" placeholder="Tid" name="3000tid">
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

            <input class="liggroProsent" type="text" placeholder="Prosent" name="LiggroProsent"><br>
        </div>
        <div class="knebøy">
            <label class="knebøyKilolabel">Knebøy</label>
            <input class="knebøyKilo" type="text" placeholder="Kilo" name="KneboyKilo">

            <input class="knebøyProsent" type="text" placeholder="Prosent" name="KneboyProsent"><br>
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
            <button class="LeggInnFlere" type="submit" name="LeggInnFlere">Legg inn flere</button><br>
            <button class="SendInn" type="submit" name="SendInn">Send inn</button>
        </div>
    </form>
</div>
</body>
</html>