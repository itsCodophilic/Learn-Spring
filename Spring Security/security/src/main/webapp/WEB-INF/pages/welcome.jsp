<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
    <h2>Welcome Page</h2>

    <!-- Logout Form -->
    <form action="<c:url value='/logout' />" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Logout</button>
    </form>

    <div>
        <c:if test="${not empty error}">
            <p style="color:red;">${error}</p>
        </c:if>
        <c:if test="${not empty message}">
            <p style="color:green;">${message}</p>
        </c:if>
    </div>
</body>
</html>
