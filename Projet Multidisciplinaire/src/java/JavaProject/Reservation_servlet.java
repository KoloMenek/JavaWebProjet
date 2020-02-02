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
import javax.servlet.http.Part;

/**
 *
 * @author Mickael
 */
@WebServlet(name = "Reservation_servlet", urlPatterns = {"/Reservation_servlet"})
public class Reservation_servlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] checkboxes = request.getParameterValues("Choix");
        int T[] = new int[checkboxes.length+1]; //Colonne
        int T1[] = new int[checkboxes.length+1]; // Numéro
        char c;
        for (int i = 0; i < checkboxes.length; ++i) {   
            if (checkboxes[i] != null){
                c = checkboxes[i].charAt(0);
                T[i] = c - '0';
                if (checkboxes[i].length() > 2){
                   String str = checkboxes[i].substring(1,3);
                   T1[i] = Integer.parseInt(str);
                }
                else {
                    c = checkboxes[i].charAt(1);
                    T1[i] = c - '0';
                }
            }
        }    
        for (int i = 0; i<5;i++){
            for (int j = 0; j<10; j++){
                //T[i][j] = request.getParameter("");
            }
        }
            //request.setAttribute("map", T);
            RequestDispatcher distributeur = request.getRequestDispatcher("/Reservation2.jsp");
            distributeur.forward(request, response);

        }

    }

