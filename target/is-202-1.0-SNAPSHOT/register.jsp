<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>Registrer deg</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
            <h1>Registrer deg</h1>
            <form action="register" method="post">
                <div class="textbox">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
                    </svg>
                    <input type="text" placeholder="Brukernavn" name="uname">
                </div>

                <div class="textbox">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-key" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"></path>
                        <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"></path>
                    </svg>
                    <input type="password" placeholder="Passord" name="pass">
                </div>

                <div class="textbox">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383l-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"></path>
                    </svg>
                    <input type="text" placeholder="Email" name="userEmail">
                </div>
                <div class="textbox">
                    <label for="roklubb">Velg roklubb</label>
                    <select name="roklubb" id="roklubb">
                        <option value="roklubb">roklubb</option>
                        <option value="kristiansand roklubb">kristiansand roklubb</option>
                        <option value="Arendals roklubb">Arendals roklubb</option>
                    </select>
                </div>
                <input type="hidden" name="method" value="register">
                <input class="btn" type="submit" value="Registrer deg.">
            </form>
        </div>


        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
</html>