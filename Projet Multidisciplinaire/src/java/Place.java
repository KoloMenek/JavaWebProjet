/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author kolomenek
 */
public class Place {
    private Integer idPlace,alle,numeroPlace;
    private PlaceType statut;

    public Place(Integer idPlace, Integer numeroPlace, Integer alle, PlaceType statut) {
        this.idPlace = idPlace;
        this.numeroPlace = numeroPlace;
        this.alle = alle;
        this.statut = statut;
    }

    public Integer getIdPlace() {
        return idPlace;
    }

    public Integer getAlle() {
        return alle;
    }

    public Integer getNumeroPlace() {
        return numeroPlace;
    }

    public void setAlle(Integer alle) {
        this.alle = alle;
    }

    public void setIdPlace(Integer idPlace) {
        this.idPlace = idPlace;
    }

    public PlaceType getStatut() {
        return statut;
    }

    public void setStatut(PlaceType statut) {
        this.statut = statut;
    }

    public void setNumeroPlace(Integer numeroPlace) {
        this.numeroPlace = numeroPlace;
    }
    
    
}
