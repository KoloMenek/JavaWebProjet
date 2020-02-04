<%-- 
    Document   : Liste_Film
    Created on : 3 févr. 2020, 14:16:31
    Author     : Mickael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Formulaire de contact</title>
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
      </ul>
    </nav>
 <body>
    <p>
      <h1 style="text-align: center">Liste des films</h1>
    </p>
    <center>
      <table border="1" class="montableau" style="background-color:black;">
        <tr>
          <td height="150px" width="35%" rowspan="2"><img  src="https://static.lpnt.fr/images/2019/04/29/18572845lpw-18635448-article-jpg_6167191_980x426.jpg"></td>
          <td height="115px" width="75%" style="color:white;">Thanos ayant anéanti la moitié de l’univers, les Avengers restants resserrent les rangs dans ce vingt-deuxième film des Studios Marvel, grande conclusion d’un des chapitres de l’Univers Cinématographique Marvel.</td>
        </tr>
        <tr>
          <td height="35px" width="75%" style="color:white;">Séance :
              <a href="something" class="button4" style="background-color:#f14e4e">19:30</a>
              <a href="something" class="button4" style="background-color:#f14e4e">21:30</a>
              <a href="something" class="button4" style="background-color:#f14e4e">22:15</a>
          </td>
        </tr>
      </table>
    </center>
  </body>
</html>

