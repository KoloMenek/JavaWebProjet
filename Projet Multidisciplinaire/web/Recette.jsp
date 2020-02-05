<%-- 
    Document   : Recette
    Created on : 4 févr. 2020, 23:20:01
    Author     : Mickael
--%>

<%@page import="java.util.HashMap"%>
<%@page import="JavaProject.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Identification </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%
        HashMap<Integer,Film> lesFilms = (HashMap)request.getAttribute("lesFilms");
        int[] recettes = (int[])request.getAttribute("recettes");
        int taille = lesFilms.size();
    %>
    <!-- import the webpage's stylesheet -->
    <link rel="stylesheet" href="style.css" />

    <!-- import the webpage's javascript file -->
    <script src="/script.js" defer></script>
  </head>
  <body>
    <nav>
      <label for="menu-mobile" class="menu-mobile">Menu</label>
      <input type="checkbox" id="menu-mobile" role="button" />
      <ul>
        <li class="menu_accueil"><a href="jdbc.jsp">Accueil</a></li>
        <li class="menu_listeFilm"><a href="<%=request.getContextPath()%>/GestionListe_FilmServlet">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
        <li class="menu_contact"><a href="index.html">Connexion</a></li>
      </ul>
    </nav>
        
  <center><h1>Historique des recettes :</h1></center>
        
  <center><table border="0" style="margin: auto; width: 80%">
        <thead style="background-color: grey; color: white; ">
          <tr>
            <th scope="col">Nom Film</th>
            <th scope="col">Recette</th>
          </tr>
        </thead>
        <tbody style="background-color: white;">
        <%
            for(int i = 1; i < taille; i++){
        %>    
            <tr>
                <td><% out.println(lesFilms.get(i).getNomFilm()); %></td>
                <td><% out.println(recettes[i]); %></td>
          </tr>
          <%
              }
          %>
        </tbody>
      </table></center>
    </body>
</html>
