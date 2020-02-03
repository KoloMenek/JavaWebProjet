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
    </head>
    <body>

        <div>
            <H1 style="text-align:center">Veuillez créer un compte</H1>
        </div>
        <div style="text-align:center">
            <form method="POST" action="CreationCompte">
                <div>
                    <label for="login">Login</label>
                    <div style="padding: 10px 10px"><input type="text" id="login" name="username" required></div>
                </div>
                <div>
                    <label for="email">E-mail</label>
                    <div style="padding: 10px 10px"><input type="text" id="email" name="email" required></div>
                </div>
                <div>
                    <label for="pswd">Mot de passe</label>
                    <div style="padding: 10px 10px"><input type="password" id="pswd" name="password" required></div>
                    <label for="pswd2">Répéter le MDP</label>
                    <div style="padding: 10px 10px"><input type="password" id="pswd2" name="password2" required></div>
                </div>
                <div style="padding: 10px 10px">
                    <input  type="submit" value="Créer le compte"/>
                </div>
            </form>
        </div>
    </body>
</html>