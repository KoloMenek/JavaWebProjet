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
public class Salle {
    private Integer idSalle,nbPlaces;

    public Salle(Integer idSalle, Integer nbPlaces) {
        this.idSalle = idSalle;
        this.nbPlaces = nbPlaces;
    }

    public Integer getIdSalle() {
        return idSalle;
    }

    public Integer getNbPlaces() {
        return nbPlaces;
    }

    public void setNbPlaces(Integer nbPlaces) {
        this.nbPlaces = nbPlaces;
    }

    public void setIdSalle(Integer idSalle) {
        this.idSalle = idSalle;
    }
    
}
