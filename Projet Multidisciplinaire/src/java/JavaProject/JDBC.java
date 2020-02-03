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

    public List<String> executerTests(HttpServletRequest request) {
        /* Ici, nous placerons le code de nos manipulations */
 /* ... */
        Connection cnx = connecterBDD();

        return messages;
    }

    public Connection connecterBDD() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Ok");
            String url = "jdbc:mysql://localhost:3306/cinema";
            String user = "root";
            String password = "";
            Connection cnx = DriverManager.getConnection(url, user, password);
            return cnx;
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        }

    }
    public String creationCompte(String user, String pswd, String email) throws SQLException{
        String leReturn = "Erreur Création compte";
        try (Connection cnx = connecterBDD();){
            String SQL = "INSERT INTO compte_client('pseudo','password','mail') "
                       + "VALUES ('" + user + "','" + pswd + "', '" + email + "')";
            try(Statement statement = cnx.createStatement(); ResultSet resultset = statement.executeQuery(SQL);){
                leReturn = "Votre compte a été crée avec succés";
            }
        }
        return leReturn;
    }
    public boolean verificationAdmin(String user, String password) throws SQLException {
        try (Connection cnx = connecterBDD();) {
            String SQL = "Select * from compte_client WHERE pseudo = '" + user + "' AND password = '" + password + "' AND Groupe = '2'";
            try (Statement statement = cnx.createStatement(); ResultSet resultset = statement.executeQuery(SQL)) {
                return resultset.first() == true;
            }
        }
    }

    public boolean verificationUtilisateur(String user, String password) throws SQLException {
        try (Connection cnx = connecterBDD();) {
            String SQL = "Select * from compte_client WHERE pseudo = '" + user + "' AND password = '" + password + "'";
            try (Statement statement = cnx.createStatement(); ResultSet resultset = statement.executeQuery(SQL)) {
                return resultset.first() == true;
            }
        }
    }
    public boolean verificationMailPseudo(String user,String email) throws SQLException {
        try (Connection cnx = connecterBDD();) {
            String SQL = "Select * from compte_client WHERE mail = '" + email + "'";
            String SQL2 = "Select * from compte_client WHERE pseudo = '" + user + "'";
            try (Statement statement = cnx.createStatement(); ResultSet resultSet = statement.executeQuery(SQL);
                 Statement statement2 = cnx.createStatement(); ResultSet resultSet2 = statement2.executeQuery(SQL2);) {
                if(resultSet.first() == true)
                    return false;
                
                else if(resultSet2.first() == true)
                    return false;
                else{
                    return true;
                }
            }
        }
    }
}
