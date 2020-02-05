<%-- 
    Document   : Liste_Film
    Created on : 3 févr. 2020, 14:16:31
    Author     : Mickael
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="JavaProject.Seance"%>
<%@page import="java.util.HashMap"%>
<%@page import="JavaProject.Film"%>
<%
    HashMap<Integer, Film> lesFilms = (HashMap)request.getAttribute("lesFilms");
    Integer nbFilms = (Integer)request.getAttribute("nbFilms");
    HashMap<Integer, ArrayList<Seance>> lesSeancesVendredi = (HashMap)request.getAttribute("seancesVendredi");
    HashMap<Integer, ArrayList<Seance>> lesSeancesSamedi = (HashMap)request.getAttribute("seancesSamedi");
    HashMap<Integer, ArrayList<Seance>> lesSeancesDimanche = (HashMap)request.getAttribute("seancesDimanche");
    
    
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Liste film</title>
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
        <li class="menu_listeFilm"><a href="<%=request.getContextPath()%>/GestionListe_FilmServlet">Films</a></li>
        <li class="menu_contact"><a href="contact.jsp">Contact</a></li>
        <li class="menu_contact"><a href="reservation.jsp">Reservation</a></li>
                
        <% 
        String groupe = (String) session.getAttribute( "groupe" );
        if(groupe == "admin") { %>
            <li class="menu_contact"><a href="Administration.jsp">Admin</a></li> 
        <%}if (groupe != null){
            %> <li class="menu_contact"><img style="width:20%; position:absolute; margin-top:10%"
                                          src="https://res.cloudinary.com/techsnips/image/fetch/w_2000,f_auto,q_auto,c_fit/https://adamtheautomator.com/content/images/size/w2000/2019/10/user-1633249_1280.png" 
                                          alt> <a href="Logout"><span style="margin-left:15%;">Déconnexion</a></span></li> <%
        } else { %>
        <li class="menu_contact"><a href="index.html">Connexion</a></li><% } %>   
      </ul>
    </nav>
 <body>
    <p>
      <h1 style="text-align: center">Liste des films</h1>
    </p>
    <center>
      <table border="1" class="montableau" style="background-color:rgba(153,153,153,0.4)" width="80%">
          <%
              for(int i=1; i<nbFilms+1;i++){
                  String nom,img,desc;
                  img = lesFilms.get(i).getImage();
                  nom = lesFilms.get(i).getNomFilm();
                  desc = lesFilms.get(i).getDescriptif();
                  
          %>
        <tr>
          <td height="150px" width="25%" rowspan="2"><img src="Image/<% out.println(img); %>"> </td>
          <td height="115px" width="75%" colspan="3" style="color:white;"><%out.println("<b>" + nom + "</b><br><br>");
              out.println(desc); %></td>
        </tr>
        <tr>
            <td width="25%" style="color:white;vertical-align: top;"><b>Séance Vendredi :</b><br>
              <%
                  for(int j = 0; j < lesSeancesVendredi.get(i).size() ;j++){
              %>
              <a href="reservation.jsp?idSeance=<%out.print(lesSeancesVendredi.get(i).get(j).getIdSeance());%>" class="button4" style="background-color:#f14e4e"><% out.println(lesSeancesVendredi.get(i).get(j).getHoraire().toString()); %></a>
              <%
                  }
              %>
          </td>
          <td  width="25%" style="color:white;vertical-align: top;"><b>Séance Samedi :</b><br>
              <%
                  for(int j = 0; j < lesSeancesSamedi.get(i).size() ;j++){
              %>
              <a href="reservation.jsp?idSeance=<%out.print(lesSeancesSamedi.get(i).get(j).getIdSeance());%>" class="button4" style="background-color:#f14e4e"><% out.println(lesSeancesSamedi.get(i).get(j).getHoraire().toString()); %></a>
              <%
                  }
              %>
          </td>
          <td width="25%" style="color:white; vertical-align: top;"><b>Séance Dimanche :</b><br>
              <%
                  for(int j = 0; j < lesSeancesDimanche.get(i).size() ;j++){
              %>
              <a href="reservation.jsp?idSeance=<%out.print(lesSeancesDimanche.get(i).get(j).getIdSeance());%>" class="button4" style="background-color:#f14e4e"><% out.println(lesSeancesDimanche.get(i).get(j).getHoraire().toString()); %></a>
              <%
                  }
              %>
          </td>
        </tr>
        <%
            }
        %>
      </table>
    </center>
  </body>
</html>

