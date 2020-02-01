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
    public static final String VUE = "/jdbc.jsp";
    public static final String VUE2 = "/index.html";
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
                JDBC bdd = new JDBC();
                String user = request.getParameter("username");
                String password = request.getParameter("password");
                boolean id = bdd.VerificationConnexion(user,password);
               
                if (id == true){
                    RequestDispatcher distri = request.getRequestDispatcher(VUE);
                    distri.forward(request, response);
                }
                else {
                    RequestDispatcher distri = request.getRequestDispatcher(VUE2);
                    distri.forward(request, response);
                }
                    
    }
}
