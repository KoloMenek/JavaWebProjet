<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
    <div id="container">    
      <form method = "POST" action="Login">
        <h4>Connexion</h4>
        <img  id="logo" src="Image/Accueil.jpg" alt="Erreur Image">
        <h3><label>Nom d'utilisateur</label></h3>
        <input type="text" placeholder="Entrer le nom d'utilisateur" name="username" required>
        <h3><label>Mot de passe</label></h3>
        <input type="password" placeholder="Entrer le mot de passe" name="password" required>
        <input type="submit" id="submit" value="LOGIN">
        <br>
        <p class = "creer"><a href="CreationCompte.jsp">Creer un compte</a></p>
      </form>
    </div>
  </body>
</html>


