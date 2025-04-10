<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Système de Gestion des Réparations</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <header>
        <h1>Bienvenue dans le Système de Gestion des Réparations</h1>
    </header>
    
    <main>
        <div class="login-container">
            <form action="login" method="post">
                <h2>Connexion</h2>
                <div class="form-group">
                    <label for="username">Nom d'utilisateur:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Mot de passe:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <button type="submit">Se connecter</button>
            </form>
        </div>
    </main>

    <footer>
        <p>&copy; 2023 Système de Gestion des Réparations. Tous droits réservés.</p>
    </footer>
</body>
</html>