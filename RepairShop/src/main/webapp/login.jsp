<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Connexion</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="login-container">
        <form action="login" method="post">
            <h2>Connexion</h2>
            
            <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
            
            <div class="form-group">
                <label>Nom d'utilisateur:</label>
                <input type="text" name="username" required>
            </div>
            
            <div class="form-group">
                <label>Mot de passe:</label>
                <input type="password" name="password" required>
            </div>
            
            <button type="submit">Se connecter</button>
        </form>
    </div>
</body>
</html>