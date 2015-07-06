<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MENU BANKONET</title>
</head>
<body>
	<h1>Page Principale</h1>
	<p>Bonjour <% 
            String nom = (String) session.getAttribute("nom");
			String prenom = (String) session.getAttribute("prenom");
            out.println(nom);
            out.println(prenom);
            %> </p>
	<p>Opérations disponibles :</p>
	
	<ul>
	<li><a href= "#">Compte Courant</a></li>

	<% boolean ce = (boolean) session.getAttribute("compteEpargne");
	if(ce==false){%>
	<li><a href= "#">Compte Epargne</a></li><%}%>

	</ul>
	
</body>
</html>