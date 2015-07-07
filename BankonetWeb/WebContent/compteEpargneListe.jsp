<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,com.bankonet.model.Client ,com.bankonet.model.CompteEpargne"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Comptes Epargne Bankonet</title>
</head>
<body>
<h1>Comptes Epargnes Bankonet</h1>
<table border="1">
	<tr>
	<th>Intitulé</th>
	<th>Solde</th>
	<th>Taux d'intérêt</th>
	<th>Plafond</th>
	</tr>
		<c:forEach items="${client.compteEpargneList}" var="compte">
	<tr>
       <td>
       		<a href= "<%=request.getContextPath()%>/detailCompteEpargne?compteId=<c:out value ="${compte.identifiant}"/>">
       			<c:out value="${compte.libelle}"/>
       		</a>
       	</td>
       
       <td><c:out value="${compte.solde}"/></td>
       <td><c:out value="${compte.tauxInteret}"/></td>
       <td><c:out value="${compte.plafond}"/></td>
   </tr>
   </c:forEach>
</table>
<br>
<br>
<a href= "pagePrincipale.jsp">Page principale</a>

</body>
</html>