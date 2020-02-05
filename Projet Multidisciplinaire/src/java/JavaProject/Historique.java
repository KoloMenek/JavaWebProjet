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
    private int nbPlaces;
    private int idClient;

    public Historique(String pseudo, int nbPlaces, int idClient) {
        this.pseudo = pseudo;
        this.nbPlaces = nbPlaces;
        this.idClient = idClient;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
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
