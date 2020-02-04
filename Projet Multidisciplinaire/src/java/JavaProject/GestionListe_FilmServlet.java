/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author KoloMenek
 */
public class GestionListe_FilmServlet extends HttpServlet {
    String URL = "/Liste_Film.jsp";
    JDBC bdd = new JDBC();
    int nbFilms = 0;
    HashMap<Integer, Film> lesFilms = new HashMap<>();
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            nbFilms = bdd.getNumberOfMovies();
        } catch (SQLException ex) {
            Logger.getLogger(GestionListe_FilmServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        for(int i = 1; i<nbFilms + 1;i++){
            try {
                lesFilms.put(i,bdd.getElementsFromFilm(i));
            } catch (SQLException ex) {
                Logger.getLogger(GestionListe_FilmServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        request.setAttribute("lesFilms", lesFilms);
        request.setAttribute("nbFilms", nbFilms);
        RequestDispatcher distri = request.getRequestDispatcher(URL);
        distri.forward(request, response);
    }
}
