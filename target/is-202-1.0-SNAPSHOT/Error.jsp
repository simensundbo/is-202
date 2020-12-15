<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>En feil oppstod</title>
    <link rel="stylesheet" href="css/navbar.css" >
    <link rel="stylesheet" href="css/styles.css" >
</head>
<body>
<header>
    <a class="logo" href="index.jsp"><img class="logo" src="images/norges%20roforbund.png"></a>
    <nav class="navbar">
        <ul class="nav_links">
            <li><a href="#">Klubber</a></li>
            <li><a href="getAthletes">Utøvere</a></li>
            <li><a href="https://www.roing.no/">Norges Roforbund</a></li>
            <li><a href="contactUs.jsp">Kontakt oss</a></li>
        </ul>

    </nav>
    <% if(session.getAttribute("user")==null) {
        out.print("<a href=\"login.jsp\"><button>Logg inn</button></a>");
    } else {
        out.print("<a href=\"logout\"><button>Logg ut</button></a>");
    }
    %>
</header>

    <div class="login-box">
        <h1>En feil skjedde, våre utviklere jobber med saken!</h1>
        <a href="index.jsp" class="btn">Gå tilbake til hjemmesiden</a>
    </div>
</body>
</html>