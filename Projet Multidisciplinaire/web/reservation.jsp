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
        <li class="menu_listeFilm"><a href="GestionListe_FilmServlet">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>                
        <% 
        String groupe = (String) session.getAttribute( "groupe" );
        if(groupe == "admin") { %>
            <li class="menu_contact"><a href="index.html">Admin</a></li> 
        <%}if (groupe != null){
            %> <li class="menu_contact"><img style="width:20%; position:absolute; margin-top:10%"
                                          src="https://res.cloudinary.com/techsnips/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/content/images/size/w2000/2019/10/user-1633249_1280.png" 
                                          alt> <a href="Logout"><span style="margin-left:15%;">Déconnexion</a></span></li> <%
        } else { %>
        <li class="menu_contact"><a href="index.html">Connexion</a></li><% } %>   
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
               <input type="checkbox" name="Choix" value = "<%out.println(i + "" + j);%>">
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
