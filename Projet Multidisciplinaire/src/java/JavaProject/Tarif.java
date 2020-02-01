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
public class Tarif {
    private Integer idTarif;
    private TarifType type;
    private Integer prix;

    public Tarif(Integer idTarif, TarifType type, Integer prix) {
        this.idTarif = idTarif;
        this.type = type;
        this.prix = prix;
    }

    public Integer getIdTarif() {
        return idTarif;
    }

    public Integer getPrix() {
        return prix;
    }

    public TarifType getType() {
        return type;
    }

    public void setIdTarif(Integer idTarif) {
        this.idTarif = idTarif;
    }

    public void setPrix(Integer prix) {
        this.prix = prix;
    }

    public void setType(TarifType type) {
        this.type = type;
    }
    
    
    
    
}
