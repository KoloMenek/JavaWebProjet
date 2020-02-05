<%-- 
    Document   : Administration
    Created on : 4 févr. 2020, 22:49:19
    Author     : Mickael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- import the webpage"s stylesheet -->
    <link rel="stylesheet" href="style.css" />

    <!-- import the webpage"s javascript file -->
    <script src="/script.js" defer></script>
  </head>
  <body>
    <nav>
      <label for="menu-mobile" class="menu-mobile">Menu</label>
      <input type="checkbox" id="menu-mobile" role="button">
      <ul>
        <li class="menu_accueil"><a href="jdbc.jsp">Accueil</a></li>
        <li class="menu_listeFilm"><a href="GestionListe_FilmServlet">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
        
        <% 
        String groupe = (String) session.getAttribute( "groupe" );
        if(groupe == "admin") { %>
            <li class="menu_contact"><a href="Administration.jsp">Admin</a></li> 
        <%}if (groupe != null){
            %> <li class="menu_contact"><img style="width:20%; position:absolute; margin-top:10%"
                                          src="https://res.cloudinary.com/techsnips/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/content/images/size/w2000/2019/10/user-1633249_1280.png" 
                                          alt> <a href="Logout"><span style="margin-left:15%;">Déconnexion</a></span></li> <%
        } else { %>
        <li class="menu_contact"><a href="Connexion.jsp">Connexion</a></li><% } %>    
      </ul>
    </nav>
      

            <div id=Animation2>
                <div class="centrage1">
                    <a href="Programmation_Servlet">
                        <img id="CentrageImg" src="Image/Programmation.jpg" alt="">
                        <div id = "Centrage">
                            Programmation films
                        </div>
                    </a>
                </div>
                <div  class="centrage1">
                    <a href="RecetteServlet">
                        <img id="CentrageImg" src="Image/recette.jpg" alt="">
                        <div id = "Centrage">
                            Recette par film
                        </div>
                    </a>
                </div>
                <div  class="centrage1">
                    <a href="Historique.jsp">
                        <img id="CentrageImg" src="Image/historique.jpg" alt="">
                        <div  id="Centrage">
                           Historique réservation
                        </div>
                    </a>
                </div>
            </div>
    </body>
</html>
