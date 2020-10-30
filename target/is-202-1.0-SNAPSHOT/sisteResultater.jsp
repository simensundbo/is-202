<%@ page import="helpers.navbar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultater</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/leggInnResultater.css">

</head>
<body>
<%
out.println(navbar.nav);
%>
<div class="Siste">

    <h1>Resultater</h1>
    <div class="Filtrer">
        <div class="sisteFilter">
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
        <select class="Klubb" name="Klubb" id="Klubb">
            <option disabled="disabled" selected="selected">Klubb</option>
            <option value="Arendals"> Arendals Roklubb </option>
            <option value="Bærum"> Bærum Roklubb </option>
            <option value="Kristiansand"> Kristiansand Roklubb </option>
            <option value="Oslo"> Oslo Roklubb </option>
            <option value="Porsgrunn"> Porsgrunn Roklubb </option>
        </select>
        <select class="År" name="År">
            <option disabled="disabled" selected="selected">År</option>
            <option value="2020"> 2020 </option>
            <option value="2020"> 2019 </option>
        </select>
        <select class="Uke" name="Uke">
            <option disabled="disabled" selected="selected">Uke</option>
            <option value="2"> Uke 2 </option>
            <option value="11"> Uke 11 </option>
            <option value="44"> Uke 44 </option>
        </select>
        </div>
    </div>
    <table class="tabell" border="2">
        <tr>
            <th></th>
            <th>Utøver</th>
            <th>Totalscore</th>
            <th>5000 tid</th>
            <th>5000 watt</th>
            <th>2000 tid</th>
            <th>2000 watt</th>
            <th>60" watt</th>
            <th>Liggende rotak, kilo</th>
            <th>Liggende rotak, %</th>
            <th>Knebøy, Kilo</th>
            <th>Knebøy, %</th>
            <th>Bevegelighet</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Simen Sundbø</td>
            <td>367</td>
            <td>17.45,16</td>
            <td>672</td>
            <td>09.32,46</td>
            <td>345</td>
            <td>105</td>
            <td>278</td>
            <td>120</td>
            <td>320</td>
            <td>250</td>
            <td>5</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Andreas Martinsen</td>
            <td>367</td>
            <td>17.45,16</td>
            <td>672</td>
            <td>09.32,46</td>
            <td>345</td>
            <td>105</td>
            <td>278</td>
            <td>120</td>
            <td>320</td>
            <td>250</td>
            <td>5</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Elias Gauslaa</td>
            <td>367</td>
            <td>17.45,16</td>
            <td>672</td>
            <td>09.32,46</td>
            <td>345</td>
            <td>105</td>
            <td>278</td>
            <td>120</td>
            <td>320</td>
            <td>250</td>
            <td>5</td>
        </tr>
    </table>
</div>
</body>
</html>
