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
public class Reservation {
    private Integer idReservation;
    private Seance leSeance;
    private Tarif leTarif;
    private Client leClient;

    public Reservation(Integer idReservation, Seance leSeance, Tarif leTarif, Client leClient) {
        this.idReservation = idReservation;
        this.leSeance = leSeance;
        this.leTarif = leTarif;
        this.leClient = leClient;
    }

    public Integer getIdReservation() {
        return idReservation;
    }

    public Reservation() {
    }

    public Client getLeClient() {
        return leClient;
    }

    public Seance getLeSeance() {
        return leSeance;
    }

    public Tarif getLeTarif() {
        return leTarif;
    }

    public void setIdReservation(Integer idReservation) {
        this.idReservation = idReservation;
    }

    public void setLeClient(Client leClient) {
        this.leClient = leClient;
    }

    public void setLeSeance(Seance leSeance) {
        this.leSeance = leSeance;
    }

    public void setLeTarif(Tarif leTarif) {
        this.leTarif = leTarif;
    }
    
    
}
