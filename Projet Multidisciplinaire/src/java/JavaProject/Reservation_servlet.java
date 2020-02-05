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
        Integer idClient = (Integer) session.getAttribute("idClient");
        
        String[] lesChoix = (String[]) request.getParameterValues("Choix");
        for(int i =0;i<lesChoix.length;i++)
            System.out.println(lesChoix[i]);
        
        
        
            //request.setAttribute("map", T);
            RequestDispatcher distributeur = request.getRequestDispatcher(URL);
            distributeur.forward(request, response);

        }

    }

