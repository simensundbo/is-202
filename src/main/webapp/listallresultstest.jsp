<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="model.ResultModel" %><%--
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
            ResultModel model = new ResultModel();
            model.listAllResults();

        %>


            <td><%=model.getUke()%></td>
            <td><%=model.getÅr()%></td>
            <td><%=model.getScore()%></td>
            <td><%=model.getFornavn()%></td>
            <td><%=model.getEtternavn()%></td>








    </tbody>
</table>

</body>
</html>
