package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {   //singleton design pattern.
    private static Connection con;

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://mysql-202db-do-user-7402814-0.b.db.ondigitalocean.com:25060/202db","doadmin","yqxnw3zwsbrjfd6u");

        } catch (Exception e) {
            System.out.println("Tilkoblingen feilet.");
        }

    }
        public static Connection getCon(){
            return con;
        }

}
