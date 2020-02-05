/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
 * @author Mickael
 */
public class Programmation_servlet extends HttpServlet {

    String URL = "/Programmation.jsp";
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

        for (int i = 1; i < nbFilms + 1; i++) {
            try {
                lesFilms.put(i, bdd.getElementsFromFilm(i));
            } catch (SQLException ex) {
                Logger.getLogger(GestionListe_FilmServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        request.setAttribute("nbFilms", nbFilms);
        request.setAttribute("lesFilms", lesFilms);
        RequestDispatcher distri = request.getRequestDispatcher(URL);
        distri.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Film = request.getParameter("Film");
        String Type = request.getParameter("Type");
        String Langue = request.getParameter("Langue");
        String JourS = request.getParameter("Jour");
        String HeureS = request.getParameter("Heure");
        String SalleS = request.getParameter("Salle");
        String leReturn = "test";
        try {
            DateFormat dateFormat = new SimpleDateFormat("hh:mm:ss");
            Date date1 = dateFormat.parse(HeureS);
            int FilmId = bdd.getIDFilm(Film);
            int Salle = Integer.parseInt(SalleS);
            int Jour = Integer.parseInt(JourS);
            leReturn = bdd.AjoutSeance(FilmId, Type, Langue, Salle, Jour, (java.sql.Date) date1);
            request.setAttribute("test", leReturn);
        } catch (ParseException | SQLException ex) {
            Logger.getLogger(Programmation_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(leReturn);
    }
}
