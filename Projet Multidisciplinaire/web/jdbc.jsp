<%-- 
    Document   : jdbc
    Created on : 30 janv. 2020, 16:07:18
    Author     : Mickael
--%>

<!DOCTYPE html>
<html lang="fr">
  <head>
    <title>Accueil</title>
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
        <li class="menu_listeFilm"><a href="<%=request.getContextPath()%>/GestionListe_FilmServlet">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
        
        <% 
        String groupe = (String) session.getAttribute( "groupe" );
        if(groupe == "admin") { %>
            <li class="menu_contact"><a href="Administration.jsp">Admin</a></li> 
        <%}if (groupe != null){
            %> <li class="menu_contact"><img style="width:20%; position:absolute; margin-top:10%"
                                          src="https://res.cloudinary.com/techsnips/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/content/images/size/w2000/2019/10/user-1633249_1280.png" 
                                          alt> <a href="Logout"><span style="margin-left:15%;">D�connexion</a></span></li> <%
        } else { %>
        <li class="menu_contact"><a href="Connexion.jsp">Connexion</a></li><% } %>    
      </ul>
    </nav>
      
          <p>
      <h1 style="text-align: center">Films � l'affiche dans votre cin�ma :</h1>
    </p>
<div class="diapo_auto_rwd">
<input name="diapo" id="slide1" type="radio" class="slide_diapo">
<input name="diapo" id="slide2" type="radio" class="slide_diapo">
<input name="diapo" id="slide3" type="radio" class="slide_diapo">
<input name="diapo" id="lance-diapo" type="radio" checked>
<input name="diapo" id="pause1" type="radio" class="pause_diapo">
<input name="diapo" id="pause2" type="radio" class="pause_diapo">
<input name="diapo" id="pause3" type="radio" class="pause_diapo">
<ul>
<li style="width:900px;"><img src="Image/Seigneur des anneaux.jpg" alt></li>
<li class="image1 slide_diapo"><img src="Image/StarWars9.jpg" alt></li>
<li class="image2 slide_diapo"><img src="Image/Seigneur des anneaux.jpg" alt></li>
<li class="image3 slide_diapo"><img src="Image/Avengers4.jpg" alt></li>
</ul>
<div class="lancement_arret">
<label class="lance_diapo" for="lance-diapo"></label>
<label class="pause_diapo image1" for="pause1"></label>
<label class="pause_diapo image2" for="pause2"></label>
<label class="pause_diapo image3" for="pause3"></label>
</div>
<div class="precedent">
<label class="image1" for="slide1"></label>
<label class="image2" for="slide2"></label>
<label class="image3" for="slide3"></label>
</div>
<div class="suivant">
<label class="image1" for="slide1"></label>
<label class="image2" for="slide2"></label>
<label class="image3" for="slide3"></label>
</div>
    </div>
  </body>
</html>
