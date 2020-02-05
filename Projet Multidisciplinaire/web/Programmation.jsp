<%-- 
    Document   : Programmation
    Created on : 4 févr. 2020, 23:19:37
    Author     : Mickael
--%>
<%@page import="java.util.HashMap"%>
<%@page import="JavaProject.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        HashMap<Integer, Film> lesFilms = (HashMap) request.getAttribute("lesFilms");
        Integer nbFilms = (Integer) request.getAttribute("nbFilms");
    %>
    <head>
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
                    <td><label id = "text1">Film : </label></td>
                    <td><SELECT name="Film" size="1">
                <%  for (int i = 1; i < nbFilms + 1; i++) {
                        String nom, img, desc;
                        nom = lesFilms.get(i).getNomFilm();%>
                <OPTION value = "<% out.println(nom); %>">
                    <% out.println(nom); %> 
                </option>
                <%}%>
                </td>
            </SELECT>
                </tr>
                <tr>
                    <td><label id = "text1">Type : </label></td>
                    <td><SELECT name="Type" size="1">
                <OPTION value = "2D">2D
                <OPTION value = "3D">3D
                <OPTION value = "IMAX">IMAX
                <OPTION value = "IMAX 3D">IMAX 3D
                <OPTION value = "4DX">4DX
                        </SELECT></td>
                </tr>
                <tr>
                    <td><label id = "text1">Langue : </label></td>
                    <td><SELECT name="Langue" size="1">
                <OPTION value = "VF">VF
                <OPTION value = "VOSTFR">VOSTFR
                <OPTION value = "VO">VO
                        </SELECT></td>
                <tr>
                    <td><label id = "text1">Jour : </label></td>
                    <td><SELECT name="Jour" size="1">
                <OPTION value = "5">vendredi
                <OPTION value = "6" >samedi
                <OPTION value = "7" >dimanche
                        </SELECT></td>
            </tr>
            <tr padding-top="15px" padding-bottom="15px">
                <td><label id = "text1">Heure : </label></td>
                <td><input value="18:00" type="time" name="Heure" required><br></td>
            </tr>
            <tr>
                <td><label id = "text1">Salle : </label></td>
                <td><SELECT name="Salle" size="1">
                <OPTION value = "1">1 - Georges Brassens
                <OPTION value = "2">2 - Jean-Dujardin
                    </SELECT></td>
            </tr>
            </table>
            <input type="submit" action="ProgrammationServlet" id="submit" value="Ajouter séance">
        </form>

    </body>
</html>
