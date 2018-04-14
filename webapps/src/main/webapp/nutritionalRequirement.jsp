<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Nutritional Requirement Calculator</title>
	<link rel="stylesheet" type="text/css" href="resources/css/headerAndNavivigator.css">
	<link rel="stylesheet" type="text/css" href="resources/css/nutritionalRequirement.css">
	<script src="resources/javascript/jquery-3.3.1.min.js"></script>
	<script src="resources/javascript/NutReq.js"></script>
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
		
		<div class="appNavigation"id="appNav">
				<a href="/webapp/findRecipe">Search Recipes</a>
				<a href="/webapp/foodFreshness">Food Freshness Checker</a>
				<a href="/webapp/wasteTracker">Wasted-Money Tracker</a>
				<a href="/webapp/nutRequirement">Nutritional Requirement Calculator</a>
				<a href="#home">Leftover Alternatives</a>
				<a href="#home">Food Inventory</a>
			</div>
		
		<div class="main">
			<h1>Nutritional Requirement Calculator</h1>
		</div>
		
		<form class="bodyInfo" action="/webapp/calcRequirement" onsubmit="getRadioButtonValue()">
			<h2>Your Information</h2>
			<label class=instruction>Age &nbsp; &nbsp; &nbsp;: &nbsp;  &nbsp;  </label>
			<input type="text" id="age" name="age" value="0"  data-validation="required"><label> years old</label><br><br>
			<label class=instruction>Weight :  &nbsp;  &nbsp; </label>
			<input type="text" name="weight" value="0" required data-msg="Please fill this field" ><label> kg</label><br><br>
			<label class=instruction>Height :  &nbsp;  &nbsp; </label>
			<input type="text" name="height" value="0" required data-msg="Please fill this field"><label > cm</label><br><br>
			<label class=instruction>Gender :  &nbsp;  &nbsp;</label>
			<input type="radio" id="gender" name="gender" value="male"><label> Male   </label>
			<input type="radio" id="gender" name="gender" value="female"><label> Female</label><br><br>
			<label class=instruction>Lifestyle   :         </label>
			<input type="radio" id="lifestyle" name =lifestyle value="sedantary"><label>Sedentary &nbsp;</label>
			<input type="radio" id="lifestyle" name=lifestyle value="lightlyActive"><label>Lightly Active &nbsp;</label>
			<input type="radio" id="lifestyle" name=lifestyle value="moderatelyActive"><label>Moderately Active &nbsp;</label>
			<input type="radio" id="lifestyle" name=lifestyle value="veryActive"><label>Very Active &nbsp;</label>
			<input type="radio" name=lifestyle value="extraActive"><label>Extra Active</label><br><br>
			<label class=instruction>Meals per day :  </label>
			<input type="text" id="meal" name=dailyMealConsumed value="0" required data-msg="Please fill this field"><label> meals</label><br><br>
			<label class=instruction>Desired Macronutrient Percentage:</label><br><br>
			<label class=instruction>Carbohydrate</label>
			<input type="text"  id="carb" name=carbPreference value="70" class="pref" required data-msg="Please fill this field"><label>&#37;</label> &nbsp; &nbsp;
			<label class=instruction>Protein</label>
			<input type="text" id="pro" name=proteinPreference value="20" class="pref" required data-msg="Please fill this field"><label>&#37;</label> &nbsp; &nbsp;
			<label class=instruction>Fats</label>
			<input type="text" id="fat" name=fatsPreference value="10" class="pref" required data-msg="Please fill this field"><label>&#37;</label> &nbsp;<br><br>
			<label class=instruction>Requirement   :         </label><br><br>
			<input type="radio" id="lose" name =gainMaintainLose value="lose"><label>Lose weight &nbsp;</label>
			<label>by</label> &nbsp;
			<input type="text" id="toLose" name=lose value="">&nbsp;
			<label>pounds a week</label><br><br>
			<input type="radio" id="gain" name=gainMaintainLose value="gain"><label>Gain weight &nbsp;</label>
			<label>by</label> &nbsp;
			<input type="text" id="toGain" name=gain value="">&nbsp;
			<label>pounds a week</label><br><br>
			<input type="radio" id="maintain" name=gainMaintainLose value="maintain"><label>I want to maintain my weight</label><br>	<br><br>
			<p class="error" id="requirementError"></p>
			<button type=submit id=submit>Calculate</button>
		</form>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js"></script>
		
		<div class="result">
				
				<div class="bmibmr">
					<br><label class="res">BMR</label><br>
					<p><%=request.getAttribute("BMR") %></p>
				</div>
				<div class="bmibmr">
					<br><label class="res">BMI</label><br>
					<p><%=request.getAttribute("BMI") %></p>
				</div>
			
			<div class="title">
				<h2>Your Requirement</h2>
			</div>
			
			<label class="res">Daily Requirement</label><br><br>
			<div class="ed">
				
				<table>
	  				<tr>
	   					 <td>Calories (kcals)</td>
	   					 <td><%=request.getAttribute("calPerDay") %></td>
	 				 </tr>
	 				 <tr>
	   					 <td>Carbohydrate (g)</td>
	   					 <td><%=request.getAttribute("carbPerDay") %></td>
	 				 </tr>
	 				 <tr>
	   					 <td>Protein (g)</td>
	   					 <td><%=request.getAttribute("proteinPerDay") %></td>
	 				 </tr>
	 				 <tr>
	   					 <td>Fats (g)</td>
	   					 <td><%=request.getAttribute("fatsPerDay") %></td>
	 				 </tr>
				</table>
			</div>
			
			<label class="res">Per Meal Requirement</label><br>
			
			<div class="ed">
				
				<table>
	  				<tr>
	   					 <td>Calories (kcals)</td>
	   					 <td><%=request.getAttribute("calPerMeal") %></td>
	 				 </tr>
	 				 <tr>
	   					 <td>Carbohydrate (g)</td>
	   					 <td><%=request.getAttribute("carbPerMeal") %></td>
	 				 </tr>
	 				 <tr>
	   					 <td>Protein (g)</td>
	   					 <td><%=request.getAttribute("proteinPerMeal") %></td>
	 				 </tr>
	 				 <tr>
	   					 <td>Fats (g)</td>
	   					 <td><%=request.getAttribute("fatsPerMeal") %></td>
	 				 </tr>
				</table>
			</div>
		</div>
		
		<div class="photos">
		   <c:forEach items="${dirs}" var="dir">
			<div class="container">
				    <img class="recipePhoto" src="${dir}" alt="" />
			</div>
			</c:forEach>
		</div>
		
</body>
</html>