<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>FOOD FRESHNESS CHECKER</title>
	<link rel="stylesheet" type="text/css" href="resources/css/headerAndNavivigator.css">
	<link rel="stylesheet" type="text/css" href="resources/css/FindRecipe.css">
	<script src="resources/javascript/jquery-3.3.1.min.js"></script>
	<script src="resources/javascript/findRecipe.js"></script>
</head>

<body>
	
	<div class="tops">
		<div class="header">
	 		<a href="/webapps/home" class="applogo">COOKWISE</a>
	 		
		     <div class="header-login">
		  		<a class="aboutapphome" href="/webapps/home" >Home</a>
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
		 	</div>
		</div>
		
		<div class="appNavigation" id="appNav">
			<a href="/webapps/findRecipe">Search Recipes</a>
			<a href="/webapps/foodFreshness">Food Freshness Checker</a>
			<a href="/webapps/wasteTracker">Wasted-Money Tracker</a>
			<a href="/webapps/nutRequirement">Nutritional Requirement Calculator</a>
			<a href="#home">Leftover Alternatives</a>
			<a href="#home">Food Inventory</a>
		</div>
		
		<form class="harea" action="/webapps/findRec">
		  <textarea id="area" name="chosenfood" readonly>Food Chosen</textarea>
		  <div class="ayam">
		      <input id="submitIngr" type="submit" value="submit">
		  </div>
		 
		  </form>
		</div>                 
					
		
		<div class="navbar">
			  <div id="inner">
			  
			  <button class="dropdown-btn">Baking  </button>
			  <div class="dropdown-container">
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="almond essence"><label>almond essence</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="baking powder"><label>baking powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="bicarbonate of soda"><label>bicarbonate of soda</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cocoa powder"><label>cocoa powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="marshmallows"><label>marshmallows</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="raspberry jelly"><label>raspberry jelly</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="red food colouring"><label>red food colouring</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="redcurrant jelly"><label>redcurrant jelly</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="soda water"><label>soda water</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="vanilla extract"><label>vanilla extract</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="vanilla pod"><label>vanilla pod</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="vanilla powder"><label>vanilla powder</label>
			  </div>
			   
			  <button class="dropdown-btn">Biscuit  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="biscuit"><label>biscuit</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="digestive biscuit"><label>digestive biscuit</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="malted milk biscuit"><label>malted milk biscuit</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="prawn crackers"><label>prawn crackers</label>
			    
			  
			  </div>
			 
			  <button class="dropdown-btn">Bird  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chicken"><label>chicken</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="duck legs"><label>duck legs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ducks"><label>ducks</label>
			    
			  </div>
			  
			  
			  
			  <button class="dropdown-btn">Dried food  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried apple"><label>dried apple</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried cranberries"><label>dried cranberries</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried green lentils"><label>dried green lentils</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried linguine"><label>dried linguine</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried mixed herbs"><label>dried mixed herbs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried oregano"><label>dried oregano</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried porcini mushrooms"><label>dried porcini mushrooms</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried red lentils"><label>dried red lentils</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dried sour cherries"><label>dried sour cherries</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="raisin"><label>raisin</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sultana"><label>sultana</label>
			    
			  
			  </div>
			  
			  <button class="dropdown-btn">Dip  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rashers bacon"><label>rashers bacon</label><br><br>
				<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="smoked bacon lardons"><label>smoked bacon lardons</label><br><br>
				<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="streaky bacon"><label>streaky bacon</label><br><br>
			    
			  </div>
			  
			  <button class="dropdown-btn">Eggs  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="egg whites"><label>egg whites</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="egg yolk"><label>egg yolk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="eggs"><label>eggs</label>
			  </div>
			 
			  <button class="dropdown-btn">Lambs  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="hot lamb stock"><label>hot lamb stock</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lamb chops"><label>lamb chops</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lamb leg steaks"><label>lamb leg steaks</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lamb mince"><label>lamb mince</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="leg of lamb"><label>leg of lamb</label>
			  </div>
			  
			  <button class="dropdown-btn">Pork  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rashers bacon"><label>rashers bacon</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="smoked bacon lardons"><label>smoked bacon lardons</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="streaky bacon"><label>streaky bacon</label><br><br>
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="boned pork belly"><label>boned pork belly</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="minced pork"><label>minced pork</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Pork Leg Escalopes"><label>Pork Leg Escalopes</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pork loin"><label>pork loin</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pork shoulder"><label>pork shoulder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pork spare ribs"><label>pork spare ribs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pork tenderloin"><label>pork tenderloin</label>
			  </div>
			 
			  <button class="dropdown-btn">Dairy  </button>
			  <div class="dropdown-container">
			  			
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="blue cheese"><label>blue cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="butter"><label>butter</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="buttermilk"><label>buttermilk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cheese"><label>cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="condensed milk"><label>condensed milk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cream cheese"><label>cream cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dark chocolate"><label>dark chocolate</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="double cream"><label>double cream</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="feta cheese"><label>feta cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="full-fat milk"><label>full-fat milk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ghee"><label>ghee</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="goat's cheese"><label>goat's cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mascarpone"><label>mascarpone</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Mature Cheddar Cheese"><label>Mature Cheddar Cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="milk"><label>milk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="milk chocolate"><label>milk chocolate</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mozzarella"><label>mozzarella</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="parmesan"><label>parmesan</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Philadelphia cheese"><label>Philadelphia cheese</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ricotta"><label>ricotta</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salted butter"><label>salted butter</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Semi Skimmed Milk"><label>Semi Skimmed Milk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="single cream"><label>single cream</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="soured cream"><label>soured cream</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="stilton"><label>stilton</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="unsalted butter"><label>unsalted butter</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="vanilla ice cream"><label>vanilla ice cream</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="yeast"><label>yeast</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="yogurt"><label>yogurt</label>
						
				</div>
			  
			  <button class="dropdown-btn">Fruits  </button>
			  <div class="dropdown-container">
			  			
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="apples"><label>apples</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="apricot"><label>apricot</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="avocado"><label>avocado</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="banana"><label>banana</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="blackberries"><label>blackberries</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="clementine"><label>clementine</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="corn"><label>corn</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="corn cobs"><label>corn cobs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="desiccated coconut"><label>desiccated coconut</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dessert apples"><label>dessert apples</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="figs"><label>figs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="grapes"><label>grapes</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="juniper berries"><label>juniper berries</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lemon"><label>lemon</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lime"><label>lime</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Mango"><label>Mango</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="orange zest"><label>orange zest</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="oranges"><label>oranges</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pineapple"><label>pineapple</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="plum"><label>plum</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pomegranate molasses"><label>pomegranate molasses</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="raspberries"><label>raspberries</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sweetcorn"><label>sweetcorn</label>
			    			
			  </div>
			
			  <button class="dropdown-btn">Leaves  </button>
			  <div class="dropdown-container">
						
			   			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="basil leaves"><label>basil leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="bay leaves"><label>bay leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chicory leaves"><label>chicory leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Chinese leaves"><label>Chinese leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="coriander leaves"><label>coriander leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="curry leaves"><label>curry leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dill leaves"><label>dill leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="gelatine leaves"><label>gelatine leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mint"><label>mint</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mint leaves"><label>mint leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="nettle leaves"><label>nettle leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="oregano leaves"><label>oregano leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="parsley leaves"><label>parsley leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="punnet of cress"><label>punnet of cress</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rosemary leaves"><label>rosemary leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sage leaves"><label>sage leaves</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="samphire"><label>samphire</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tarragon sprigs"><label>tarragon sprigs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="thyme leaves"><label>thyme leaves</label>
			    			
			  </div>
			 
			  <button class="dropdown-btn">Noodle  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="egg noodle"><label>egg noodle</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="noodle"><label>noodle</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rice noodle"><label>rice noodle</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="udon noodle"><label>udon noodle</label>
			    
			  </div>
			 
			  <button class="dropdown-btn">Nuts  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="almond"><label>almond</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cashew nuts"><label>cashew nuts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chestnuts"><label>chestnuts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="peanuts"><label>peanuts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pecans"><label>pecans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pine nuts"><label>pine nuts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pistachio"><label>pistachio</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pistachio kernels"><label>pistachio kernels</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="walnuts"><label>walnuts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="water chestnuts"><label>water chestnuts</label>
			  </div>
			 
			  <button class="dropdown-btn">Condiments  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="balsamic vinegar"><label>balsamic vinegar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="bourbon"><label>bourbon</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Chinese black vinegar"><label>Chinese black vinegar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="draining juices from vegetables"><label>draining juices from vegetables</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="golden syrup"><label>golden syrup</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="honey"><label>honey</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="malt syrup"><label>malt syrup</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="maple syrup"><label>maple syrup</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="marsala"><label>marsala</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="red wine"><label>red wine</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="red wine vinegar"><label>red wine vinegar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rice vinegar"><label>rice vinegar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rice wine vinegar"><label>rice wine vinegar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Shaoxing wine"><label>Shaoxing wine</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sherry vinegar"><label>sherry vinegar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tahini"><label>tahini</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="vegetable stock"><label>vegetable stock</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Vegetarian red wine"><label>Vegetarian red wine</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="white wine vinegar"><label>white wine vinegar</label>
			    
			  </div>
			
			  <button class="dropdown-btn">Meat  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="brisket"><label>brisket</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="meat stock"><label>meat stock</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="meat strips"><label>meat strips</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Meatballs"><label>Meatballs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="minced meat"><label>minced meat</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="prosciutto"><label>prosciutto</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rabbit"><label>rabbit</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ribs"><label>ribs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salt meat"><label>salt meat</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sausage meat"><label>sausage meat</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="short ribs"><label>short ribs</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sirloin steak"><label>sirloin steak</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="steak"><label>steak</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="T-bone steak"><label>T-bone steak</label>
			  </div>
			 
			  <button class="dropdown-btn">Seafood  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="anchovy fillets"><label>anchovy fillets</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="firm white fish"><label>firm white fish</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mixed shellfish"><label>mixed shellfish</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pollock fillets"><label>pollock fillets</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="prawns"><label>prawns</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salmon Fillets"><label>salmon Fillets</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sea bass"><label>sea bass</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sea bass fillet"><label>sea bass fillet</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tilapia fillets"><label>tilapia fillets</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="trout fillets"><label>trout fillets</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tuna Steak"><label>tuna Steak</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="white crabmeat"><label>white crabmeat</label>
			  </div>
			  
			  <button class="dropdown-btn">Vegetable  </button>
			  <div class="dropdown-container">
			  			
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="artichoke hearts"><label>artichoke hearts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="aubergines"><label>aubergines</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="beansprouts"><label>beansprouts</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="bird's eye chilli"><label>bird's eye chilli</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="black beans"><label>black beans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Borlotti Beans"><label>Borlotti Beans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="broccoli"><label>broccoli</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="butternut squash"><label>butternut squash</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cabbage"><label>cabbage</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cannellini beans"><label>cannellini beans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="capers"><label>capers</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="carrot"><label>carrot</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cauliflower"><label>cauliflower</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="celery"><label>celery</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chive"><label>chive</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="courgette"><label>courgette</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cucumber"><label>cucumber</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="galangal"><label>galangal</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="garlic"><label>garlic</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="gem lettuce"><label>gem lettuce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="gherkins"><label>gherkins</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ginger"><label>ginger</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="green bean "><label>green bean </label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="green cardamom pods"><label>green cardamom pods</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="green chillies"><label>green chillies</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="green olives"><label>green olives</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="iceberg lettuce"><label>iceberg lettuce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="kale"><label>kale</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="leeks"><label>leeks</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lemongrass"><label>lemongrass</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lettuces"><label>lettuces</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mangetout"><label>mangetout</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mixed vegetable"><label>mixed vegetable</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mushrooms"><label>mushrooms</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="onion"><label>onion</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pak choi"><label>pak choi</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="peas"><label>peas</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pickled turnips"><label>pickled turnips</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="potato"><label>potato</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pumpkin"><label>pumpkin</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="radish"><label>radish</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="raw beetroot"><label>raw beetroot</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="raw vegetables"><label>raw vegetables</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Red Kidney Beans"><label>Red Kidney Beans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pepper"><label>pepper</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="runner beans"><label>runner beans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salad"><label>salad</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salad onions"><label>salad onions</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="shallot"><label>shallot</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="shiitake mushrooms"><label>shiitake mushrooms</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="soya beans"><label>soya beans</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="spinach"><label>spinach</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="spring greens"><label>spring greens</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="spring onion"><label>spring onion</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sweet potato"><label>sweet potato</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tomato"><label>tomato</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="turmeric"><label>turmeric</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="watercress"><label>watercress</label><br><br>
						
			    
			  </div>
			  
			  <button class="dropdown-btn">Spice  </button>
			  <div class="dropdown-container">
			  			
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="barbecue spice"><label>barbecue spice</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cayenne pepper"><label>cayenne pepper</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chia seeds"><label>chia seeds</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chilli flakes"><label>chilli flakes</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chilli powder"><label>chilli powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cinnamon"><label>cinnamon</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cinnamon stick"><label>cinnamon stick</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cumin seeds"><label>cumin seeds</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="curry powder"><label>curry powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="fennel seeds"><label>fennel seeds</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="five spice powder"><label>five spice powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="garam masala"><label>garam masala</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ground asafoetida"><label>ground asafoetida</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ground cinnamon"><label>ground cinnamon</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ground cumin"><label>ground cumin</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ground fenugreek"><label>ground fenugreek</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ground turmeric"><label>ground turmeric</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="ground white pepper"><label>ground white pepper</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="lentil"><label>lentil</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mace"><label>mace</label><br><br>
					
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mustard powder"><label>mustard powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mustard seeds"><label>mustard seeds</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="nutmeg"><label>nutmeg</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="paprika"><label>paprika</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="peppercorns"><label>peppercorns</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="saffron"><label>saffron</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sesame seeds "><label>sesame seeds </label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="squeezy mustard"><label>squeezy mustard</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="star anise"><label>star anise</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sumac"><label>sumac</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tandoori masala powder"><label>tandoori masala powder</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="turmeric powder"><label>turmeric powder</label>
						
						
			    
			  </div>
			 
			  <button class="dropdown-btn">Sauce  </button>
			  <div class="dropdown-container">
						
			    			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="barbecue sauce"><label>barbecue sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="brown sauce"><label>brown sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chilli bean sauce"><label>chilli bean sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chilli ketchup"><label>chilli ketchup</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chilli sauce"><label>chilli sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chipotle Tabasco sauce"><label>chipotle Tabasco sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="coconut cream"><label>coconut cream</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="coconut milk"><label>coconut milk</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="dark soy sauce"><label>dark soy sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Dijon mustard"><label>Dijon mustard</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="fish sauce"><label>fish sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="hoisin sauce"><label>hoisin sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="hot sauce"><label>hot sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="low salt soy sauce"><label>low salt soy sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mayonnaise"><label>mayonnaise</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="oyster sauce"><label>oyster sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="soy sauce"><label>soy sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sweet chilli sauce"><label>sweet chilli sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="teriyaki sauce"><label>teriyaki sauce</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="wholegrain mustard"><label>wholegrain mustard</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Worcestershire sauce"><label>Worcestershire sauce</label>
			    			
			  </div>
			 
			  <button class="dropdown-btn">Seasoning  </button>
			  <div class="dropdown-container">
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="brown sugar"><label>brown sugar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Cajun seasoning"><label>Cajun seasoning</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="caster sugar"><label>caster sugar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Chinese cooking wine dry sherry"><label>Chinese cooking wine dry sherry</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chipotle paste"><label>chipotle paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="curry paste"><label>curry paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="demerara sugar"><label>demerara sugar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Disaronno liqueur"><label>Disaronno liqueur</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="green curry paste"><label>green curry paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="icing sugar"><label>icing sugar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="korma curry paste"><label>korma curry paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="muscovado sugar"><label>muscovado sugar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="palm sugar"><label>palm sugar</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rosewater"><label>rosewater</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salt"><label>salt</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="seasoning"><label>seasoning</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="shrimp paste"><label>shrimp paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sugar granulated"><label>sugar granulated</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tahini paste"><label>tahini paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tamarind paste"><label>tamarind paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="tikka paste"><label>tikka paste</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="wasabi paste"><label>wasabi paste</label>
						
			    
			  </div>
			  
			  <button class="dropdown-btn">Wheat  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="fine polenta"><label>fine polenta</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="Fusilli"><label>Fusilli</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="macaroni"><label>macaroni</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pasta"><label>pasta</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="penne"><label>penne</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="quinoa"><label>quinoa</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="spring roll wrappers"><label>spring roll wrappers</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="wholewheat spaghetti"><label>wholewheat spaghetti</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="wonton wrappers"><label>wonton wrappers</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mixed vegetable"><label>mixed vegetable</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="double cream"><label>double cream</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sea bass fillet"><label>sea bass fillet</label><br><br>
			    
			  </div>
			  
			  <button class="dropdown-btn">Oil  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="coconut oil"><label>coconut oil</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="groundnut oil"><label>groundnut oil</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="olive oil"><label>olive oil</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sesame oil"><label>sesame oil</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sunflower oil"><label>sunflower oil</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="vegetable oil"><label>vegetable oil</label>
			  </div>
			 
			  <button class="dropdown-btn">Flour  </button>
			  <div class="dropdown-container">
			    <input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="00 flour"><label>00 flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="cornflour"><label>cornflour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="flour tortillas"><label>flour tortillas</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="floury potato"><label>floury potato</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="plain flour"><label>plain flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="self-raising flour"><label>self-raising flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="semolina flour"><label>semolina flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="strong bread flour"><label>strong bread flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="strong white bread flour"><label>strong white bread flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="strong white flour"><label>strong white flour</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="strong wholemeal flour"><label>strong wholemeal flour</label>
			  </div>
			
			  <button class="dropdown-btn">Bread  </button>
			  <div class="dropdown-container">
			   			<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="baguettes"><label>baguettes</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="bread"><label>bread</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="brik pastry"><label>brik pastry</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="brioche buns"><label>brioche buns</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="burger bun"><label>burger bun</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="chilled dessert pastry"><label>chilled dessert pastry</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="crusty white bread"><label>crusty white bread</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="hot dog buns"><label>hot dog buns</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="mini naan bread"><label>mini naan bread</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="pitta breads"><label>pitta breads</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="rice naan bread"><label>rice naan bread</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="salted pretzel"><label>salted pretzel</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="sweet shortcrust pastry"><label>sweet shortcrust pastry</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="white brown bread"><label>white brown bread</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="wholemeal bread"><label>wholemeal bread</label><br><br>
						<input id="checkBox" type="checkbox" onClick="add()" name="ingredient" value="wholemeal breadcrumbs"><label>wholemeal breadcrumbs</label>

			  </div>
			  </div>
		</div>
		
		
		
		  

		  <div class="resultComponent">
		
			 <div class="title">
			 	<h1>Recipes</h1>
			</div>
			
			
			<div class="sortdropdown">
			
			 <select class="price-sorting sortoptions" name="price-sorting">
			    <option selected disabled>SORT BY</option>
			    <option value="l2h">Total time (ascending)</option>
			    <option value="h2l">Total time (descending)</option>
			    <option value="call2h">Total Calories (ascending)</option>
			    <option value="calh2l">Total Calories (descending)</option>
			</select>
			
			<select class="difficultyfilter sortoptions" id="parent" name="filter">
			    <option selected disabled>DIFFICULTY</option>
			    <option value="easy">Easy</option>
			    <option value="medium">Require more effort</option>
			    <option value="hard">Quiet a challenge</option>
			</select>
			
			<select class="price-sorting sortoptions" name="filter">
			    <option selected disabled>CUISINE</option>
			    <option value="">American</option>
    			    <option value="l2h">Chinese</option>
    			    <option value="l2h">Indian</option>
    			    <option value="l2h">Italian</option>
    			    <option value="l2h">Thai</option>
    			    <option value="l2h">Western</option>
			</select>
			
			<select class="recipeFilter sortoptions" name="filter">
			    <option selected disabled>RESTRICTION TO EXCLUDE</option>
			    <option value="l2h">No restriction</option>
			    <option value="h2l">Not suitable for vegetarian and vegan</option>
			    <option value="call2h">Not suitable for vegetarian and vegan , non-kosher</option>
			    <option value="calh2l">Not suitable for vegetarian and vegan</option>
    			    <option value="calh2l">Not suitable for vegetarian and vegan, non-halal, non-kosher</option>
    			    <option value="calh2l">Not suitable for vegetarian and vegan, non-kosher</option>
			</select>
			
			





		</div>	 
		
		
		
		<div class="result">
			<c:forEach items="${recipeList}" var="recipe">
			<div class="container ${recipe.complexity}" id="mycontainer" data-totaltime="${recipe.totalTime}" data-totalcalories="${recipe.totalCalories}" 
			data-complexity="${recipe.complexity}">
				 <div class="comp" style="display: none;">${recipe.complexity}</div>
				  <div class="top-left">${recipe.recipeName}</div>
				  <!--  <input type="hidden" name="recipeID" id="hidden" value="${recipe.recipeID}">-->
				  <!--  <a id="update" href="${pageContext.request.contextPath}/recipes/${recipe.recipeID}" class="button">Cook this recipe</a>-->
				    <img class="recipePhoto" src="${recipe.photoDir}" alt="" />
				    <a id="update" href="${pageContext.request.contextPath}/recipes?recipeID=${recipe.recipeID}" class="button">Cook this recipe</a>
				    <div class=recsideinfo>
				    <div class="tot"><a>Total Time</a><hr id="divider"><a>${recipe.totalTime} minutes</a></div>
				    <div class="tot"><a>Total Calories</a><hr id="divider"><a>${recipe.totalCalories} kcals</a></div>
				    </div>
				   <!--  <div class="centered">${recipe.description}</div>--> 
			</div>
			</c:forEach>
		</div>
		
		</div>
		
		   

				<script>
					/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
					var dropdown = document.getElementsByClassName("dropdown-btn");
					var i;
					
					for (i = 0; i < dropdown.length; i++) {
					  dropdown[i].addEventListener("click", function() {
					    this.classList.toggle("active");
					    var dropdownContent = this.nextElementSibling;
					    if (dropdownContent.style.display === "block") {
					      dropdownContent.style.display = "none";
					    } else {
					      dropdownContent.style.display = "block";
					    }
					  });
					}
					
					$(':checkbox').click(function() {
					    $("#area").val($(':checkbox:checked').map(function() {
					      return this.value;
					    }).get());
					});
					
					   $( "#area" ).text(sessionStorage.getItem("food"));

					 // When your submit button is clicked
			          $("#submitIngr").click(function (e) {
			        	
						    var foods =   $("#area").val();
				   			sessionStorage.setItem("food", foods);
				
			        });
					
			         $('#difficultyfilter').change(function() {
			        	    var matches = $('div > p.' + $(this).val());
			        	    matches.show().siblings().not(matches).hide();
			        	});
						
					$(document).on("change", ".price-sorting", function() {

					    var sortingMethod = $(this).val();

					    if(sortingMethod == 'l2h')
					    {
					    	sortAscending("totalTime");
					    }
					    else if(sortingMethod == 'h2l')
					    {
					    	sortDescending("totalTime");
					    }
					    else if(sortingMethod == 'call2h')
					    {
					    	sortAscending("totalcalories");
					    }
					    else if(sortingMethod == 'calh2l')
					    {
					    	sortDescending("totalcalories");
					    }
					    
					});
					
					function sortAscending(toCheck)
					{
					    var products = $('.container');
					    if (toCheck == "totalTime"){
					    		products.sort(function(a, b){ return $(a).data("totaltime")-$(b).data("totaltime")});
					    }
					    else if(toCheck == "totalcalories"){
				    			products.sort(function(a, b){ return $(a).data("totalcalories")-$(b).data("totalcalories")});					    	
					    }
					    $(".result").html(products);

					}

					function sortDescending(toCheck)
					{
					    var products = $('.container');
					    if (toCheck == "totalTime"){
				    		products.sort(function(a, b){ return $(b).data("totaltime")-$(a).data("totaltime")});
					    }
					    else if(toCheck == "totalcalories"){
				    			products.sort(function(a, b){ return $(b).data("totalcalories")-$(a).data("totalcalories")});					    	
					    }					   
					    $(".result").html(products);

					}
					
					
		         </script>		  
						  
						  
		
					
					
		
		 
</body>
</html>