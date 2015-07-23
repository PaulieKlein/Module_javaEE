<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Erreur de virement</title>
</head>
<body>
<h1>Erreur de virement</h1>
<p>Le virement n'a pas pu s'effectuer pour la raison suivante :</p>
<c:if test="${virement.compteSource.identifiant==compte.identifiant}">
<p>Le compte <c:out value="${compte.identifiant}"/> a pour plafond de crédit <c:out value="${compte.plafond}"/> </p>
</c:if>
</body>
</html>