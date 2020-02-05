<%-- 
    Document   : Historique
    Created on : 4 févr. 2020, 23:19:55
    Author     : Mickael
--%>

<%@page import="JavaProject.Historique"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Identification </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- import the webpage's stylesheet -->
    <link rel="stylesheet" href="style.css" />

    <!-- import the webpage's javascript file -->
    <script src="/script.js" defer></script>
  </head>
  <%
      ArrayList<Historique> histoClients = (ArrayList)request.getAttribute("histoClients");
  %>
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
        
  <center><h1>Historique des achats :</h1></center>
        
  <center><table border="0" style="margin: auto; width: 80%">
        <thead style="background-color: grey; color: white; ">
          <tr>
            <th scope="col">Pseudo</th>
            <th scope="col">Nombre de place</th>
          </tr>
        </thead>
        <tbody style="background-color: white;">
            <%
                for(int i = 0; i < histoClients.size();i++){
            %>
          <tr>
            <td><% out.print(histoClients.get(i).getPseudo()); %></td>
            <td><% out.print(histoClients.get(i).getPseudo()); %></td>
            <td><% out.print(histoClients.get(i).getNbPlaces()); %></td>
          </tr>
          <%
              }
          %>
        </tbody>
      </table></center>
    </body>
</html>