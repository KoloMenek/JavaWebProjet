<%-- 
    Document   : CreationCompte
    Created on : Feb 3, 2020, 9:42:55 AM
    Author     : kolomenek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Créer un comtpe</title>
    </head>
    <body>
        <div>
            <H1 style="text-align:center">Veuillez vous connecter</H1>
        </div>
        <div style="text-align:center">
            <form method="POST" action="Login">
                <div>
                    <label for="login">Login</label>
                    <div style="padding: 10px 10px"><input type="text" id="login" name="username" required></div>
                </div>
                <div>
                    <label for="pswd">Mot de passe</label>
                    <div style="padding: 10px 10px"><input type="password" id="pswd" name="password" required></div>
                </div>
                <div style="padding: 10px 10px">
                    <input  type="submit" value="Login" />
                </div>
            </form>
        </div>
        <div>
            <center>
                <p>Vous n'avez pas de compte ?</p>
                <button onclick="window.location.href = 'CreationCompte.jsp';">Créer votre compte</button>
            </center>
        </div>
    </body>
</html>
