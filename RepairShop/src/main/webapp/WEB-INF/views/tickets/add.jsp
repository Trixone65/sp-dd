<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Nouveau Ticket</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
    <h1>Créer un nouveau ticket</h1>
    <form action="${pageContext.request.contextPath}/tickets" method="post">
        <label>Nom du client:</label>
        <input type="text" name="clientName" required>
        
        <label>Téléphone:</label>
        <input type="text" name="phone" required>
        
        <button type="submit">Enregistrer</button>
    </form>
</body>
</html>