/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Mickael
 */
@WebServlet(name = "Reservation_servlet", urlPatterns = {"/Reservation_servlet"})
public class Reservation_servlet extends HttpServlet {
    String URL = "/PageApresCreationCompte.jsp";
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        JDBC bdd = new JDBC();
        Integer idClient = (Integer) session.getAttribute("idClient");
        Integer idSeance = (Integer) session.getAttribute("idClient");
        Integer idTarif = (Integer) session.getAttribute("idTarif");
        int idReservation = -1;
        String[] lesChoix = (String[]) request.getParameterValues("Choix");
        int places = lesChoix.length;
        // a enlever
        idClient = 1;
        idSeance = 1;
        idTarif = 1;
        
        try {
               idReservation = bdd.ajoutReservation(idClient,idSeance,places);
            } catch (SQLException ex) {
                Logger.getLogger(Reservation_servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        for(int i =0;i<lesChoix.length;i++){
            try {
                bdd.ajoutReservationPlaces(idReservation, Integer.parseInt(lesChoix[i]), idTarif);
            } catch (SQLException ex) {
                Logger.getLogger(Reservation_servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
        
            //request.setAttribute("map", T);
            RequestDispatcher distributeur = request.getRequestDispatcher(URL);
            distributeur.forward(request, response);

        }

    }

