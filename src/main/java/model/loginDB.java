package model;

import java.sql.*;


public class loginDB {
    private String sql = "SELECT * FROM test.login where uname=? and pass=?";

    public boolean validate(String uname,String pass){


        try {
            Connection con = ConnectionProvider.getCon();
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

