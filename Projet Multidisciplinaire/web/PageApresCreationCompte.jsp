<%-- 
    Document   : PageApresCreationCompte
    Created on : Feb 3, 2020, 11:14:45 AM
    Author     : kolomenek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Page after registration </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

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
        
  <center><h1>Votre compte à été créer avec succès !!</h1>
      <br><h2 style="color: white">A bientôt dans notre cinéma</center>
    </body>
</html>
