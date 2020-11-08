<%@ page import="helpers.navbar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/leggInnResultater.css">
</head>
<body>
<%
    out.println(navbar.nav);
%>
<form class="admin">
    <div class="Knapper">
        <a href="leggInnResultater.jsp">
            <button class="LeggInn" type="button">Legg inn resultater</button>
        </a>
        <a href="index.jsp">
            <button class="LoggUt" type="button">Logg ut</button>
        </a>
    </div>
</form>
</body>
</html>