<%@ page import="helpers.navbar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Velkommen</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/styles.css" >


</head>
<body>

<%
    if(session.getAttribute("user")==null) {
        response.sendRedirect("index.jsp");
    }
    out.println(navbar.nav);
%>

    <h1>
        Velkommen ${user}<br>
    </h1>

    <div class="row">
        <div class="box">
            <h2>Siste resultater</h2>
            <p>
                Se resultatene fra siste test. <br>
                <a href="latestResults.jsp" class="btn">Siste resultater!</a>
            </p>
        </div>
        <div class="box">
            <h2>Alle resultater</h2>
            <p>
                Se alle tidligere resultater. <br>
                <a href="søkResultater.jsp" class="btn">Resultater!</a>
            </p>
        </div>
        <div class="box">
            <h2>Top resultater</h2>
            <p>
                Se de beste resultatene fra hver klasse. <br>
                <a href="#" class="btn">Resultater!</a>
            </p>
    </div>





    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>