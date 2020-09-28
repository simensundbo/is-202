package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserModel {
    private String Name;
    private String pass;

    private final String registerUserSql = "insert into test.login (uname, pass) values (?,?)";
    private final String userLoginSql = "SELECT * FROM test.login where uname=? and pass=?";

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }


    public boolean registerUser() {
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement(registerUserSql);

            ps.setString(1, getName());
            ps.setString(2, getPass());

            int r = ps.executeUpdate();
            if (r!=0) {
                return true;
            }

        } catch (SQLException f) {
            f.printStackTrace();
        }
        return false;
    }

    public boolean loginUser() {
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement li = con.prepareStatement(userLoginSql);

            li.setString(1, getName());
            li.setString(2, getPass());

            ResultSet result = li.executeQuery();

            if(result.next()){
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

}


