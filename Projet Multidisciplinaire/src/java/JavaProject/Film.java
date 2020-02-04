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
public class Film {
    private Integer id;
    private String nomFilm,descriptif, recette, image;
    
    public Film() {
    }

    public Film(Integer id, String nomFilm, String descriptif, String image) {
        this.id = id;
        this.nomFilm = nomFilm;
        this.descriptif = descriptif;
        this.image = image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getId() {
        return id;
    }

    public String getImage() {
        return image;
    }

    public String getDescriptif() {
        return descriptif;
    }

    public String getNomFilm() {
        return nomFilm;
    }

    public void setDescriptif(String descriptif) {
        this.descriptif = descriptif;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setNomFilm(String nomFilm) {
        this.nomFilm = nomFilm;
    }
    
}
