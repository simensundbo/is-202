package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AthletesModel {

    private String allAthletesSQL = ("select * from 202db.athletes;");



    public ArrayList<Athletes> getAllAthletes(){

        ArrayList<Athletes> a = new ArrayList<>();
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement(allAthletesSQL);

            ResultSet rs=ps.executeQuery();

            while (rs.next()) {
                Athletes athlete = new Athletes(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8)
                );

                a.add(athlete);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return a;
    }




}



