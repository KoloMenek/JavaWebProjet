/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import static JavaProject.GestionJDBC.VUE;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mickael
 */
public class Login {
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
                JDBC bdd = new JDBC();
                String user = request.getParameter("username");
                String password = request.getParameter("password");
                bdd.VerificationConnexion(user,password);
                RequestDispatcher distri = request.getRequestDispatcher(VUE);
                distri.forward(request, response);
    }
}
