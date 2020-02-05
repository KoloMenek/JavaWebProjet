package JavaProject;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kolomenek
 */
public class Historique {
    private String pseudo;
    private String nom;
    private String prenom;
    private int nbPlaces;
    private int idClient;
    private String nom;
    private String prenom;

    public Historique(String pseudo, int nbPlaces, int idClient, String nom, String prenom) {
        this.pseudo = pseudo;
        this.nbPlaces = nbPlaces;
        this.idClient = idClient;
        this.nom = nom;
        this.prenom = prenom;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }   
    
    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    } 
    

    public Historique() {
    }

    public int getNbPlaces() {
        return nbPlaces;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setNbPlaces(int nbPlaces) {
        this.nbPlaces = nbPlaces;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }
    
    
}
