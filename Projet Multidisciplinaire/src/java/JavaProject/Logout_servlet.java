/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaProject;

import java.io.IOException;
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
@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout_servlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            HttpSession session = request.getSession();
            session.removeAttribute("Username");
            session.removeAttribute("groupe");
            session.invalidate();
            RequestDispatcher distri = request.getRequestDispatcher("jdbc.jsp");
            distri.forward(request, response);
    }
    
}
