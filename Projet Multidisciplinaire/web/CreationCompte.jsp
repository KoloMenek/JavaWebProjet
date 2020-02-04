<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Identification</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
 <nav>
      <label for="menu-mobile" class="menu-mobile">Menu</label>
      <input type="checkbox" id="menu-mobile" role="button">
      <ul>
        <li class="menu_accueil"><a href="jdbc.jsp">Accueil</a></li>
        <li class="menu_listeFilm"><a href="Liste_Film.jsp">Films</a></li>
        <li class="menu_reservation"><a href="reservation.jsp"></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
        <div id ="container" style="text-align:center">

            <form method="POST" action="CreationCompte">
             <H4 style = "padding-bottom: 50px;">Création du compte</H4>
                <div>
                    <label for="login"><h3>Identifiant</h3></label>
                    <div style="padding: 10px 10px"><input type="text" id="login" name="username" required></div>
                </div>
                <div>
                    <label for="email"><h3>E-mail</h3></label>
                    <div style="padding: 10px 10px"><input type="text" id="email" name="email" required></div>
                </div>
                <div>
                    <label for="pswd"><h3>Mot de passe</h3></label>
                    <div style="padding: 10px 10px"><input type="password" id="pswd" name="password" required></div>
                    <label for="pswd2"><h3>Confirmation mot de passe</h3></label>
                    <div style="padding: 10px 10px"><input type="password" id="pswd2" name="password2" required></div>
                </div>
                <div style="padding: 10px 10px">
                    <input  type="submit" value="Créer le compte"/>
                </div>
            </form>
        </div>
    </body>
</html>