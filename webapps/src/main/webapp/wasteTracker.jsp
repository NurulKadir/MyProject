<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
	<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
	<title>WASTED-MONEY TRACKER</title>
	<link rel="stylesheet"type="text/css"href="resources/css/headerAndNavivigator.css">
	<link rel="stylesheet"type="text/css"href="resources/css/wasteTracker.css">
	<script src="resources/javascript/jquery-3.3.1.min.js"></script>
	<script src="resources/javascript/wasteTracker.js"></script>
	
	
</head>

<body>
	
			<div class="header">
		  		<a href="/webapp/" class="applogo">COOKWISE</a>
		  		
			    <div class="header-login">
			    		<a class="aboutapphome"href="/webapp/">Home</a>
		  		 	<a class="aboutapphowto"href="#default">How to</a>
		  		    <a class="aboutappfaq"href="#default">FAQ</a>
				    <a class="loginregister"href="/webapp/loginRegister">Login/Register</a>    
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
	
			<div class="chooseFood">
					<label class="foodListLabel">Choose a food</label><br><br>
					<button class="dropButton">Beef</button>
					<div class="dropdown-container">					
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Topside"><label   class="radioLabel">Topside</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Sirloin Steak"><label   class="radioLabel">Sirloin Steak</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Rump Steak"><label   class="radioLabel">Rump Steak</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Fillet Steak"><label   class="radioLabel">Fillet Steak </label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Diced Stewing Steak"><label   class="radioLabel">Diced Stewing Steak</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Braising Steak"><label   class="radioLabel">Braising Steak</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Premium Mince"><label   class="radioLabel">Premium Mince</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Standard Mince"><label   class="radioLabel">Standard Mince </label><br>
					</div>
					
					<button class="dropButton">Lamb</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Whole Leg"><label   class="radioLabel">Whole Leg</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Lamb Fillet End Leg"><label   class="radioLabel">Fillet End Leg</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Shoulder (Bone-in)"><label   class="radioLabel">Shoulder (Bone-in)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Lamb Shoulder (Boneless)"><label   class="radioLabel">Shoulder (Boneless)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Lamb Steaks"><label   class="radioLabel">Lamb Steaks</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Lamb Loin Chops"><label   class="radioLabel">Loin Chops</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Double Loin Chops"><label   class="radioLabel">Double Loin Chops</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Cutlet chops"><label   class="radioLabel">Cutlet chops</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Diced Lamb"><label   class="radioLabel">Diced Lamb</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Minced Lamb"><label   class="radioLabel">Minced Lamb </label><br>
					</div>
					
					<button class="dropButton">Pork</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Leg (Boneless)"><label   class="radioLabel">Leg (Boneless)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Pork Fillet End Leg"><label   class="radioLabel">Pork Fillet End Leg</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Pork Shoulder (Boneless)"><label   class="radioLabel">Shoulder (Boneless)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Fillet of pork"><label   class="radioLabel">Fillet of pork </label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Loin Steaks"><label   class="radioLabel">Loin Steaks</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Pork Loin Chops"><label   class="radioLabel">Loin Chops</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Diced Pork"><label   class="radioLabel"> Diced Pork </label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Minced Pork"><label   class="radioLabel">Minced Pork</label><br>
					</div>
					
					<button class="dropButton">Sausage</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Pork (Traditional)"><label   class="radioLabel">Pork (Traditional)</label><br>
					</div>
					
					<button class="dropButton">Chicken</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Chicken Breast"><label   class="radioLabel">Chicken Breast</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Chicken Leg"><label   class="radioLabel">Chicken Leg</label><br>
					</div>
					
					<button class="dropButton">Fish</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="White Fish"><label   class="radioLabel">White Fish</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Salmon"><label   class="radioLabel">Salmon</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Shrimp"><label   class="radioLabel">Shrimp</label><br>
					</div>
					
					<button class="dropButton">Cream</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Total Cream"><label   class="radioLabel">Total Cream</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Double Cream"><label   class="radioLabel">Double Cream</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Single Cream"><label   class="radioLabel">Single Cream</label><br>
					</div>
					
					<button class="dropButton">Cheese</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Local Cheese(1lb)"><label   class="radioLabel">Local Cheese (1 lb)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Mature Cheddar"><label   class="radioLabel">Mature Cheddar</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Mild Cheddar"><label   class="radioLabel">Mild Cheddar</label><br>
					</div>
					
					<button class="dropButton">Butter</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Block butter (per 250g)"><label   class="radioLabel">Block butter (per 250g)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Spreadable butter (per 500g)"><label   class="radioLabel">Spreadable butter (per 500g)</label><br>
					</div>
					
					<button class="dropButton">Margarine</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Margarine/low-fat spread (per 500g)"><label   class="radioLabel">Margarine/low fat spread (per 500g)</label><br>
					</div>
					
					<button class="dropButton">Milk</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="4 pints milk"><label   class="radioLabel">4 pints Milk</label><br>
					</div>
					
					<button class="dropButton">Alcohol</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Domestic Beer (1 pint draught)"><label   class="radioLabel">Domestic Beer (1 pint draught)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Imported Beer (11.2oz small bottle)"><label   class="radioLabel">Imported Beer (11.2 oz small bottle)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Bottle of Wine (Mid-Range)"><label   class="radioLabel">Bottle of Wine (Mid-Range)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Domestic Beer"><label   class="radioLabel">Domestic Beer (0.5 liter bottle)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Imported Beer"><label   class="radioLabel">Imported Beer (11.2 oz small bottle)</label><br>
					</div>
					
					<button class="dropButton">Coffee</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Cappuccino (regular)"><label   class="radioLabel">Cappuccino (regular)</label><br>					
						</div>
						
					<button class="dropButton">Soft Drinks</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Coke/Pepsi (11.2oz small bottle)"><label   class="radioLabel">Coke/Pepsi (11.2 oz small bottle)</label><br>					
					</div>
					
					<button class="dropButton">Bread</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Loaf of Fresh White Bread (1lb)"><label   class="radioLabel">Loaf of Fresh White Bread (1 lb)</label><br>					
						</div>
					
					<button class="dropButton">Rice</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Rice (white) (1lb)"><label   class="radioLabel">Rice (white), (1 lb)</label><br>					
						</div>
					
					<button class="dropButton">Eggs</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Eggs (regular) (12)"><label   class="radioLabel"> (regular) (12)</label><br>					
						</div>
					
					<button class="dropButton">Fruits</button>
					<div class="dropdown-container">
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Apples (1lb)"><label   class="radioLabel">Apples (1 lb)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Banana (1lb)"><label   class="radioLabel">Banana (1 lb)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Oranges (1lb)"><label   class="radioLabel">Oranges (1 lb)</label><br>
					</div>
					
					<button class="dropButton">Vegetable</button>
					<div class="dropdown-container">			
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Tomato (1lb)"><label   class="radioLabel">Tomato (1 lb)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Potato (1lb)"><label   class="radioLabel">Potato (1 lb)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Onion (1lb)"><label   class="radioLabel">Onion (1 lb)</label><br>
						<input type="radio"name="oneFoodOnly"class="foodButtons"value="Lettuce (1head)"><label   class="radioLabel">Lettuce (1 head)</label><br>
					</div>		
			</div>	
			
			<div class="main">
				<h1>Wasted-Money Tracker</h1>
			</div>
		<br>
			<div class="belowmain">
			<form class="foodInfo" action="/webapp/calcWaste">
				<label class="title">Insert the chosen food's information</label><br><br>
				<p id="theFood">FOODNAMEHERE</p>
				<br><label class="question">Choose the food condition :</label><br><br>
				<input type="radio"class=""name="raw"><label>Raw</label><br>
				<input type="radio"name="cooked"><label>Cooked</label><br><br>
				<label class="question">The percentage of the discarded food :</label><br><br>
				<input type="text"class="percentage"name="percent"><label> %</label><br><br>
				<input type="hidden"name="selectedRadioValue"id="hidden"value="a">
				<label>out of the whole part (or the whole dish)</label><br><br>
				<p class="error"id="percentError"></p>
				<button class="submit"type="submit">Check</button>
			</form>
			
			<div class="foodResult">
				<label class="title">Result</label><br><br>
				<label class="question">IF THIS FOOD IS DISCARDED<br />YOU WILL WASTE</label><br>
				<p id="edibility">£ 
				<% String msg=(String)request.getAttribute("moneyWasted"); if (msg == null ) msg =""; %><%= msg %>
				</p>
				<label class="question">OF YOUR HARD-EARNED MONEY</label><br>
			</div>
		</div>	
		
		
</body>
</html>