<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<fmt:setBundle basename="internationalisation/message"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> <fmt:message key="remerciement-titre" ></fmt:message> </title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<fmt:setBundle basename="internationalisation/message"/>

	<%@ include file="./entete.html" %>
	
	<p> <fmt:message key="bonjour" ></fmt:message> <%= session.getAttribute("user") %>, <br />
	<fmt:message key="inscript-envoyee-message" ></fmt:message> 
	</p>
	
	<a href="Controleur"> <fmt:message key="accueil" ></fmt:message> </a>

	<%@ include file="./piedpage.html" %>
	

</body>
</html>