<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<fmt:setBundle basename="internationalisation/message"/>
<title> <fmt:message key="inscription-titre"></fmt:message> </title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

<fmt:setBundle basename="internationalisation/message"/>

	<%@ include file="./entete.html"%>

	<form action="Controleur?page=envoieinscript" method="post" enctype="multipart/form-data"> 

		<fieldset>
			<legend align="top"> <fmt:message key="contact-info"></fmt:message> </legend>
			<ul class="ul2">
			
				<li><label for="genre"> <fmt:message key="genre"></fmt:message><sup>*</sup> </label>
										<fmt:message key="nb"></fmt:message> </label> <input type="radio" id="genre" name="rbGenre" value="NB" checked="checked"/>
										<fmt:message key="m"></fmt:message> </label> <input type="radio" id="genre" name="rbGenre" value="M"/>
										<fmt:message key="f"></fmt:message> </label> <input type="radio" id="genre" name="rbGenre" value="F"/>     
				</li>
			
				<li><label for="txtNom"> <fmt:message key="nom"></fmt:message><sup>*</sup> </label>
				<input type="text" id="txtNom" name="txtNom" placeholder=<fmt:message key="nom"></fmt:message> required="required" /></li>
				
				<li><label> <fmt:message key="prenom"></fmt:message><sup>*</sup> </label>
				<input type="text" id="txtPrenom" name="txtPrenom" placeholder=<fmt:message key="prenom"></fmt:message> required="required" /></li>
				
				<li><label for="txtCouriel"> <fmt:message key="couriel"></fmt:message><sup>*</sup> </label>
				<input type="text" id="txtCouriel" name="txtCouriel" placeholder="*****@***.**" 
				pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required="required" /> </li>
				
				<li><label for="txtNumtel"> <fmt:message key="numtel"></fmt:message><sup>*</sup> </label>
				<input type="text" id="txtNumtel" name="txtNumtel" placeholder="00.00.00.00.00" required="required"/></li>

				<li><label for="txtAdresse"> <fmt:message key="adresse"></fmt:message><sup>*</sup> </label>
				<input type="text" id="txtAdresse" name="txtAdresse" placeholder=<fmt:message key="adresse"></fmt:message> required="required" /></li>
				
				<li><label for="txtVille"> <fmt:message key="ville"></fmt:message><sup>*</sup> </label>
				<input type="text" id="txtVille" name="txtVille" placeholder=<fmt:message key="ville"></fmt:message> required="required" /></li>
			</ul>
		</fieldset>
		
		<fieldset>
			<legend align="top"> <fmt:message key="justificatifs"></fmt:message> </legend>
			<ul class="ul2">
				<li><label for="domicile"> <fmt:message key="domicile"></fmt:message><sup>*</sup> </label>
					<input type="file"  id="justif_domicile" name="justif_domicile" value="" multiple="multiple" accept=".jpg, .jpeg, .png, .pdf" required="required"></li>

				<li><label for="salaire"> <fmt:message key="salaire"></fmt:message><sup>*</sup> </label>
					<input type="file"  id="justif_salaire" name="justif_salaire" value="" multiple="multiple" accept=".jpg, .jpeg, .png, .pdf" required="required"></li>
			</ul>
		</fieldset>
		
		<p>
		<sup>*</sup> <fmt:message key="info-requises"></fmt:message>
		</p>

		<input type="submit" value=<fmt:message key="envoyer"></fmt:message> onclick="return validationDonnee();"/>
		<input type="reset" value=<fmt:message key="annuler"></fmt:message> />

	</form>


	<%@ include file="./piedpage.html"%>

</body>
</html>