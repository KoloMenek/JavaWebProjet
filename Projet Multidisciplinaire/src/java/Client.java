
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kolomenek
 */
public class Client {
    private Integer idClient;
    private String nom,prenom;
    private Date naissance;

    public Client(Integer idClient, String nom, String prenom, Date naissance) {
        this.idClient = idClient;
        this.nom = nom;
        this.prenom = prenom;
        this.naissance = naissance;
    }

    public Integer getIdClient() {
        return idClient;
    }

    public Date getNaissance() {
        return naissance;
    }

    public String getNom() {
        return nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setIdClient(Integer idClient) {
        this.idClient = idClient;
    }

    public void setNaissance(Date naissance) {
        this.naissance = naissance;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
    
    
}
