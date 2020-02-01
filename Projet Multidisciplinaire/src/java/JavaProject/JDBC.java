package JavaProject;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Mickael
 */

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;

public class JDBC {

    public JDBC() {
    }
     
    /* La liste qui contiendra tous les résultats de nos essais */
    private List<String> messages = new ArrayList<String>();

    public List<String> executerTests( HttpServletRequest request ) {
        /* Ici, nous placerons le code de nos manipulations */
        /* ... */
        Connection cnx = connecterBDD();

        return messages;
    }
    public Connection connecterBDD(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Ok");   
            String url = "jdbc:mysql://localhost:3306/cinema";
            String user = "root";
            String password = "";
            Connection cnx = DriverManager.getConnection(url, user, password);
            return cnx;
        }
        catch(ClassNotFoundException | SQLException e){
            return null;
        }
        
    }
    
    public String VerificationConnexion(String user, String password) throws SQLException{
        try (Connection cnx = connecterBDD();){
        String SQL = "Select * from WHERE pseudo '"+ user + "' AND '"+ password +"')";
        return null;
        }
        
    }
}