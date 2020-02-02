<%-- 
    Document   : jdbc
    Created on : 30 janv. 2020, 16:07:18
    Author     : Mickael
--%>

<!DOCTYPE html>
<html lang="fr">
  <head>
    <title>Hello!</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- import the webpage's stylesheet -->
    <link rel="stylesheet" href="style.css" type="text/css" />

    <!-- import the webpage's javascript file -->
    <script src="/script.js" defer></script>
  </head>
  <body>
    <nav>
      <label for="menu-mobile" class="menu-mobile">Menu</label>
      <input type="checkbox" id="menu-mobile" role="button">
      <ul>
        <li class="menu_accueil"><a href="accueil.html">Accueil</a></li>
        <li class="menu_listeFilm"><a href="listeFilm.html">Films</a></li>
        <ul class="sousmenu">
          <li><a href="#">A l'affiche</a></li>  
          <li><a href="#">A venir</a></li>
          <li><a href="#">Déja passé dans votre cinéma</a></li>
        </ul>
        <li class="menu_reservation">
          <a href="reservation.jsp">Réserver ma place</a>
        </li>
        <ul class="sousmenu">
          <li><a href="#">Réserver ma place</a></li>
          <li><a href="#">Nos tarifs</a></li>
        </ul>
        <li class="menu_contact"><a href="contact.html">Contact</a></li>
        <ul class="sousmenu">
          <li><a href="#">Nous trouver</a></li>
          <li><a href="#">Nous contacter</a></li>
        </ul>
      </ul>
    </nav>
  </body>
</html>
