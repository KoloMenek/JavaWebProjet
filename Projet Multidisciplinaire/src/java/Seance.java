
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
public class Seance {
    private Salle saleUtilise;
    private Film leFilm;
    private Seance laSeance;
    private SeanceType type;
    private Date laDate;

    public Seance(Salle saleUtilise, Film leFilm, Seance laSeance, SeanceType type, Date laDate) {
        this.saleUtilise = saleUtilise;
        this.leFilm = leFilm;
        this.laSeance = laSeance;
        this.type = type;
        this.laDate = laDate;
    }

    public Date getLaDate() {
        return laDate;
    }

    public Seance getLaSeance() {
        return laSeance;
    }

    public Film getLeFilm() {
        return leFilm;
    }

    public Salle getSaleUtilise() {
        return saleUtilise;
    }

    public void setLaDate(Date laDate) {
        this.laDate = laDate;
    }

    public void setLaSeance(Seance laSeance) {
        this.laSeance = laSeance;
    }

    public void setLeFilm(Film leFilm) {
        this.leFilm = leFilm;
    }

    public void setSaleUtilise(Salle saleUtilise) {
        this.saleUtilise = saleUtilise;
    }

    public void setType(SeanceType type) {
        this.type = type;
    }
    
    
}
