package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {   //singleton design pattern.
    private static Connection con;

    static {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/test202","simen","simen123");

        } catch (Exception e) {
            System.out.println("Tilkoblingen feilet.");
        }

    }
    public static Connection getCon(){
        return con;
    }

}
