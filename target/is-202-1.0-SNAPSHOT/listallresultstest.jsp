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
    <title>test</title>
</head>
<body>
<h1>Alle testresultater</h1> <br>
<table class="table table-hover" id="allResults" border="2">
    <thead>
    <tr>
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
                <%}%>
        </tr>




    </tbody>
</table>

</body>
</html>
