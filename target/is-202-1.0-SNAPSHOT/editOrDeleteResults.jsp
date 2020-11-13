<%--
  Created by IntelliJ IDEA.
  User: simensundbo
  Date: 10/11/2020
  Time: 12:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="helpers.navbar" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="model.ConnectionProvider" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.ResultModel" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Alle resultater</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/navbar.css" >
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="JavaScript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script type="text/javascript" language="JavaScript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#allResults').DataTable();
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

<%
    try
    {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("select * from test202.results;");
        ResultSet result = ps.executeQuery();
%>

<h1>Endre eller slett ett testresultat.</h1> <br>
<table class="table table-hover" id="allResults" border="2">
    <thead>
    <tr>
        <th>Resultat ID</th>
        <th>År</th>
        <th>Uke</th>
        <th>Score</th>
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
        <th>Slett</th>
        <th>Endre</th>
    </tr>
    </thead>
    <tbody>
    <% while(result.next())
    {
    %>
    <tr>
        <td><%=result.getString("ResultatID") %></td>
        <td><%=result.getString("år") %></td>
        <td><%=result.getString("uke") %></td>
        <td><%=result.getString("score") %></td>
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
        <td>
            <form action="editOrDelete" method="post">
                <button value="<%=result.getString("ResultatID") %>" type="submit" name="resultatID">Slett</button>
            </form>
        </td>
        <td>
            <form action="edit.jsp" method="post">
                <button type="submit" name="resultatID" value="<%=result.getString("ResultatID") %>">Endre</button>
            </form>
        </td>
    </tr>
    <%}%>
    </tbody>
</table>

<%} catch(Exception e) {
    out.print(e.getStackTrace());
} finally {

}
%>

        <%
            if(request.getAttribute("deleteSucceeds")!=null) {
                out.println(request.getAttribute("deleteSucceeds"));

            } else if (request.getAttribute("deleteError")!=null) {
                out.println(request.getAttribute("deleteError"));
            }
        %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
