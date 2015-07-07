<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.*,com.bankonet.model.Client ,com.bankonet.model.CompteCourant"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compte Courant Bankonet</title>
</head>
<body>
<h1>Comptes Courants Bankonet</h1>
<table border="1">
	<tr>
	<th>Intitulé</th>
	<th> Solde</th>
	<th>Découvert autorisé</th>
	<% Client client = (Client) session.getAttribute("client");
	List<CompteCourant> CC = client.getCompteCourantList();
	Iterator compteIte = CC.iterator();
	while(compteIte.hasNext()  ){
	CompteCourant compte = (CompteCourant) compteIte.next();%>
	</tr>
	<tr>
       <td><% out.println(compte.getLibelle());%></td>
       <td><% out.println(compte.getSolde());%></td>
       <td><% out.println(compte.getDecouvertAutorise());%></td>
   </tr>
   <%} %>
</table>
<br>
<br>
<a href= "pagePrincipale.jsp">Page principale</a>
</body>
</html>