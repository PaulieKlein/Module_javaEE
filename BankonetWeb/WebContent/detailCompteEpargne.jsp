<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,java.lang.Integer,com.bankonet.model.Client ,com.bankonet.model.CompteEpargne"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Détails compte épargne</title>
</head>
<body>
<h1>Détails du compte épargne</h1>
<table border="1">

	<tr>
		<td>Identifiant</td>
		<td><c:out value="${compte.identifiant}"/></td>
	</tr>
	<tr>
		<td>Libellé</td>
		<td><c:out value="${compte.libelle}"/></td>
	</tr>
	<tr>
		<td>Solde</td>
		<td><c:out value="${compte.solde}"/></td>
	</tr>
	<tr>
		<td>Taux d'inrérêt</td>
		<td><c:out value="${compte.tauxInteret}"/></td>
	</tr>
	<tr>
		<td>Plafond des échéances</td>
		<td><c:out value="${compte.plafond}"/></td>
	</tr>
</table>
<br>
<br>
<a href= "pagePrincipale.jsp">Page principale</a>
</body>
</html>