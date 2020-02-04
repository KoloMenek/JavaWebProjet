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
        <li class="menu_listeFilm"><a href="Liste_Film.jsp">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
        <li class="menu_contact"><a href="index.html">Connexion</a></li>
      </ul>
    </nav>
<div class="diapo_auto_rwd">
<input name="diapo" id="slide1" type="radio" class="slide_diapo">
<input name="diapo" id="slide2" type="radio" class="slide_diapo">
<input name="diapo" id="slide3" type="radio" class="slide_diapo">
<input name="diapo" id="lance-diapo" type="radio" checked>
<input name="diapo" id="pause1" type="radio" class="pause_diapo">
<input name="diapo" id="pause2" type="radio" class="pause_diapo">
<input name="diapo" id="pause3" type="radio" class="pause_diapo">
<ul>
<li style="width:900px;"><img src="https://images-na.ssl-images-amazon.com/images/S/sgp-catalog-images/region_US/lt5wv-EA0T01WGJZS-Full-Image_GalleryBackground-en-US-1569605445397._SX1080_.jpg" alt></li>
<li class="image1 slide_diapo"><img src="https://images.wallpapersden.com/image/download/star-wars-9-poster_67281_1920x1080.jpg" alt></li>
<li class="image2 slide_diapo"><img src="https://images-na.ssl-images-amazon.com/images/S/sgp-catalog-images/region_US/lt5wv-EA0T01WGJZS-Full-Image_GalleryBackground-en-US-1569605445397._SX1080_.jpg" alt></li>
<li class="image3 slide_diapo"><img src="https://geeko.lesoir.be/wp-content/uploads/sites/58/2019/12/avengers-endgame-poster-og-social-crop-e1554810427804.jpg" alt></li>
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
