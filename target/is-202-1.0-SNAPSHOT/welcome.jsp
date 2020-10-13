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
        response.sendRedirect("views/index.jsp");
    }
    out.println(navbar.nav);
%>

    <h3>
        Velkommen ${user}<br>
        Dette blir da hjemmesiden!
    </h3>

    <div class="search-box">
        <h3>Søk blant 100000 utøvere</h3>
        <form action="#" method="get">
            <div class="textbox">
                <input type="text" placeholder="Utøver" name="#">
            </div>
            <div class="textbox">
                <input type="text" placeholder="Test" name="#">
            </div>
            <input class="btn" type="submit" value="Søk">

        </form>
    </div>




    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>