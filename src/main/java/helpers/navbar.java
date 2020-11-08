package helpers;

public class navbar {
    public static String nav = "<style>\n" +
            "    *{\n" +
            "        box-sizing: border-box;\n" +
            "        margin: 0;\n" +
            "        padding: 0;\n" +
            "    }\n" +
            "    header {\n" +
            "        display: flex;\n" +
            "        justify-content: space-around;\n" +
            "        align-items: center;\n" +
            "        background-color: rgb(249, 249, 249);\n" +
            "\n" +
            "    }\n" +
            "\n" +
            "    .logo {\n" +
            "        cursor: pointer;\n" +
            "        max-width: 40%;\n" +
            "        font-weight: 0;\n" +
            "        font-size: 0;\n" +
            "    }\n" +
            "\n" +
            "\n" +
            "    li, a, button {\n" +
            "        font-family: 'Times New Roman', Times, serif;\n" +
            "        font-weight: 500;\n" +
            "        font-size: 20px;\n" +
            "        color: black;\n" +
            "        text-decoration: none;\n" +
            "\n" +
            "    }\n" +
            "\n" +
            "    .nav_links {\n" +
            "        list-style: none;\n" +
            "    }\n" +
            "\n" +
            "    .nav_links li  {\n" +
            "        display: inline;\n" +
            "        padding: 0px 20px;\n" +
            "    }\n" +
            "\n" +
            "    .nav_links li a {\n" +
            "        transition: all 0.3s ease 0s;\n" +
            "    }\n" +
            "\n" +
            "    .nav_links li a:hover{\n" +
            "        color: #0088a9;\n" +
            "    }\n" +
            "\n" +
            "    button {\n" +
            "        padding: 9px 25px;\n" +
            "        background-color: #2648ff;\n" +
            "        border: none;\n" +
            "        color: white;\n" +
            "        border-radius: 50px;\n" +
            "        cursor: pointer;\n" +
            "        transition: all 0.3s ease 0s;\n" +
            "    }\n" +
            "\n" +
            "    button:hover {\n" +
            "        background-color: #4095c6;\n" +
            "    }\n" +
            "\n" +
            "</style>\n" +
            "<header>\n" +
            "    <a class=\"logo\" href=\"welcome.jsp\"><img class=\"logo\" src=\"images/norges%20roforbund.png\"></a>\n" +
            "    <nav class=\"navbar\">\n" +
            "        <ul class=\"nav_links\">\n" +
            "            <li><a href=\"#\">Klubber</a></li>\n" +
            "            <li><a href=\"allResults.jsp\">Resultater</a></li>\n" +
            "            <li><a href=\"roing.no\">Norges Roforbund</a></li>\n" +
            "            <li><a href=\"#\">Kontakt oss</a></li>\n" +
            "        </ul>\n" +
            "\n" +
            "    </nav>\n" +
            "    <a href=\"index.jsp\"><button>Logg inn</button></a>\n" +
            "</header>";

    }

