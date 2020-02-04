/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kolomenek
 */
public class CreationCompte extends HttpServlet {

    public boolean verifMDP(String mdp1, String mdp2) {
        return mdp1.equals(mdp2);
    }
    private String VUE = "/PageApresCreationCompte.jsp";

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String user = request.getParameter("username");
        String pswd = request.getParameter("password");
        String pswd2 = request.getParameter("password2");
        String email = request.getParameter("email");
        String leReturn = "Erreur Création compte";
        
        if (verifMDP(pswd, pswd2)) {
            JDBC bdd = new JDBC();
            try {
                if (bdd.verificationMailPseudo(user, email)) {
                    try {
                        leReturn = bdd.creationCompte(user, pswd, email);
                    } catch (SQLException ex) {
                        Logger.getLogger(CreationCompte.class.getName()).log(Level.SEVERE, null, ex);
                    }
                } else {
                    leReturn = "Le compte avec cet identifiant / email existe déja";
                }

            } catch (SQLException ex) {
                Logger.getLogger(CreationCompte.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            leReturn = "Vos mot de passes ne sont pas identiques";
        }
        request.setAttribute("retourServlet", leReturn);
        RequestDispatcher distri = request.getRequestDispatcher(VUE);
        distri.forward(request, response);
    }

}
