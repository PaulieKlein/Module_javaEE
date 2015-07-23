<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,com.bankonet.model.Virement"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Virement effectué</title>
</head>
<body>
<h1>Votre virement a été correctement effectué</h1>
<!--table border="1">
	<tr>
		<th></th>
		<th>Libellé</th>
		<th>Solde</th>
	</tr>
	<tr>
		<td>Compte Source</td>
		<c:if test="${virement.compteSource.identifiant==compte.identifiant}">
		<td><c:out value="${compte.libelle}"/></td>
		<td><c:out value="${compte.solde}"/></td>
		</c:if>
	</tr>
	<tr>
		<td>Compte Destination</td>
		<c:if test="${virement.compteDestination.identifiant==compte.identifiant}">
		<td><c:out value="${compte.libelle}"/></td>
		<td><c:out value="${compte.solde}"/></td>
		</c:if>
	</tr>
	
</table-->

<table border="1">
	<tr>
		<th></th>
		<th>Libellé</th>
		<th>Solde</th>
	<% Virement virement = (Virement) session.getAttribute("virement");%>
	
	</tr>
	<tr>
		<td>Compte Source</td>
       <td><% out.println(virement.getCompteSource().getLibelle());%></td>
       <td><% out.println(virement.getCompteSource().getSolde());%></td>
   </tr>
   <tr>
   		<td>Compte Destination</td>
       <td><% out.println(virement.getCompteDestination().getLibelle());%></td>
       <td><% out.println(virement.getCompteDestination().getSolde());%></td>
   </tr>
</table>
<br>
<br>
<a href= "pagePrincipale.jsp">Page principale</a>
</body>
</html>