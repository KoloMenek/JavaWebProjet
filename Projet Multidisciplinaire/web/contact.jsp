<%-- 
    Document   : contact
    Created on : 4 févr. 2020, 16:59:01
    Author     : admin
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
        <li class="menu_listeFilm"><a href="Liste_Film.jsp">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
      </ul>
    </nav>
    <center>
      <table style="box-shadow: 0 5px 5px 0 rgba(255, 255, 255, 1); width: 75%; height: 65%; background-color: RGBa(39, 38, 54, 0.75); margin:5%;">
        <td width="50%">
          <h4 style="padding-left: 10%">
            Notre adresse :<br><br> 18 Rue des étangs, 89115 Compigny
            <br><br>
            <br><br>
            Numéro du cinéma :<br><br>
            01.45.65.98.71
          </h4> 
        </td>
        <td width="50%">
          <div  class="container2">
            <form action="action_page.php">

              <label for="fname" style="font-style: bold;color: #FFF;margin: 0px;padding-top: 5px;font-size: 15px;">First Name</label>
              <input type="text" id="fname" name="firstname" placeholder="Your name..">

              <label for="lname" style="font-style: bold;color: #FFF;margin: 0px;padding-top: 5px;font-size: 15px;">Last Name</label>
              <input type="text" id="lname" name="lastname" placeholder="Your last name..">
              
              <label for="lmail"><h3>Email</h3></label>
              <input type="text" id="Email" name="Email" placeholder="Your email adress..">

              <label for="subject"><h3>Subject</h3></label>
              <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

              <input type="submit" value="Submit">
            </form>
          </div>
        </td> 
    </table></center>
  </body>
</html>
