package model;

import java.sql.*;


public class loginDB {
    private String sql = "SELECT * FROM test.login where uname=? and pass=?";
    private String url = "jdbc:mariadb://127.0.0.1:3306/test";
    private String username = "simen";
    private String password = "is201";

    public boolean validate(String uname,String pass){
        //singleton

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, username, password);
            PreparedStatement li = con.prepareStatement(sql);

            li.setString(1, uname);
            li.setString(2, pass);

            ResultSet result = li.executeQuery();

            if(result.next()){
                return true;
            }
            con.close();


        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }


}

