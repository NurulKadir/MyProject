<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="en">

<head>

	<!--defines character encoding for the document-->
	<meta charset="utf-8">
	<title>HOMEPAGE</title>
	<meta name="documentation" content="COOKWISE HOMEPAGE">
	<meta name="author" content="NURUL_SYUHADA_ABDUL_KADIR_27495124">
	<link rel="stylesheet" type="text/css" href="resources/css/indexStyle.css">
	<link rel="stylesheet" type="text/css" href="resources/css/headerAndNavivigator.css">
</head>


<body>	
	
	
	<div class="header">
  		<a href="/webapps/welcome" class="applogo">COOKWISE</a>
  		
	    <nav class="header-login">
	    		<a class="aboutapphome" href="/webapps/welcome" >Home</a>
  		 	<a class="aboutapphowto" href="#default" >How to</a>
  		    <a class="aboutappfaq" href="#default" >FAQ</a>
		    <sec:authorize access="hasRole('ROLE_USER')">
					<!-- For login user -->
					<c:url value="/j_spring_security_logout" var="logoutUrl" />
					<form action="${logoutUrl}" method="post" id="logoutForm">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
					<script>
						function formSubmit() {
							document.getElementById("logoutForm").submit();
						}
					</script>
			
					
					<c:choose>
					    <c:when test="${pageContext.request.userPrincipal.name != null}">
							 <a class="loginregister" href="javascript:formSubmit()">Logout</a>
					    </c:when>    
					    <c:otherwise>
					         <a class="loginregister" href="/webapps/login">Login/Register</a>     
					        <br />
					    </c:otherwise>
					</c:choose>
			
				</sec:authorize>      
	  		</nav>
		</div>

	
  		
	  	<div class="container">
		  <img src="resources/images/food.jpg" alt="food" style="width:100%;">
			  <p class="introduction">It is undeniable that our home kitchen contributes to the total food waste everyday.Cookwise is a tool that aims to help people 
			  reducing food waste at home. The features include gffkjjklhcfaskuiuiuterseresdfmhjnkjgfzdfsdfdikggfs`
			  zfdbfgfhgh.ojzhfgjhjhmnbgsasdxcvbn`szxcvbnvcsjaasgdhgfjhkjlkjhjgfdfsdfghj</p>
	    </div>
    
    
  		<a href="/webapps/findRecipe" class="find">Find Recipe</a>
		<a href="/webapps/foodFreshness" class="find">Freshness Checker</a>
		<a href="/webapps/wasteTracker" class="find">Wasted-Money Calculator</a>
		<a href="/webapps/nutRequirement" class="find">Nutritional Requirement Calculator</a>
		<a href="#default" class="find">Leftover Alternatives</a>
		<a href="/webapps/kitchenInventory" class="find">Food Inventory</a>

	 <footer>
	  <p>Nurul Kadir</p>
	  <p>nsak1g14@soton.ac.uk</p>
	</footer>
</body>
</html>

	
					
					
					
					
					
					
					
					
					
					
					
					
					