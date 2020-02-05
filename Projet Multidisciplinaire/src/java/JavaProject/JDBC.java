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
import java.util.HashMap;
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
            String url = "jdbc:mysql://localhost:3306/cinema?useUnicode=yes&characterEncoding=UTF-8";
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
            String SQL = "INSERT INTO compte_client(pseudo,password,mail) "
                       + "VALUES ('" + user + "','" + pswd + "', '" + email + "')";
            try(Statement statement = cnx.createStatement();){
                try {
                    statement.executeUpdate(SQL);
                    leReturn = "Votre compte a été crée avec succés";
                }catch(Exception e){
                    System.err.println("Exception ajout compte"); 
                }
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
    
    public int getNumberOfMovies() throws SQLException {
        int count = 0;
        try(Connection cnx = connecterBDD();){
            String SQL = "SELECT COUNT(*) FROM film;";
            try(Statement statement = cnx.createStatement(); ResultSet rs = statement.executeQuery(SQL);) {
                rs.next();
                count = rs.getInt(1);
            }
        }
        return count;
    }
    
    public Film getElementsFromFilm(int idFilm) throws SQLException{
        Film leFilm = new Film();
        try(Connection cnx = connecterBDD();){
            String SQL = "SELECT nom,description,url_image FROM film WHERE idFilm = '" + idFilm + "';";
            try(Statement statement = cnx.createStatement(); ResultSet rs = statement.executeQuery(SQL);) {
                rs.next();
                leFilm.setNomFilm(rs.getString("nom"));
                leFilm.setDescriptif(rs.getString("description"));
                leFilm.setImage(rs.getString("url_image"));
            }
        }
        return leFilm;
    }
    public ArrayList getSeancesForFilm(int idFilm, int jour) throws SQLException{
        ArrayList<Seance> lesSeances = new ArrayList<>();
        try(Connection cnx = connecterBDD();){
            String SQL = "SELECT horaire, type, langue, idSalle FROM seance_cinema WHERE idFilm = '" + idFilm + "' AND jour = '" + jour + "';";
            try(Statement statement = cnx.createStatement(); ResultSet rs = statement.executeQuery(SQL);) {
                while(rs.next()){
                    lesSeances.add(new Seance(rs.getInt("idSalle"),idFilm,rs.getString("type"),jour,rs.getTime("horaire"),rs.getString("langue")));
                }

            }
        }

        return lesSeances;
    }
    
    public int ajoutReservation(int idClient, int idSeance) throws SQLException{
        int leRetour = -1;
        try (Connection cnx = connecterBDD();){
            String SQL = "INSERT INTO reservation (idSeance,idClient) "
                       + "VALUES ('" + idSeance + "','" + idClient + "')";
            try(PreparedStatement statement = cnx.prepareStatement(SQL,Statement.RETURN_GENERATED_KEYS);){
                
                    int affectedRows = statement.executeUpdate();
                    if(affectedRows == 0){
                        throw new SQLException("Creating user failed, no rows affected.");
                    }
                    try(ResultSet keys = statement.getGeneratedKeys()){
                        if(keys.next()){
                            leRetour = keys.getInt(1);
                        }
                    }
                
            }
        }
        return leRetour;
    }
    
    public int getIDFilm(String film) throws SQLException {
        int LeFilm = 0;
        try (Connection cnx = connecterBDD();) {
            String SQL = "SELECT nom,description,url_image FROM film WHERE nom = '" + film + "';";
            try (Statement statement = cnx.createStatement(); ResultSet rs = statement.executeQuery(SQL);) {
                rs.next();
                LeFilm = rs.getInt("idFilm");
            }
        }
        return LeFilm;
    }

    public String AjoutSeance(int id_film, String type, String langue, int idSalle, int jour, Date Heure) throws SQLException {
        String leReturn = "Erreur Création compte";
        try (Connection cnx = connecterBDD();) {
            String SQL = "INSERT INTO seance_cinema (idFilm,type,langue,idSalle,jour,horaire)"
                    + "VALUES ('" + id_film + "','" + type + "', '" + langue + "', '" + idSalle + "', '" + jour + "', '" + Heure + "')";
            try (Statement statement = cnx.createStatement();) {
                try {
                    statement.executeUpdate(SQL);
                    leReturn = "Votre séance a été crée avec succés";
                } catch (Exception e) {
                    System.err.println("Exception ajout séance");
                }
            }
        }
        return leReturn;
            }
    
    public void ajoutReservationPlaces(int idReservation,int idPlace, int idTarif) throws SQLException{
        try (Connection cnx = connecterBDD();){
            String SQL = "INSERT INTO reservation_place(id_Reservation,id_Tarif,idPlace) "
                       + "VALUES ('" + idReservation + "','" + idTarif + "', '" + idPlace + "')";
            try(Statement statement = cnx.createStatement();){
                try {
                    statement.executeUpdate(SQL);
                }catch(Exception e){
                    System.err.println("Exception ajout reservation place"); 
                }
            }
        }
    }
}
