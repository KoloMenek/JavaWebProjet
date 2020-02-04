/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
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

/**
 *
 * @author Mickael
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login_servlet extends HttpServlet {

    private String VUE = "";

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        JDBC bdd = new JDBC();
        String user = request.getParameter("username");
        String password = request.getParameter("password");
        boolean result = false;
        try {
            result = bdd.verificationUtilisateur(user, password);
        } catch (SQLException ex) {
            Logger.getLogger(Login_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (result == true) {
            /* Création ou récupération de la session */
            HttpSession session = request.getSession();                
            /* Mise en session d'une chaîne de caractères */
            boolean groupe = false;
            String admin = "non";
            try {
                groupe = bdd.verificationAdmin(user, password);
            } catch (SQLException ex) {
                Logger.getLogger(Login_servlet.class.getName()).log(Level.SEVERE, null, ex);
            }           
            if (groupe == true)
             admin = "admin";
            
            session.setAttribute("groupe", admin);
            VUE = "/jdbc.jsp";
        } else {
            VUE = "/index.html";
        }
        
        RequestDispatcher distri = request.getRequestDispatcher(VUE);
        distri.forward(request, response);

    }
}
