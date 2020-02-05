/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class RecetteServlet extends HttpServlet {
    String URL = "/Recette.jsp";
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        HashMap<Integer, Film> lesFilms = new HashMap<>();
        Integer recette = -1;
        JDBC bdd = new JDBC();
        int[] recettes = null;
        int nbFilms = -1;
        try {
            nbFilms = bdd.getNumberOfMovies() +1;
        } catch (SQLException ex) {
            Logger.getLogger(RecetteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            recettes = new int[bdd.getNumberOfMovies()+1];
        } catch (SQLException ex) {
            Logger.getLogger(RecetteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        for(int i = 1; i<nbFilms;i++){
            try {
                lesFilms.put(i,bdd.getElementsFromFilm(i)); 
                recettes[i] = bdd.getRecette(i);
            } catch (SQLException ex) {
                Logger.getLogger(RecetteServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
       
     request.setAttribute("recettes", recettes);
     request.setAttribute("lesFilms", lesFilms);
     RequestDispatcher distri = request.getRequestDispatcher(URL);
     distri.forward(request, response);
    }
}
