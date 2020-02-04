<%-- 
    Document   : Liste_Film
    Created on : 3 févr. 2020, 14:16:31
    Author     : Mickael
--%>

<%@page import="java.util.HashMap"%>
<%@page import="JavaProject.Film"%>
<%
    HashMap<Integer, Film> lesFilms = (HashMap)request.getAttribute("lesFilms");
    Integer nbFilms = (Integer)request.getAttribute("nbFilms");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Liste film</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- import t   he webpage's stylesheet -->
    <link rel="stylesheet" href="style.css" />

    <!-- import the webpage's javascript file -->
    <script src="/script.js" defer></script>
  </head>
  <nav>
      <label for="menu-mobile" class="menu-mobile">Menu</label>
      <input type="checkbox" id="menu-mobile" role="button">
      <ul>
        <li class="menu_accueil"><a href="jdbc.jsp">Accueil</a></li>
        <li class="menu_listeFilm"><a href="Liste_Film.jsp">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
                
        <% 
        String groupe = (String) session.getAttribute( "groupe" );
        if(groupe == "admin") { %>
            <li class="menu_contact"><a href="index.html">Admin</a></li> 
        <%}if (groupe != null){
            %> <li class="menu_contact"><img style="width:20%; position:absolute; margin-top:10%"
                                          src="https://res.cloudinary.com/techsnips/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/content/images/size/w2000/2019/10/user-1633249_1280.png" 
                                          alt> <a href="Logout"><span style="margin-left:15%;">Déconnexion</a></span></li> <%
        } else { %>
        <li class="menu_contact"><a href="index.html">Connexion</a></li><% } %>   
      </ul>
    </nav>
 <body>
    <p>
      <h1 style="text-align: center">Liste des films</h1>
    </p>
    <center>
      <table border="1" class="montableau" style="background-color:black;">
          <%
              for(int i=1; i<nbFilms+1;i++){
                  String nom,img,desc;
                  img = lesFilms.get(i).getImage();
                  nom = lesFilms.get(i).getNomFilm();
                  desc = lesFilms.get(i).getDescriptif();
          %>
        <tr>
          <td height="150px" width="35%" rowspan="2"><img  src="Image/<% out.println(img); %>"> </td>
          <td height="115px" width="75%" style="color:white;"><%out.println(nom + "<br>");
              out.println(desc); %></td>
        </tr>
        <tr>
          <td height="35px" width="75%" style="color:white;">Séance :
              <a href="something" class="button4" style="background-color:#f14e4e">19:30</a>
              <a href="something" class="button4" style="background-color:#f14e4e">21:30</a>
              <a href="something" class="button4" style="background-color:#f14e4e">22:15</a>
          </td>
        </tr>
        <%
            }
        %>
      </table>
    </center>
  </body>
</html>

