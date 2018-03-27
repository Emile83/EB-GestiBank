<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<fmt:setBundle basename="internationalisation/message"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> <fmt:message key="accueil-titre"></fmt:message> </title>
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<fmt:setBundle basename="internationalisation/message"/>

	<%@ include file="./entete.html"%>
	
		<form action='Controleur?page=login' method='post'>
		
			<ul class="ul1">
				<li><input type="text" id='txtId' name='txtId' placeholder=<fmt:message key="id" ></fmt:message> required="required" /></li>
				${error}
				<li><input type="text" id='txtMdp' name='txtMdp' placeholder=<fmt:message key="mdp"></fmt:message> required="required" /></li>
			</ul>

		<input type='submit' value='Se connecter' />

	</form>
	
	créer votre compte en un minimum d'étapes: <a href="Controleur?page=inscript" >inscription</a>
	
	
		<%@ include file="./piedpage.html"%>
		
</body>
</html>