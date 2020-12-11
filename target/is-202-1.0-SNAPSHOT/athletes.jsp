<%@ page import="java.util.ArrayList" %>
<%@ page import="Beans.Athletes" %><%--
  Created by IntelliJ IDEA.
  User: simensundbo
  Date: 24/11/2020
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Utøver informasjon</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/navbar.css" >
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="JavaScript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="JavaScript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#utøvere').DataTable();
        });
    </script>
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

<h1>Her kan du endre, legge til eller slette en utøver.</h1> <br>
<table class="table table-hover" id="utøvere"  border="2">
    <thead>
    <tr>

        <th>Fornavn</th>
        <th>Etternavn</th>
        <th>Fødselsår</th>
        <th>Vekt</th>
        <th>Høyde</th>
        <th>Klubb</th>
        <th>Klasse</th>

    </tr>
    </thead>
    <%
        ArrayList<Athletes> a = (ArrayList<Athletes>) request.getAttribute("data");
        for(Athletes utøver : a) {
    %>
    <tbody>
    <tr>
        <td><%=utøver.getFornavn()%></td>
        <td><%=utøver.getEtternavn()%></td>
        <td><%=utøver.getFødeselsår()%></td>
        <td><%=utøver.getVekt()%></td>
        <td><%=utøver.getHøyde()%></td>
        <td><%=utøver.getKlubb()%></td>
        <td><%=utøver.getKlasse()%></td>
        <%}%>
    </tr>
    </tbody>
</table>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>

</html>
