<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Virement Bankonet</title>
</head>
<body>
<h1>Virement</h1>
<form action="<%=request.getContextPath()%>/traiterVirement" method="post">
<table>
<tr>
<tr>
<td>Compte source</td>
<td>Compte destinataire</td>
<td>Montant à virer</td>
</tr>
<tr>
<td>
		<select name="compteSource">
		<c:forEach items="${client.comptes}" var="compte">
			<option value="<c:out value="${compte.identifiant}"/>"><c:out value="${compte.libelle}"/></option>
		</c:forEach>
		</select>
		
</td>
<td>
		<select name="compteDestination">
		<c:forEach items="${client.comptes}" var="compte">
			<option value="<c:out value="${compte.identifiant}"/>"><c:out value="${compte.libelle}"/></option>
		</c:forEach>
		</select>

</td>
<td>
		<input type="text" name="montant" maxlength="20" size="20" value="">
</td>
</tr>
<tr>
		<td align="right">
		<input type="reset" value="Reinitialiser">
		</td>
		<td align="right">
		<input type="submit" value="virer">
		</td>
	</tr>
</table>
</form>
<br>
<br>
<a href= "pagePrincipale.jsp">Page principale</a>
</body>
</html>