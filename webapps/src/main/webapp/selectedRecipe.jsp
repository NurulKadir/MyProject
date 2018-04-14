<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Recipe Chosen</title>
	<link rel="stylesheet" type="text/css" href="resources/css/headerAndNavivigator.css">
	<link rel="stylesheet" type="text/css" href="resources/css/SelectedRecipe.css">
	<script src="resources/javascript/jquery-3.3.1.min.js"></script>
	
</head>

<body>
		<div class="header">
	  		<a href="/webapp/" class="applogo">COOKWISE</a>
	  		
		    <div class="header-login">
		    		<a class="aboutapphome" href="/webapp/" >Home</a>
	  		 	<a class="aboutapphowto" href="#default" >How to</a>
	  		    <a class="aboutappfaq" href="#default" >FAQ</a>
			    <a class="loginregister" href="/webapp/loginRegister">Login/Register</a>    
		  	</div>
		</div>
		
		<div class="appNavigation" id="appNav">
			<a href="/webapp/findRecipe">Search Recipes</a>
			<a href="/webapp/foodFreshness">Food Freshness Checker</a>
			<a href="/webapp/wasteTracker">Wasted-Money Tracker</a>
			<a href="/webapp/nutRequirement">Nutritional Requirement Calculator</a>
			<a href="#home">Leftover Alternatives</a>
			<a href="#home">Food Inventory</a>
		</div>
		
		<div class="upperContainer">
		
			<div class="photoContainer">
			<img class="recipePhoto" src="${photoDir}" onClick="window.print()" alt="Print this page" style="cursor: pointer;" />
			</div>
			
			<div class="recipeInformationContainer">
				<h1>${name}</h1><br>
				 <c:set var="addInfo" value="${additionalInfo}" scope="page" />
				 <c:if test="${!empty addInfo}">
				    <label class="sentence">${addInfo}</label><br><br>
				</c:if>
				<c:set var="desc" value="${description}" scope="page" />
				 <c:if test="${!empty desc}">
				    <label class="sentence">${desc}</label><br><br><hr>
				</c:if>
				<p id="description">
						<label class="recipeColumn">SERVES</label> &nbsp; &nbsp; <label class="recipeColumnValue">${serves}</label> &nbsp; &nbsp;&nbsp; &nbsp;
						<label class="recipeColumn">DIFFICULTY</label> &nbsp; &nbsp;<label class="recipeColumnValue">${complexity}</label> &nbsp; &nbsp;&nbsp; &nbsp;
						<label class="recipeColumn">TOTAL</label> &nbsp; &nbsp; <label class="recipeColumnValue">${totalTime} min</label>
				</p>
				<hr>
				<p id="description">
					<label class="recipeColumn">RESTRICTION</label> &nbsp; &nbsp; <label class="recipeColumnValue">${restriction}</label>
				</p>
				<hr>
				<p id="description">
						<label class="recipeColumn">MEAL</label> &nbsp; &nbsp;&nbsp; &nbsp;
						<c:forEach items="${mealTypes}" var="mealtype">
							<label class="recipeColumnValue">${mealtype}</label> &nbsp; &nbsp; &nbsp;
						</c:forEach>
						<label class="recipeColumn">CATEGORY</label> &nbsp; &nbsp; <label class="recipeColumnValue">${category}</label>&nbsp; &nbsp;
						<label class="recipeColumn">CUISINE</label> &nbsp; &nbsp; <label class="recipeColumnValue">${cuisine}</label> &nbsp; &nbsp;
				</p>
				<hr>	
				<br><label class="recipeColumn">${nutDesc}</label><br><br>
				<c:forEach items="${nutritions}" var="nutrition">
					<div class="nutbox"><label class="nutcolumn">${nutrition.key}</label><hr id="divider"><label class="ingrcol">${nutrition.value}</label></div>
				</c:forEach>
				<br><br>
			</div>
		</div>
		<!-- <hr id="divider">-->
		<div class="lowerContainer">
			<div class="ingredientsContainer">
			<h2>Ingredients</h2>
			<c:forEach items="${ingredients}" var="ingr">
				    <p>
				    <c:if test="${empty ingr.key}">
				    ${ingr.value}
					</c:if>
					<c:if test="${!empty ingr.key}">
					 <label class="ingrcol">${ingr.key}</label>&nbsp;${ingr.value}
					</c:if>
					</p>
			</c:forEach>
			</div>
			<div class="methodContainer">
			<h2>&nbsp; &nbsp; Method</h2>
			<ol>
			<c:set var="count" value="0" scope="page" />
			<c:forEach items="${steps}" var="step">
				<c:set var="count" value="${count + 1}" scope="page"/>
				<li> ${step} </li><br>
			</c:forEach>
			</ol>
			</div>
			
		</div>
		
		
</body>
</html>