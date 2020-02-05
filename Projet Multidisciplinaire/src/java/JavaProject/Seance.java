package JavaProject;


import JavaProject.SeanceType;
import java.sql.Time;
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
    private int saleUtilise;
    private int leFilm;
    private String type;
    private int laDate;
    private Time horaire;
    private String langue;
    private int idSeance;

    public Seance() {
    }

    public Seance(int saleUtilise, int leFilm, String type, int laDate, Time horaire, String langue,int idSeance) {
        this.saleUtilise = saleUtilise;
        this.leFilm = leFilm;
        this.type = type;
        this.laDate = laDate;
        this.horaire = horaire;
        this.langue = langue;
        this.idSeance = idSeance;
    }

    public Time getHoraire() {
        return horaire;
    }

    public int getIdSeance() {
        return idSeance;
    }


    

    public int getLaDate() {
        return laDate;
    }

 

    public int getLeFilm() {
        return leFilm;
    }

    public int getSaleUtilise() {
        return saleUtilise;
    }

    public void setLaDate(int laDate) {
        this.laDate = laDate;
    }



    public void setLeFilm(int leFilm) {
        this.leFilm = leFilm;
    }

    public void setSaleUtilise(int saleUtilise) {
        this.saleUtilise = saleUtilise;
    }

    public void setType(String type) {
        this.type = type;
    }
    
    
}
