<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="model.ResultModel" %>
<%@ page import="Beans.Results" %><%--
  Created by IntelliJ IDEA.
  User: simensundbo
  Date: 26/11/2020
  Time: 19:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Alle resultater</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/navbar.css" >
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="JavaScript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="JavaScript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#Results').DataTable();
        });
    </script>

</head>
<body>
<header>
    <a class="logo" href="index.jsp"><img class="logo" src="images/norges%20roforbund.png"></a>
    <nav class="navbar">
        <ul class="nav_links">
            <li><a href="#">Klubber</a></li>
            <li><a href="#">Resultater</a></li>
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

<h1>Alle testresultater</h1> <br>

    <%
        if(request.getAttribute("deleteSucceeds")!=null) {
            out.println(request.getAttribute("deleteSucceeds"));

        } else if (request.getAttribute("deleteError")!=null) {
            out.println(request.getAttribute("deleteError"));
        }
    %>
<table class="table table-hover" id="Results" border="2">
    <thead>
    <tr>
        <th>År</th>
        <th>Uke</th>
        <th>Score</th>
        <th>Fornavn</th>
        <th>Etternavn</th>
        <th>Klasse</th>
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
        <th>Slett</th>
        <th>Endre</th>
    </tr>
    </thead>
    <tbody>
    <%
        ArrayList<Results> r = (ArrayList<Results>) request.getAttribute("results");
        for(Results list : r) {

    %>

    <tr>
        <td><%=list.getÅr()%></td>
        <td><%=list.getUke()%></td>
        <td><%=list.getScore()%></td>
        <td><%=list.getFornavn()%></td>
        <td><%=list.getEtternavn()%></td>
        <td><%=list.getKlasse()%></td>
        <td><%=list.getKlubb()%></td>
        <td><%=list.getFemtusen_watt()%></td>
        <td><%=list.getFemtusen_tid()%></td>
        <td><%=list.getTretusen_tid()%></td>
        <td><%=list.getTotusen_tid()%></td>
        <td><%=list.getTotusen_watt()%></td>
        <td><%=list.getSekstiwatt()%></td>
        <td><%=list.getLiggroKilo()%></td>
        <td><%=list.getLiggroProsent()%></td>
        <td><%=list.getKnebøykilo()%></td>
        <td><%=list.getKnebøyprosent()%></td>
        <td><%=list.getBevegelighet()%></td>
        <td><%=list.getSargeant()%></td>
        <td><%=list.getKroppshev()%></td>
        <td>
            <form action="deleteResults" method="post">
                <button value="<%=list.getResultatID()%>" type="submit" name="resultatID">Slett</button>
            </form>
        </td>
        <td>
            <form action="editResults.jsp" method="post">
                <button type="submit" name="resultatID" value="<%=list.getResultatID() %>">Endre</button>
            </form>
        </td>
        <%}%>
    </tr>




    </tbody>
</table>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
