<%--
  Created by IntelliJ IDEA.
  User: Eier
  Date: 13.12.2020
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact Us</title>
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
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
<body id="bilde">
<section class="contact">
    <div class="content">
        <h2>Kontakt oss!</h2>
        <p>Opplever du problemer? Hvis ja, eller om du bare lurer på noe kan du kontakte oss her</p>
    </div>
    <div class="contactInfo">
        <div class="text">
            <h3>Adresse</h3>
            <p>Sognsveien 73,<br>Oslo<br>5152</p>
            <h3>Telefon</h3>
            <p>21 02 90 00</p>
            <h3>E-post</h3>
            <p>kristiansandroklubb@gmail.com</p>
        </div>
    </div>
    <div class="contactForm">
        <form>
            <h2>Send melding</h2>
            <div class="inputBox">
                <input type="text" name="" required="required">
                <span>Fullt Navn</span>
            </div>
            <div class="inputBox">
                <input type="text" name="" required="required">
                <span>Email</span>
            </div>
            <div class="inputBox">
                <input type="text" name="" required="required">
                <span>Hva lurer du på...</span>
            </div>
            <div class="inputBox">
                <input type="submit" value="Send">
            </div>
        </form>
    </div>
</section>
</body>
</html>

