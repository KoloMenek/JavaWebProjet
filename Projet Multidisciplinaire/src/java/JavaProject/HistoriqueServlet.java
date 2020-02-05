/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
public class HistoriqueServlet extends HttpServlet {
    
    String URL = "/Historique.jsp";
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ArrayList<Historique> histoClients = new ArrayList<>();
        JDBC bdd = new JDBC();
        try {
            histoClients = bdd.getHistorique();
        } catch (SQLException ex) {
            Logger.getLogger(HistoriqueServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("histoClients", histoClients);
        RequestDispatcher distributeur = request.getRequestDispatcher(URL);
        distributeur.forward(request, response);
    }
}
