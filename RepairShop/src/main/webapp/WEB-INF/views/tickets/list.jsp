<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des Tickets</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
    <header>
        <h1>Gestion des Tickets de Réparation</h1>
    </header>
    
    <main>
        <div class="container">
            <h2>Liste des Tickets</h2>
            
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Client</th>
                        <th>Téléphone</th>
                        <th>Appareil</th>
                        <th>Problème</th>
                        <th>Prix</th>
                        <th>Statut</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${tickets}" var="ticket">
                        <tr>
                            <td>${ticket.id}</td>
                            <td>${ticket.clientName}</td>
                            <td>${ticket.phoneNumber}</td>
                            <td>${ticket.deviceType}</td>
                            <td>${ticket.problem}</td>
                            <td>${ticket.price} €</td>
                            <td>
                                <span class="status ${ticket.status}">
                                    ${ticket.status}
                                </span>
                            </td>
                            <td>
                                <a href="tickets?action=edit&id=${ticket.id}">Modifier</a>
                                <a href="tickets?action=delete&id=${ticket.id}">Supprimer</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
            <a href="tickets?action=create" class="btn">Créer un nouveau ticket</a>
        </div>
    </main>
</body>
</html>