<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Gestion Inventaire</title>
</head>
<body>
    <h1>Inventaire du Stock</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Quantité</th>
        </tr>
        <c:forEach items="${items}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.quantity}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="rtl" lang="ar">
<head>
    <meta charset="UTF-8">
    <title>إدارة المخزون</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
</head>
<body>
    <header>
        <h1>إدارة المخزون</h1>
    </header>
    
    <main>
        <div class="container">
            <div class="actions">
                <a href="inventory?action=add" class="btn">إضافة عنصر جديد</a>
                <a href="inventory?action=transfer" class="btn">نقل بين الفروع</a>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>الاسم</th>
                        <th>النوع</th>
                        <th>الكمية</th>
                        <th>سعر الشراء</th>
                        <th>الفرع</th>
                        <th>الإجراءات</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${items}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.name}</td>
                        <td>${item.type}</td>
                        <td class="${item.quantity < 5 ? 'low-stock' : ''}">
                            ${item.quantity}
                        </td>
                        <td>${item.purchasePrice} د.ت</td>
                        <td>${item.branchId}</td>
                        <td>
                            <a href="inventory?action=edit&id=${item.id}">تعديل</a>
                            <a href="inventory?action=delete&id=${item.id}" 
                               onclick="return confirm('هل أنت متأكد؟')">حذف</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>