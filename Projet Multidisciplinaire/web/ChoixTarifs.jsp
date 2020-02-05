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
            <input type="checkbox" id="menu-mobile" role="button">
            <ul>
                <li class="menu_accueil"><a href="jdbc.jsp">Accueil</a></li>
                <li class="menu_listeFilm"><a href="GestionListe_FilmServlet">Films</a></li>
                <li class="menu_contact"><a href="contact.jsp">Contact</a></li>

                <%
                    String groupe = (String) session.getAttribute("groupe");
                    if (groupe == "admin") { %>
                <li class="menu_contact"><a href="Administration.jsp">Admin</a></li> 
                    <%}
                        if (groupe != null) {
                    %> <li class="menu_contact"><img style="width:20%; position:absolute; margin-top:10%"
                                              src="https://res.cloudinary.com/techsnips/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/content/images/size/w2000/2019/10/user-1633249_1280.png" 
                                              alt> <a href="Logout"><span style="margin-left:15%;">Déconnexion</a></span></li> <%
                                              } else { %>
                <li class="menu_contact"><a href="Connexion.jsp">Connexion</a></li><% }%>    
            </ul>
        </nav>

        <form method = "POST"id="prog">
            <table>
                <tr>
                    <td><label id = "text1">Tarif:</label></td>
                    <td width="30%">
                        <SELECT name="Type1" size="1" >
                            <OPTION value = "TarifPlein">Tarif plein - 10€
                            <OPTION value = "TarifReduit">Tarif réduit - 8€
                        </SELECT>
                    </td>
                    <td><label id = "text1">Quantité:</label></td>
                    <td width="10%">
                        <SELECT name="Type2" size="1" >
                            <OPTION value = "zero">0
                            <OPTION value = "uneP">1
                            <OPTION value = "deuxP">2
                            <OPTION value = "troisP">3
                            <OPTION value = "quatreP">4
                            <OPTION value = "cinqP">5
                            <OPTION value = "sixP">6
                        </SELECT>
                    </td>
                </tr>
                <tr>
                    <td><label id = "text1">Tarif :</label></td>
                    <td width="30%">
                        <SELECT name="Type" size="1" >
                            <OPTION value = "TarifReduit">Tarif réduit - 8€
                            <OPTION value = "TarifPlein">Tarif plein - 10€
                        </SELECT>
                    </td>
                    <td><label id = "text1">Quantité :</label></td>
                    <td>
                        <SELECT name="Type" size="1" >
                            <OPTION value = "zero">0
                            <OPTION value = "uneP">1
                            <OPTION value = "deuxP">2
                            <OPTION value = "troisP">3
                            <OPTION value = "quatreP">4
                            <OPTION value = "cinqP">5
                            <OPTION value = "sixP">6
                        </SELECT>
                    </td>
                </tr>
            </table>
            <input type="submit" action="ProgrammationServlet" id="submit" value="Reserver">
    </body>
</html>
