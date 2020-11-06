<%--
  Created by IntelliJ IDEA.
  User: simensundbo
  Date: 31/10/2020
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="model.ConnectionProvider" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="helpers.navbar" %>

<!DOCTYPE html>
<html>
<head>
    <title>Siste resultater</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/leggInnResultater.css">

</head>
<body>
<%
    out.println(navbar.nav);
    try
    {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("select år, uke, fornavn, etternavn, klasse, klubb, `5000_watt`, `5000_tid`, `3000_tid`, `2000_tid`, `2000_watt`, `60_watt`, liggro_kilo, liggro_prosent, knebøy_kilo, knebøy_prosent, bevegelighet, sargeant_cm, kroppshev from results where år=2020 and uke=11;");
        ResultSet result = ps.executeQuery();
%>
<h1>Siste testresultater</h1> <br>
<table class="tabell" border="2">
    <tr>
        <th>År</th>
        <th>Uke</th>
        <th>Fornavn</th>
        <th>Etternavn</th>
        <th>Klass</th>
        <th>Klubb</th>
        <th>5000 watt</th>
        <th>5000 tid</th>
        <th>3000 tid</th>
        <th>2000 tid</th>
        <th>2000 watt</th>
        <th>60 watt</th>
        <th>Liggende ro kilo</th>
        <th>Liggende ro prosent</th>
        <th>Knebøy kilo</th>
        <th>Knebøy prosent</th>
        <th>Bevegelighet</th>
        <th>Sargent</th>
        <th>Kroppshev</th>
    </tr>
    <tbody>
    <% while(result.next())
    {
    %>
    <tr>
        <td><%=result.getString("år") %></td>
        <td><%=result.getString("uke") %></td>
        <td><%=result.getString("fornavn") %></td>
        <td><%=result.getString("etternavn") %></td>
        <td><%=result.getString("klasse") %></td>
        <td><%=result.getString("klubb") %></td>
        <td><%=result.getString("5000_watt") %></td>
        <td><%=result.getString("5000_tid") %></td>
        <td><%=result.getString("3000_tid") %></td>
        <td><%=result.getString("2000_tid") %></td>
        <td><%=result.getString("2000_watt") %></td>
        <td><%=result.getString("60_watt") %></td>
        <td><%=result.getString("liggro_kilo") %></td>
        <td><%=result.getString("Liggro_prosent") %></td>
        <td><%=result.getString("knebøy_kilo") %></td>
        <td><%=result.getString("knebøy_prosent") %></td>
        <td><%=result.getString("bevegelighet") %></td>
        <td><%=result.getString("sargeant_cm") %></td>
        <td><%=result.getString("kroppshev") %></td>

    </tr>
    <%}%>
    </tbody>
</table><br>
<%} catch(Exception e) {
    out.print(e.getStackTrace());
    } finally {

    }
%>
<br>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
