    <%-- 
    Document   : reservation
    Created on : 2 févr. 2020, 17:59:05
    Author     : Mickael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Hello!</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- import the webpage's stylesheet -->
    <link rel="stylesheet" href="style.css" />

    <!-- import the webpage's javascript file -->
    <script src="/script.js" defer></script>
  </head>
  <body>
    <nav>
      <label for="menu-mobile" class="menu-mobile">Menu</label>
      <input type="checkbox" id="menu-mobile" role="button">
      <ul>
        <li class="menu_accueil"><a href="jdbc.jsp">Accueil</a></li>
        <li class="menu_listeFilm"><a href="listeFilm.html">Films</a></li>
        <ul class="sousmenu">
          <li><a href="#">A l'affiche</a></li>  
          <li><a href="#">A venir</a></li>
          <li><a href="#">Déja passé dans votre cinéma</a></li>
        </ul>
        <li class="menu_reservation">
          <a href="reservation.html">Réserver ma place</a>
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
    <h1>Les formulaires HTML</h1>
        
    <form method="post" action="traitement.php">
      <label for="pseudo">Entrez un pseudo : </label>
      <input type="text" name="prenom" id="prenom"><br><br>    
      <label for="presentation">Présentation : </label>
      <input type="text" name="pseudo" id="pseudo"><br><br> 
      <input type="submit" value="Envoyer">
    </form>
    
    <form method="POST" action="checkbox3.php">
      <%
        for(int i =0; i<5; i++){
      %>
      <tr>
      <%
          for( int z=0; z<10; z++){
      %>
      <td>
        <img src="https://cdn.discordapp.com/attachments/671725600104513539/673584727579689000/24627.png" />
        
      </td>
      <%
          }
      %>
      <br>
      <%
           for( int j=0; j<10; j++){
               
               %>
               <input type="checkbox" name="choix[]">
               <%
           }
          %>
          <br>
          </tr>
      <%
        }
      %>
    </form>;
  </body>
</html>