<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>FOOD FRESHNESS CHECKER</title>
	<link rel="stylesheet" type="text/css" href="resources/css/headerAndNavivigator.css">
	<link rel="stylesheet" type="text/css" href="resources/css/FoodFreshness.css">
	<script src="resources/javascript/jquery-3.3.1.min.js"></script>
	 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script src=//code.jquery.com/ui/1.11.2/jquery-ui.js></script>
	<script src="resources/javascript/FoodFreshness.js"></script>
	
</head>

<body>
	
		<div class="header">
	 		<a href="/webapps/" class="applogo">COOKWISE</a>
	 		
		  <div class="header-login">
		  		<a class="aboutapphome" href="/webapps/" >Home</a>
	 		 	<a class="aboutapphowto" href="#default" >How to</a>
	 		  <a class="aboutappfaq" href="#default" >FAQ</a>
			  <a class="loginregister" href="/webapps/loginRegister">Login/Register</a>  
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
		
		 <div class="chooseFood">
		 <div id="inner">
		 	<label class="foodListLabel">Choose a food</label><br><br>
		 	
		 	<button class="dropButton">Dairy<i class="fa fa-caret-down"></i></button>
		 	<div class="dropdown-container">
			            <label class="dairyButtons">Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Butter"   value="Butter"><label class="radioLabel">Butter</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Butterwithoil"   value="Butter With Oil"><label class="radioLabel">Butter with oil</label><br><br>
						<label class="dairyButtons">Cheese </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BrieCheese"   value="Brie Cheese"><label class="radioLabel">Brie Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CottageCheese"   value="Cottage Cheese"><label class="radioLabel">Cottage Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FetaCheese"   value="Feta Cheese"><label class="radioLabel">Feta Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GorgonzolaCheese"   value="Gorgonzola Cheese"><label class="radioLabel">Gorgonzola Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ParmesanAsiagoRomano"   value="Parmesan, Asiago, Romano"><label class="radioLabel">Parmesan, Asiago, Romano</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HavartiCheese"   value="Havarti Cheese"><label class="radioLabel">Havarti Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MontereyJackCheese"   value="MontereyJack Cheese"><label class="radioLabel">Monterey Jack Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MozzarellaCheese"   value="Mozzarella Cheese"><label class="radioLabel">Mozzarella Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MuensterCheese"   value="Muenster Cheese"><label class="radioLabel">Muenster Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="NeufchatelCheese"   value="Neufchatel Cheese"><label class="radioLabel">Neufchatel Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RicottaCheese"   value="Ricotta Cheese"><label class="radioLabel">Ricotta Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SemiHardCheeseChunk"   value="Semi Hard Cheese Chunk"><label class="radioLabel">Semi-Hard Cheese Chunk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ShreddedHardCheese"   value="Shredded Hard Cheese"><label class="radioLabel">Shredded Hard Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SlicedSemiHardCheese"   value="Sliced Semi Hard Cheese"><label class="radioLabel">Sliced Semi-Hard Cheese</label><br><br>
						<label class="dairyButtons">Coffee-mate </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CoffeemateLiquid"   value="Coffee-mate Liquid"><label class="radioLabel">Coffee-mate Liquid</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CoffeematePowder"   value="Coffee-mate Powder"><label class="radioLabel">Coffee-mate Powder</label><br><br>
						<label class="dairyButtons">Cream </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="AerosolWhippedCreamCanisters"   value="Aerosol Whipped Cream Canisters"><label class="radioLabel">Aerosol Whipped Cream Canisters</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedDreamWhip"   value="Canned Dream Whip"><label class="radioLabel">Canned Dream Whip</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CoolWhip"   value="Cool Whip"><label class="radioLabel">Cool Whip</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CoolWhipCream"   value="Cool Whip Cream"><label class="radioLabel">Cool Whip Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DoubleCream"   value="Double Cream"><label class="radioLabel">Double Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HalfandHalf"   value="Half and Half"><label class="radioLabel">Half and Half</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HeavyCream"   value="Heavy Cream"><label class="radioLabel">Heavy Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeWhippedCream"   value="Homemade Whipped Cream"><label class="radioLabel">Homemade Whipped Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LightCream"   value="Light Cream"><label class="radioLabel">Light Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReducedFatSourCream"   value="Reduced Fat Sour Cream"><label class="radioLabel">Reduced Fat Sour Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SourCream"   value="Sour Cream"><label class="radioLabel">Sour Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SourCreamDip"   value="Sour Cream Dip"><label class="radioLabel">Sour Cream Dip</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WhippingCream"   value="Whipping Cream"><label class="radioLabel">Whipping Cream</label><br><br>
						<label class="dairyButtons">Cream Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CreamCheeseFoilWrapped"   value="Cream Cheese Foil Wrapped"><label class="radioLabel">Cream Cheese (Foil Wrapped)</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CreamCheesePicContainer"   value="Cream Cheese Pic Container"><label class="radioLabel">Cream Cheese (Pic Container)</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FlavoredCreamCheese"   value="Flavored Cream Cheese"><label class="radioLabel">Flavored Cream Cheese</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReducedFatCreamCheese"   value="Reduced Fat Cream Cheese"><label class="radioLabel">Reduced Fat Cream Cheese</label><br><br>
						<label class="dairyButtons">Egg</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HardBoiledEggsPeeled"   value="Hard Boiled Eggs Peeled"><label class="radioLabel">Hard Boiled Eggs(Peeled)</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EggSubstitutes"   value="Egg Substitutes"><label class="radioLabel">Egg Substitutes</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EggWhites"   value="Egg Whites"><label class="radioLabel">Egg Whites</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EggYolks"   value="Egg Yolks"><label class="radioLabel">Egg Yolks</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshEggs"   value="Fresh Eggs"><label class="radioLabel">Fresh Eggs</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HardBoiledEggsShellsOn"   value="Hard Boiled Eggs Shells On"><label class="radioLabel">Hard Boiled Eggs (Shells On)</label><br><br>
						<label class="dairyButtons">Eggnog </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedEggnog"   value="Canned Eggnog"><label class="radioLabel">Canned Eggnog</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Eggnog"   value="Eggnog"><label class="radioLabel">Eggnog</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeEggnog"   value="Homemade Eggnog"><label class="radioLabel">Homemade Eggnog</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReducedFatEggnog"   value="Reduced Fat Eggnog"><label class="radioLabel">Reduced Fat Eggnog</label><br><br>
						<label class="dairyButtons">Milk </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="AlmondMilk"   value="Almond Milk"><label class="radioLabel">Almond Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Buttermilk"   value="Buttermilk"><label class="radioLabel">Buttermilk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CocountMilk"   value="Cocount Milk"><label class="radioLabel">Cocount Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EvaporatedMilk"   value="Evaporated Milk"><label class="radioLabel">Evaporated Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HempMilk"   value="Hemp Milk"><label class="radioLabel">Hemp Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LactoseFreeMilk"   value="Lactose Free Milk"><label class="radioLabel">Lactose-Free Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LowFatSkimEvaporatedMilk"   value="Low Fat Skim Evaporated Milk"><label class="radioLabel">Low Fat Skim Evaporated Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LowFatButtermilk"   value="Low Fat Buttermilk"><label class="radioLabel">Low-Fat Buttermilk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="NonFatMilk"   value="Non Fat Milk"><label class="radioLabel">Non-Fat Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PowderedMilk"   value="Powdered Milk"><label class="radioLabel">Powdered Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReducedFatMilk"   value="Reduced Fat Milk"><label class="radioLabel">Reduced-Fat Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RiceMilk"   value="Rice Milk"><label class="radioLabel">Rice Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SkimMilk"   value="Skim Milk"><label class="radioLabel">Skim Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SoyMilk"   value="Soy Milk"><label class="radioLabel">Soy Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SweetenedCondensedMilk"   value="Sweetened Condensed Milk"><label class="radioLabel">Sweetened Condensed Milk</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WholeMilk"   value="Whole Milk"><label class="radioLabel">Whole Milk</label><br><br>
						<label class="dairyButtons">Yogurt</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DrinkableYogurt"   value="Drinkable Yogurt"><label class="radioLabel">Drinkable Yogurt</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenYogurt"   value="Frozen Yogurt"><label class="radioLabel">Frozen Yogurt</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GreekYogurt"   value="Greek Yogurt"><label class="radioLabel">Greek Yogurt</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReducedFatYogurt"   value="Reduced Fat Yogurt"><label class="radioLabel">Reduced Fat Yogurt</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Yogurt"   value="Yogurt"><label class="radioLabel">Yogurt</label><br>								
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="YogurtWithFruit"   value="Yogurt With Fruit"><label class="radioLabel">Yogurt With Fruit</label><br><br>
			    </div>
		 	
		 	
		 	   <button class="dropButton">Drinks<i class="fa fa-caret-down"></i></button>
		 	   <div class="dropdown-container">
		 	   				    <label class="dairyButtons">Alcohol</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Brandy"   value="Brandy"><label class="radioLabel">Brandy </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Gin"   value="Gin"><label class="radioLabel">Gin </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Rum"   value="Rum"><label class="radioLabel">Rum </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Tequila"   value="Tequila"><label class="radioLabel">Tequila </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Vodka"   value="Vodka"><label class="radioLabel">Vodka </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Whiskey"   value="Whiskey"><label class="radioLabel">Whiskey</label><br><br>
						<label class="dairyButtons">Beer</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BottledBeer"   value="Bottled Beer"><label class="radioLabel">Bottled Beer </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedBeer"   value="Canned Beer"><label class="radioLabel">Canned Beer </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeBeer"   value="Homemade Beer"><label class="radioLabel">Homemade Beer</label><br><br>
						<label class="dairyButtons">Champagne</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Champagne"   value="Champagne"><label class="radioLabel">Champagne </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="VintageChampagne"   value="Vintage Champagne"><label class="radioLabel">Vintage Champagne</label><br><br>
						<label class="dairyButtons">Coffee</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundCoffee"   value="Ground Coffee"><label class="radioLabel">Ground Coffee </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="InstantCoffee"   value="Instant Coffee"><label class="radioLabel">Instant Coffee </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="KCupsCoffee"   value="K Cups Coffee"><label class="radioLabel">K Cups Coffee </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WholeBeanCoffee"   value="Whole Bean Coffee"><label class="radioLabel">Whole Bean Coffee</label><br><br>
						<label class="dairyButtons">Fruit Juice</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Applejuiceboxes"   value="Apple juice boxes"><label class="radioLabel">Apple juice boxes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BottledAppleJuice"   value="Bottled Apple Juice"><label class="radioLabel">Bottled Apple Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BottledGrapeJuice"   value="Bottled Grape Juice"><label class="radioLabel">Bottled Grape Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedAppleJuice"   value="Canned Apple Juice"><label class="radioLabel">Canned Apple Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CapriSunJuiceBoxes"   value="Capri Sun Juice Boxes"><label class="radioLabel">Capri Sun Juice Boxes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CranberryJuiceCocktail"   value="Cranberry Juice Cocktail"><label class="radioLabel">Cranberry Juice Cocktail </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshAppleCider"   value="Fresh Apple Cider"><label class="radioLabel">Fresh Apple Cider </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSqueezedCitrusJuice"   value="Fresh Squeezed Citrus Juice"><label class="radioLabel">Fresh Squeezed Citrus Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FruitJuiceConcentrate"   value="Fruit Juice Concentrate"><label class="radioLabel">Fruit Juice Concentrate </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GrapefruitJuice"   value="Grapefruit Juice"><label class="radioLabel">Grapefruit Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GuavaJuice"   value="Guava Juice"><label class="radioLabel">Guava Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="KCupsAppleCider"   value="K Cups Apple Cider"><label class="radioLabel">K Cups Apple Cider </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MangoJuice"   value="Mango Juice"><label class="radioLabel">Mango Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MinuteMaidJuiceBoxes"   value="Minute Maid Juice Boxes"><label class="radioLabel">Minute Maid Juice Boxes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OceanSprayCranberryJuice"   value="Ocean Spray Cranberry Juice"><label class="radioLabel">Ocean Spray Cranberry Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OrangeJuice"   value="Orange Juice"><label class="radioLabel">Orange Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="TreetopAppleJuice"   value="Treetop Apple Juice"><label class="radioLabel">Treetop Apple Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Welch'sGrapeJuice"   value="Welch's Grape Juice"><label class="radioLabel">Welch's Grape Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Winejuiceboxes"   value="Wine juice boxes"><label class="radioLabel">Wine juice boxes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CranberryJuice"   value="Cranberry Juice"><label class="radioLabel">Cranberry Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshLemonJuice"   value="Fresh Lemon Juice"><label class="radioLabel">Fresh Lemon Juice </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSqueezedLemonade"   value="Fresh Squeezed Lemonade"><label class="radioLabel">Fresh Squeezed Lemonade </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LemonJuiceresealablebottleorpicsqueeze"   value="Lemon Juice resealable bottle or pic squeeze"><label class="radioLabel">Lemon Juice (re-sealable bottle or pic squeeze) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LimeJuiceresealablebottleOpened"   value="Lime Juice resealable bottle"><label class="radioLabel">Lime Juice (re-sealable bottle) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ProcessedLemonade"   value="Processed Lemonade"><label class="radioLabel">Processed Lemonade</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ProcessedLimeade"   value="Processed Limeade"><label class="radioLabel">Processed Limeade</label><br><br>
						<label class="dairyButtons">Hot Chocolate</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="KCupsHotChocolate"   value="K Cups Hot Chocolate"><label class="radioLabel">K Cups Hot Chocolate </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SwissMissPackages"   value="Swiss Miss Packages"><label class="radioLabel">Swiss Miss Packages</label><br><br>
						<label class="dairyButtons">Soft Drinks</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="7-Up"   value="7-Up"><label class="radioLabel">7-Up </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Coca Cola"   value="CocaCola"><label class="radioLabel">Coca Cola </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Diet Coke Can"   value="Diet Coke Can"><label class="radioLabel">Diet Coke Can </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Diet Pepsi"   value="Diet Pepsi"><label class="radioLabel">Diet Pepsi </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pepsi Bottles"   value="Pepsi Bottles"><label class="radioLabel">Pepsi Bottles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Propel"   value="Propel"><label class="radioLabel">Propel </label><br><br>
						<label class="dairyButtons">Tea</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="KCupsTea"   value="K Cups Tea"><label class="radioLabel">K Cups Tea </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LooseTea"   value="Loose Tea"><label class="radioLabel">Loose Tea </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedTea"   value="Packaged Tea"><label class="radioLabel">Packaged Tea </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PowderIcedTeaMix"   value="Powder Iced Tea Mix"><label class="radioLabel">Powder Iced Tea Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedTea"   value="Prepared Tea"><label class="radioLabel">Prepared Tea</label><br><br>
						<label class="dairyButtons">Water</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BottledWater"   value="Bottled Water"><label class="radioLabel">Bottled Water </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CoconutWater"   value="Coconut Water"><label class="radioLabel">Coconut Water </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FlavoredWater"   value="Flavored Water"><label class="radioLabel">Flavored Water </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SparklingWater"   value="Sparkling Water"><label class="radioLabel">Sparkling Water </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="VitaminWater"   value="Vitamin Water"><label class="radioLabel">Vitamin Water </label><br>
						<label class="dairyButtons">Wine</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BottledRedWine"   value="Bottled Red Wine"><label class="radioLabel">Bottled Red Wine </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BottledWhiteWine"   value="Bottled White Wine"><label class="radioLabel">Bottled White Wine </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookingWine"   value="Cooking Wine"><label class="radioLabel">Cooking Wine </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FineWine"   value="Fine Wine"><label class="radioLabel">Fine Wine </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SparklingWine"   value="Sparkling Wine"><label class="radioLabel">Sparkling Wine</label><br><br>	
		 	   </div>
		 	
		 	
		 	   <button class="dropButton">Fruits<i class="fa fa-caret-down"></i></button>
		 	   <div class="dropdown-container">
		 	   		   <label class="dairyButtons">Apple </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshApples"   value="Fresh Apples"><label class="radioLabel">Fresh Apples </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedFreshCutApples"   value="Packaged Fresh Cut Apples"><label class="radioLabel">Packaged Fresh Cut Apples</label><br><br>
						<label class="dairyButtons">Apricot </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ApricotsCut"   value="Apricots Cut"><label class="radioLabel">Apricots (Cut) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ApricotsWhole"   value="Apricots Whole"><label class="radioLabel">Apricots (Whole)</label><br><br>
						<label class="dairyButtons">Avocado </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshAvocados"   value="Fresh Avocados"><label class="radioLabel">Fresh Avocados</label><br><br>
						<label class="dairyButtons">Banana </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshBananas"   value="Fresh Bananas"><label class="radioLabel">Fresh Bananas</label><br><br>				
						<label class="dairyButtons">Blueberries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeBlueberries"   value="Fresh Whole Blueberries"><label class="radioLabel">Fresh Whole Blueberries </label><br><br>
						<label class="dairyButtons">Canned Food</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedFruit"   value="Canned Fruit"><label class="radioLabel">Canned Fruit </label><br><br>
						<label class="dairyButtons">Cherry</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChocolateCherries"   value="Chocolate Cherries"><label class="radioLabel">Chocolate Cherries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeCherries"   value="Fresh Whole Cherries"><label class="radioLabel">Fresh Whole Cherries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MaraschinoCherries"   value="Maraschino Cherries"><label class="radioLabel">Maraschino Cherries</label><br><br>
						<label class="dairyButtons">Coconut</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCoconuts"   value="Fresh Coconuts"><label class="radioLabel">Fresh Coconuts </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeRoastedCoconut"   value="Homemade Roasted Coconut"><label class="radioLabel">Homemade Roasted Coconut</label><br><br>
						<label class="dairyButtons">Cranberry</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCranberries"   value="Fresh Cranberries"><label class="radioLabel">Fresh Cranberries</label><br><br>
						<label class="dairyButtons">Dried fruits</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Craisins"   value="Craisins"><label class="radioLabel">Craisins </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Dates"   value="Dates"><label class="radioLabel">Dates </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedApricots"   value="Dried Apricots"><label class="radioLabel">Dried Apricots </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedBlueberries"   value="Dried Blueberries"><label class="radioLabel">Dried Blueberries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedCherries"   value="Dried Cherries"><label class="radioLabel">Dried Cherries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedCranberries"   value="Dried Cranberries"><label class="radioLabel">Dried Cranberries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedCranberries"   value="Dried Cranberries"><label class="radioLabel">Dried Cranberries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedMangoes"   value="Dried Mangoes"><label class="radioLabel">Dried Mangoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedPlums"   value="Dried Plums"><label class="radioLabel">Dried Plums </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedDriedCoconut"   value="Packaged Dried Coconut"><label class="radioLabel">Packaged (Dried) Coconut </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Raisins"   value="Raisins"><label class="radioLabel">Raisins</label><br><br>
						<label class="dairyButtons">Figs</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Figs"   value="Figs"><label class="radioLabel">Figs</label><br><br>
						<label class="dairyButtons">Frozen fruits</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenFruit"   value="Frozen Fruit"><label class="radioLabel">Frozen Fruit</label><br><br>
						<label class="dairyButtons">Grape </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Grapes"   value="Grapes"><label class="radioLabel">Grapes </label><br><br>
						<label class="dairyButtons">Guacomole</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeGuacamole"   value="Homemade Guacamole"><label class="radioLabel">Homemade Guacamole</label><br><br>
						<label class="dairyButtons">Lemon</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CutLemons"   value="Cut Lemons"><label class="radioLabel">Cut Lemons </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshLemons"   value="Fresh Lemons"><label class="radioLabel">Fresh Lemons</label><br><br>
						<label class="dairyButtons">Lime</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CutLimes"   value="Cut Limes"><label class="radioLabel">Cut Limes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshLimes"   value="Fresh Limes"><label class="radioLabel">Fresh Limes</label><br><br>
						<label class="dairyButtons">Olive</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DeliOlivesinoil"   value="Deli Olives in Oil"><label class="radioLabel">Deli Olives (in oil) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Olives"   value="Olives"><label class="radioLabel">Olives </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EVOOExtraVirginOlive"   value="EVOO Extra Virgin Olive"><label class="radioLabel">EVOO(Extra Virgin Olive)</label><br><br>
						<label class="dairyButtons">Orange</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CutOranges"   value="Cut Oranges"><label class="radioLabel">Cut Oranges </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshOranges"   value="Fresh Oranges"><label class="radioLabel">Fresh Oranges</label><br><br>
						<label class="dairyButtons">Passion fruits </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PassionFruitsCut"   value="Passion Fruits Cut"><label class="radioLabel">Passion Fruits (Cut) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PassionFruitsWhole"   value="Passion Fruits Whole"><label class="radioLabel">Passion Fruits (Whole)</label><br><br>
						<label class="dairyButtons">Peach </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PeachesWhole"   value="PeachesWhole"><label class="radioLabel">Peaches (Whole) </label><br><br>
						<label class="dairyButtons">Pear</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PearsCut"   value="Pears Cut"><label class="radioLabel">Pears (Cut) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PearsPreviouslycanned"   value="Pears Previously Canned"><label class="radioLabel">Pears (Previously canned) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PearsWhole"   value="Pears Whole"><label class="radioLabel">Pears (Whole)</label><br><br>
						<label class="dairyButtons">Pineapple</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PineappleCut"   value="Pineapple Cut"><label class="radioLabel">Pineapple (Cut) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PineappleWhole"   value="Pineapple Whole"><label class="radioLabel">Pineapple (Whole) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pomegranates"   value="Pomegranates"><label class="radioLabel">Pomegranates</label><br><br>
						<label class="dairyButtons">Strawberry </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCutStrawberries"   value="Fresh Cut Strawberries"><label class="radioLabel">Fresh Cut Strawberries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeStrawberries"   value="Fresh Whole Strawberries"><label class="radioLabel">Fresh Whole Strawberries</label><br><br>
						<label class="dairyButtons">Tomato </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedTomatoes"   value="Canned Tomatoes"><label class="radioLabel">Canned Tomatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshTomatoes"   value="Fresh Tomatoes"><label class="radioLabel">Fresh Tomatoes </label><br>
						<label class="dairyButtons">Watermelon </label><br>									
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WatermelonCut"   value="Watermelon Cut"><label class="radioLabel">Watermelon - Cut </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WatermelonWhole"   value="Watermelon Whole"><label class="radioLabel">Watermelon - Whole</label><br><br>	
		 	   </div>
		 	   
		 	   <button class="dropButton">Vegetable<i class="fa fa-caret-down"></i></button>
		 	   <div class="dropdown-container">
		 	   			<label class="dairyButtons">Beans</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BeanSprouts"   value="Bean Sprouts"><label class="radioLabel">Bean Sprouts </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedGreenBeans"   value="Cooked Green Beans"><label class="radioLabel">Cooked Green Beans </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshGreenBeans"   value="Fresh Green Beans"><label class="radioLabel">Fresh Green Beans</label><br><br>
							<label class="dairyButtons">Asparagus</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedAsparagus"   value="Cooked Asparagus"><label class="radioLabel">Cooked Asparagus </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshAsparagus"   value="Fresh Asparagus"><label class="radioLabel">Fresh Asparagus</label><br><br>
							<label class="dairyButtons">Broccoli</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedBroccoli"   value="Cooked Broccoli"><label class="radioLabel">Cooked Broccoli </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshBroccoli"   value="Fresh Broccoli"><label class="radioLabel">Fresh Broccoli</label><br><br>
							<label class="dairyButtons">Butternut Squash</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedButternutSquash"   value="Cooked Butternut Squash"><label class="radioLabel">Cooked Butternut Squash </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshButternutSquash"   value="Fresh Butternut Squash"><label class="radioLabel">Fresh Butternut Squash</label><br><br>
							<label class="dairyButtons">Canned food</label><br>
									<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedPeas"   value="Canned Peas"><label class="radioLabel">Canned Peas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedCorn"   value="Canned Corn"><label class="radioLabel">Canned Corn </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedSoup"   value="Canned Soup"><label class="radioLabel">Canned Soup</label><br><br>
							<label class="dairyButtons">Cauliflower</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedCauliflower"   value="Cooked Cauliflower"><label class="radioLabel">Cooked Cauliflower </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCauliflower"   value="Fresh Cauliflower"><label class="radioLabel">Fresh Cauliflower</label><br><br>
							<label class="dairyButtons">Celery</label><br>
									<input type="radio" name="oneFoodOnly" class="foodButtons" id="CeleryPackages"   value="Celery Packages"><label class="radioLabel">Celery Packages </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedCelery"   value="Cooked Celery"><label class="radioLabel">Cooked Celery </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeCelery"   value="Fresh Whole Celery"><label class="radioLabel">Fresh (Whole) Celery</label><br><br>
							<label class="dairyButtons">Corn </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedCorn"   value="Cooked Corn"><label class="radioLabel">Cooked Corn </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCorn"   value="Fresh Corn"><label class="radioLabel">Fresh Corn</label><br><br>
							<label class="dairyButtons">Cucumber</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EnglishCucumbers"   value="English Cucumbers"><label class="radioLabel">English Cucumbers </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCucumbersWhole"   value="Fresh CucumbersWhole"><label class="radioLabel">Fresh Cucumbers (Whole) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="JapaneseCucumbers"   value="Japanese Cucumbers"><label class="radioLabel">Japanese Cucumbers </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PersianCucumbers"   value="Persian Cucumbers"><label class="radioLabel">Persian Cucumbers </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SlicedCucumbers"   value="Sliced Cucumbers"><label class="radioLabel">Sliced Cucumbers</label><br><br>
							<label class="dairyButtons">French Fries</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SlicedPotatoesorFrenchFries"   value="Sliced Potatoes or French Fries "><label class="radioLabel">Sliced Potatoes or French Fries </label><br><br>
							<label class="dairyButtons">Garlic </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeGarlic"   value="Fresh Whole Garlic"><label class="radioLabel">Fresh (Whole) Garlic </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshChoppedGarlic"   value="Fresh Chopped Garlic"><label class="radioLabel">Fresh Chopped Garlic </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshGarlicCloves"   value="Fresh Garlic Cloves"><label class="radioLabel">Fresh Garlic Cloves </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedJarofChoppedGarlic"   value="Prepared Jar of Chopped Garlic"><label class="radioLabel">Prepared Jar of Chopped Garlic</label><br><br>
							<label class="dairyButtons">Kale </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedKale"   value="Cooked Kale"><label class="radioLabel">Cooked Kale </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshKale"   value="Fresh Kale"><label class="radioLabel">Fresh Kale</label><br><br>
							<label class="dairyButtons">Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChoppedorLooseLettuce"   value="Choppedor Loose Lettuce"><label class="radioLabel">Chopped or Loose Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshExpressLettuce"   value="Fresh Express Lettuce"><label class="radioLabel">Fresh Express Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HeadButterLettuce"   value="Head Butter Lettuce"><label class="radioLabel">Head Butter Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HeadIceburgLettuce"   value="Head Iceburg Lettuce"><label class="radioLabel">Head Iceburg Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HeadLeafLettuce"   value="Head Leaf Lettuce"><label class="radioLabel">Head Leaf Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HeadRomaineLettuce"   value="Head Romaine Lettuce"><label class="radioLabel">Head Romaine Lettuce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedLettuce"   value="Packaged Lettuce"><label class="radioLabel">Packaged Lettuce</label><br><br>
							<label class="dairyButtons">Mushrooom </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedMushrooms"   value="Cooked Mushrooms"><label class="radioLabel">Cooked Mushrooms </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSlicedMushrooms"   value="Fresh Sliced Mushrooms"><label class="radioLabel">Fresh Sliced Mushrooms </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeMushrooms"   value="Fresh Whole Mushrooms"><label class="radioLabel">Fresh Whole Mushrooms</label><br><br>
							<label class="dairyButtons">Onion </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshChoppedOnions"   value="Fresh Chopped Onions"><label class="radioLabel">Fresh Chopped Onions </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeOnions"   value="Fresh Whole Onions"><label class="radioLabel">Fresh Whole Onions </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenOnions"   value="Frozen Onions"><label class="radioLabel">Frozen Onions</label><br><br>
							<label class="dairyButtons">Parsnip </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ParsnipsWhole"   value="Parsnips Whole"><label class="radioLabel">Parsnips (Whole)</label><br><br>
							<label class="dairyButtons">Pepper </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CutBellPeppersanycolor"   value="Cut Bell Peppers any color"><label class="radioLabel">Cut Bell Peppers (any color) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeGreenBellPeppers"   value="Fresh Whole Green Bell Peppers"><label class="radioLabel">Fresh (Whole) Green Bell Peppers </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshOrangeBellPeppers"   value="Fresh Orange Bell Peppers"><label class="radioLabel">Fresh Orange Bell Peppers </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshRedBellPeppersWhole"   value="Fresh Red Bell Peppers Whole"><label class="radioLabel">Fresh Red Bell Peppers (Whole) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshYellowBellPeppersWhole"   value="Fresh Yellow Bell Peppers Whole"><label class="radioLabel">Fresh Yellow Bell Peppers (Whole) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenChoppedBellPeppers"   value="Frozen Chopped Bell Peppers"><label class="radioLabel">Frozen Chopped Bell Peppers </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PickledPeppers"   value="Pickled Peppers"><label class="radioLabel">Pickled Peppers</label><br><br>
							<label class="dairyButtons">Pickle </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PickledCorn"   value="Pickled Corn"><label class="radioLabel">Pickled Corn </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pickles"   value="Pickles"><label class="radioLabel">Pickles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Sauerkrautpickledcabbage"   value="Sauerkraut pickled cabbage"><label class="radioLabel">Sauerkraut (pickled cabbage) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PicklingCukes"   value="Pickling Cukes"><label class="radioLabel">Pickling Cukes</label><br><br>
							<label class="dairyButtons">Potato </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakedPotatoes"   value="Baked Potatoes"><label class="radioLabel">Baked Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedPotatoes"   value="Cooked Potatoes"><label class="radioLabel">Cooked Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="InstantDryPotatoPackages"   value="Instant Dry Potato Packages"><label class="radioLabel">Instant Dry Potato Packages </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MashedPotatoes"   value="Mashed Potatoes"><label class="radioLabel">Mashed Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RedorNewPotatoes"   value="Red or New Potatoes"><label class="radioLabel">Red or New Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RussetorWhitePotatoes"   value="Russet or White Potatoes"><label class="radioLabel">Russet or White Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="YukonGoldPotatoes"   value="Yukon Gold Potatoes"><label class="radioLabel">Yukon Gold Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Fingerlings"   value="Fingerlings"><label class="radioLabel">Fingerlings</label><br><br>
							<label class="dairyButtons">Pumpkin </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedPumpkin"   value="Canned Pumpkin"><label class="radioLabel">Canned Pumpkin </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedPumpkin"   value="Cooked Pumpkin"><label class="radioLabel">Cooked Pumpkin </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCutPumpkins"   value="Fresh Cut Pumpkins"><label class="radioLabel">Fresh Cut Pumpkins</label><br><br>
							<label class="dairyButtons">Salad </label><br>	
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CaesarSaladUndressed"   value="Caesar Salad Undressed"><label class="radioLabel">Caesar Salad (Undressed) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChickenSalad"   value="Chicken Salad"><label class="radioLabel">Chicken Salad </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="EggSalad"   value="Egg Salad"><label class="radioLabel">Egg Salad </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshFruitSalad"   value="Fresh Fruit Salad"><label class="radioLabel">Fresh Fruit Salad </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GreenSaladDressed"   value="Green Salad Dressed"><label class="radioLabel">Green Salad (Dressed) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MacaroniSalad"   value="Macaroni Salad"><label class="radioLabel">Macaroni Salad </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PastaSaladNonmayonnaise"   value="Pasta Salad Non-mayonnaise"><label class="radioLabel">Pasta Salad (Non-mayonnaise) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PotatoSalad"   value="Potato Salad"><label class="radioLabel">Potato Salad </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="TunaSalad"   value="Tuna Salad"><label class="radioLabel">Tuna Salad</label><br><br>
							<label class="dairyButtons">Ginger</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CrystallizedGinger"   value="Crystallized Ginger"><label class="radioLabel">Crystallized Ginger </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshGingerRoot"   value="Fresh Ginger Root"><label class="radioLabel">Fresh Ginger Root </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GingerPaste"   value="Ginger Paste"><label class="radioLabel">Ginger Paste </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundGingerPowder"   value="Ground Ginger Powder"><label class="radioLabel">Ground Ginger (Powder) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PeeledChoppedGinger"   value="Peeled Chopped Ginger"><label class="radioLabel">Peeled Chopped Ginger</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PickledGingerGari"   value="Pickled Ginger Gari"><label class="radioLabel">Pickled Ginger (Gari) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedJarofChoppedGinger"   value="Prepared Jar of Chopped Ginger"><label class="radioLabel">Prepared Jar of Chopped Ginger </label><br><br>
							<label class="dairyButtons">Carrot</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BabyCarrots"   value="Baby Carrots"><label class="radioLabel">Baby Carrots </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedCarrots"   value="Cooked Carrots"><label class="radioLabel">Cooked Carrots </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCarrotsWhole"   value="Fresh Carrots Whole"><label class="radioLabel">Fresh Carrots (Whole)</label><br><br>
							<label class="dairyButtons">Scallions </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWholeScallions"   value="Fresh Whole Scallions"><label class="radioLabel">Fresh Whole Scallions</label><br><br>
							<label class="dairyButtons">Spinach </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSpinach"   value="Fresh Spinach"><label class="radioLabel">Fresh Spinach</label><br><br>
							<label class="dairyButtons">Squash </label><br>			
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Chopped/SlicedFreshWinterSquash"   value="Chopped/Sliced Fresh Winter Squash"><label class="radioLabel">Chopped/Sliced Fresh Winter Squash </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CrookedNeckSquash"   value="Crooked Neck Squash"><label class="radioLabel">Crooked Neck Squash </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSummerSquash"   value="Fresh Summer Squash"><label class="radioLabel">Fresh Summer Squash </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshWinterSquash"   value="Fresh Winter Squash"><label class="radioLabel">Fresh Winter Squash </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OtherCookedWinterSquash"   value="Other Cooked Winter Squash"><label class="radioLabel">Other Cooked Winter Squash </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedCookedSquash"   value="Prepared Cooked Squash"><label class="radioLabel">Prepared (Cooked) Squash</label><br><br>
							<label class="dairyButtons">Sweet Potato </label><br>			
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedSweetPotatoes"   value="Canned Sweet Potatoes"><label class="radioLabel">Canned Sweet Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedSweetPotatoes"   value="Cooked Sweet Potatoes"><label class="radioLabel">Cooked Sweet Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryInstantSweetPotatoes"   value="Dry Instant Sweet Potatoes"><label class="radioLabel">Dry Instant Sweet Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSweetPotatoes"   value="Fresh Sweet Potatoes"><label class="radioLabel">Fresh Sweet Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenSweetPotatoes"   value="Frozen Sweet Potatoes"><label class="radioLabel">Frozen Sweet Potatoes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SweetPotatoFries"   value="Sweet PotatoFries"><label class="radioLabel">Sweet Potato Fries </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SweetPotatoes"   value="Sweet Potatoes"><label class="radioLabel">Sweet Potatoes</label><br><br>
							<label class="dairyButtons">Vegetable </label><br>			
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedVegetables"   value="Canned Vegetables"><label class="radioLabel">Canned Vegetables </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenVegetables"   value="Frozen Vegetables"><label class="radioLabel">Frozen Vegetables</label><br><br>
							<label class="dairyButtons">Yam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedYams"   value="Canned Yams"><label class="radioLabel">Canned Yams </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedYams"   value="Cooked Yams"><label class="radioLabel">Cooked Yams </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshYams"   value="Fresh Yams"><label class="radioLabel">Fresh Yams</label><br><br>
							<label class="dairyButtons">Zucchini </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Zucchini"   value="Zucchini"><label class="radioLabel">Zucchini</label><br><br>	
		 	   </div>
		 	   
		 	   <button class="dropButton">Grains<i class="fa fa-caret-down"></i></button>
		 	   <div class="dropdown-container">
		 	   				<label class="dairyButtons">Bread </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakeryBagels"   value="Bakery Bagels"><label class="radioLabel">Bakery Bagels </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakeryBread"   value="Bakery Bread"><label class="radioLabel">Bakery Bread </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BreadCrumbs"   value="Bread Crumbs"><label class="radioLabel">Bread Crumbs </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedFrench Toast"   value="Cooked French Toast"><label class="radioLabel">Cooked French Toast </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenBreadDoughSoft"   value="Frozen Bread Dough Soft"><label class="radioLabel">Frozen Bread Dough (Soft) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedBagelsSoft"   value="Packaged Bagels Soft"><label class="radioLabel">Packaged Bagels (Soft) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedBreadSoft"   value="Packaged Bread Soft"><label class="radioLabel">Packaged Bread (Soft) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Croutons"   value="Croutons"><label class="radioLabel">Croutons </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pretzels"   value="Pretzels"><label class="radioLabel">Pretzels</label><br><br>
							<label class="dairyButtons">Cereal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="1minuteOatmeal"   value="1 minute Oatmeal"><label class="radioLabel">1 minute Oatmeal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="5minuteOatmeal"   value="5 minute Oatmeal"><label class="radioLabel">5 minute Oatmeal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BoxofCereal"   value="Box of Cereal"><label class="radioLabel">Box of Cereal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cereal"   value="Cereal"><label class="radioLabel">Cereal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cheerios"   value="Cheerios"><label class="radioLabel">Cheerios </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedCereal"   value="Cooked Cereal"><label class="radioLabel">Cooked Cereal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Flavored/CreamInstantOatmeal"   value="Flavored/Cream Instant Oatmeal"><label class="radioLabel">Flavored/Cream Instant Oatmeal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="InstantOatmeal"   value="Instant Oatmeal"><label class="radioLabel">Instant Oatmeal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OatmealCookies"   value="Oatmeal Cookies"><label class="radioLabel">Oatmeal Cookies </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedCookedOatmeal"   value="Prepared Cooked Oatmeal"><label class="radioLabel">Prepared (Cooked) Oatmeal </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ShreddedWheat"   value="Shredded Wheat"><label class="radioLabel">Shredded Wheat </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SteelCutOatmealIrishOatmeal"   value="Steel Cut Oatmeal Irish Oatmeal"><label class="radioLabel">Steel Cut Oatmeal (Irish Oatmeal) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RefrigeratorBiscuitDoughPillsburybiscuits&rolls"   value="Refrigerator Biscuit Dough Pillsbury biscuits & rolls"><label class="radioLabel">Refrigerator Biscuit Dough (Pillsbury biscuits &amp; rolls)</label><br><br>
							<label class="dairyButtons">Lasagna </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DeliLasagna"   value="Deli Lasagna"><label class="radioLabel">Deli Lasagna </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenLasagna"   value="Frozen Lasagna"><label class="radioLabel">Frozen Lasagna </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeLasagna"   value="Homemade Lasagna"><label class="radioLabel">Homemade Lasagna</label><br><br>
							<label class="dairyButtons">Noodle</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedNoodles"   value="Cooked Noodles"><label class="radioLabel">Cooked Noodles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryNoodles"   value="Dry Noodles"><label class="radioLabel">Dry Noodles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshNoodles"   value="Fresh Noodles"><label class="radioLabel">Fresh Noodles</label><br><br>
							<label class="dairyButtons">Pasta</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedPasta"   value="Cooked Pasta"><label class="radioLabel">Cooked Pasta </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryPasta"   value="Dry Pasta"><label class="radioLabel">Dry Pasta </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshPasta"   value="Fresh Pasta"><label class="radioLabel">Fresh Pasta</label><br><br>
							<label class="dairyButtons">Pastry</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PopTarts"   value="Pop Tarts"><label class="radioLabel">Pop Tarts </label><br><br>
							<label class="dairyButtons">Pizza</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DominosPizza"   value="Dominos Pizza"><label class="radioLabel">Dominos Pizza </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenPizza"   value="Frozen Pizza"><label class="radioLabel">Frozen Pizza </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadePizza"   value="Homemade Pizza"><label class="radioLabel">Homemade Pizza</label><br><br>
							<label class="dairyButtons">Popcorn</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MicrowavePopcorn"   value="Microwave Popcorn"><label class="radioLabel">Microwave Popcorn </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Popcorn"   value="Popcorn"><label class="radioLabel">Popcorn </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PoppedPopcorn"   value="Popped Popcorn"><label class="radioLabel">Popped Popcorn </label><br><br>
							<label class="dairyButtons">Quinoa</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BlackQuinoaRaw"   value="Black Quinoa Raw"><label class="radioLabel">Black Quinoa (Raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Quinoacooked"   value="Quinoa cooked"><label class="radioLabel">Quinoa (cooked)</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RedQuinoaRaw"   value="Red Quinoa Raw"><label class="radioLabel">Red Quinoa (Raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WhiteQuinoaRaw"   value="White Quinoa Raw"><label class="radioLabel">White Quinoa (Raw)</label><br><br>
							<label class="dairyButtons">Rice</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BrownRice"   value="Brown Rice"><label class="radioLabel">Brown Rice</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MinuteRiceRaw"   value="Minute Rice Raw"><label class="radioLabel">Minute Rice (Raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OxygenFreeWhiteRiceRaw"   value="Oxygen Free White Rice Raw"><label class="radioLabel">Oxygen Free White Rice (Raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WhiteRice"   value="White Rice"><label class="radioLabel">White Rice</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WildRice"   value="Wild Rice"><label class="radioLabel">Wild Rice</label><br><br>
							<label class="dairyButtons">Stuffing</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeStuffing"   value="Homemade Stuffing"><label class="radioLabel">Homemade Stuffing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedDryStuffing"   value="Packaged Dry Stuffing"><label class="radioLabel">Packaged Dry Stuffing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedStuffing"   value="Prepared Stuffing"><label class="radioLabel">Prepared Stuffing</label><br><br>
							<label class="dairyButtons">Tortilla</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CornTortillas"   value="Corn Tortillas"><label class="radioLabel">Corn Tortillas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeTortillas"   value="Homemade Tortillas"><label class="radioLabel">Homemade Tortillas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SpinachTortillas"   value="Spinach Tortillas"><label class="radioLabel">Spinach Tortillas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WholeWheatTortillas"   value="Whole Wheat Tortillas"><label class="radioLabel">Whole Wheat Tortillas </label><br><br>
		 	   </div>
		 	   
		 	   <button class="dropButton">Protein<i class="fa fa-caret-down"></i></button>
		 	   <div class="dropdown-container">
		 	   				<label class="dairyButtons">Bacon</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Bacon"   value="Bacon"><label class="radioLabel">Bacon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BaconBits"   value="Bacon Bits"><label class="radioLabel">Bacon Bits </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedBacon"   value="Cooked Bacon"><label class="radioLabel">Cooked Bacon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshBacon"   value="Fresh Bacon"><label class="radioLabel">Fresh Bacon</label><br><br>
						<label class="dairyButtons">Beef</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Beefjerky"   value="Beef jerky"><label class="radioLabel">Beef jerky </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BeeforSteak"   value="Beef or Steak"><label class="radioLabel">Beef or Steak </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedBeefOpened"   value="Canned Beef Opened"><label class="radioLabel">Canned Beef (Opened) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedCornBeef"   value="Canned Corn Beef"><label class="radioLabel">Canned Corn Beef </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CornedBeef"   value="Corned Beef"><label class="radioLabel">Corned Beef </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CornedBeefraw"   value="Corned Beef raw"><label class="radioLabel">Corned Beef (raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshBeefrawfor"   value="Fresh Beef raw"><label class="radioLabel">Fresh Beef  (raw)for</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundBeef"   value="Ground Beef"><label class="radioLabel">Ground Beef </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundBeef"   value="Ground Beef"><label class="radioLabel">Ground Beef </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundBeefraw"   value="Ground Beef raw"><label class="radioLabel">Ground Beef (raw)</label><br><br>
						<label class="dairyButtons">Burger</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Hamburgerscooked"   value="Hamburgers cooked"><label class="radioLabel">Hamburgers (cooked) </label><br>
						<label class="dairyButtons">Canned food</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedClams"   value="Canned Clams"><label class="radioLabel">Canned Clams </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedTuna"   value="Canned Tuna"><label class="radioLabel">Canned Tuna </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Spam"   value="Spam"><label class="radioLabel">Spam</label><br><br>
						<label class="dairyButtons">Chicken</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedChicken"   value="Canned Chicken"><label class="radioLabel">Canned Chicken </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChickenBroth"   value="Chicken Broth"><label class="radioLabel">Chicken Broth </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Chickenbullioncubes"   value="Chicken bullion cubes"><label class="radioLabel">Chicken bullion cubes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedChicken"   value="Cooked Chicken"><label class="radioLabel">Cooked Chicken </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshChicken"   value="Fresh Chicken"><label class="radioLabel">Fresh Chicken </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeChickenBroth"   value="Homemade Chicken Broth"><label class="radioLabel">Homemade Chicken Broth </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RoastedChicken"   value="Roasted Chicken"><label class="radioLabel">Roasted Chicken</label><br><br>
						<label class="dairyButtons">Fish</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedSalmon"   value="Canned Salmon"><label class="radioLabel">Canned Salmon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedTuna"   value="Canned Tuna"><label class="radioLabel">Canned Tuna </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Catfish"   value="Catfish"><label class="radioLabel">Catfish </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cod"   value="Cod"><label class="radioLabel">Cod </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedFish"   value="Cooked Fish"><label class="radioLabel">Cooked Fish </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedSalmon"   value="Cooked Salmon"><label class="radioLabel">Cooked Salmon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSalmon"   value="Fresh Salmon"><label class="radioLabel">Fresh Salmon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenSalmon"   value="Frozen Salmon"><label class="radioLabel">Frozen Salmon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Halibut"   value="Halibut"><label class="radioLabel">Halibut </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Ono"   value="Ono"><label class="radioLabel">Ono </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Salmon"   value="Salmon"><label class="radioLabel">Salmon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Sardines"   value="Sardines"><label class="radioLabel">Sardines </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SmokedSalmon"   value="Smoked Salmon"><label class="radioLabel">Smoked Salmon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Tilapia"   value="Tilapia"><label class="radioLabel">Tilapia </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Sashimi"   value="Sashimi"><label class="radioLabel">Sashimi</label><br><br>
						<label class="dairyButtons">Deli meat</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshDeliMeats"   value="Fresh Deli Meats"><label class="radioLabel">Fresh Deli Meats</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pre-packagedDeliMeats"   value="Pre-packaged Deli Meats"><label class="radioLabel">Pre-packaged Deli Meats</label><br><br>
						<label class="dairyButtons">Hotdog</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedHotDogs"   value="Cooked Hot Dogs"><label class="radioLabel">Cooked Hot Dogs </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshHotDogs"   value="Fresh Hot Dogs"><label class="radioLabel">Fresh Hot Dogs</label><br><br>
						<label class="dairyButtons">Hummus</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Hummus"   value="Hummus"><label class="radioLabel">Hummus</label><br><br>
						<label class="dairyButtons">Meat</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Steakraw"   value="Steak raw"><label class="radioLabel">Steak (raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Homemadejerky"   value="Homemade jerky"><label class="radioLabel">Homemade jerky</label><br><br>
						<label class="dairyButtons">Nuts</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Almonds"   value="Almonds"><label class="radioLabel">Almonds </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BrazilNuts"   value="Brazil Nuts"><label class="radioLabel">Brazil Nuts </label><br><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cashews"   value="Cashews"><label class="radioLabel">Cashews </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Hazelnuts"   value="Hazelnuts"><label class="radioLabel">Hazelnuts </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Macadamias"   value="Macadamias"><label class="radioLabel">Macadamias </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Peanuts"   value="Peanuts"><label class="radioLabel">Peanuts </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pecans"   value="Pecans"><label class="radioLabel">Pecans </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PineNuts"   value="Pine Nuts"><label class="radioLabel">Pine Nuts </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pistachios"   value="Pistachios"><label class="radioLabel">Pistachios </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Walnuts"   value="Walnuts"><label class="radioLabel">Walnuts</label><br><br>
						<label class="dairyButtons">Peas</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedPeas"   value="Cooked Peas"><label class="radioLabel">Cooked Peas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshPeaPods"   value="Fresh Pea Pods"><label class="radioLabel">Fresh Pea Pods </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshSnapPeas"   value="Fresh Snap Peas"><label class="radioLabel">Fresh Snap Peas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChicPeas"   value="Chic Peas"><label class="radioLabel">Chic Peas</label><br><br>
						<label class="dairyButtons">Pepperoni</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pepperoni"   value="Pepperoni"><label class="radioLabel">Pepperoni</label><br><br>
						<label class="dairyButtons">Pork</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedPorkShoulder/Loin/Chops/Sausage"   value="Cooked Pork Shoulder/Loin/Chops/Sausage"><label class="radioLabel">Cooked Pork Shoulder/Loin/Chops/Sausage </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshGroundPork"   value="Fresh Ground Pork"><label class="radioLabel">Fresh Ground Pork </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshPorkChops"   value="Fresh Pork Chops"><label class="radioLabel">Fresh Pork Chops </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshPorkLoin"   value="Fresh Pork Loin"><label class="radioLabel">Fresh Pork Loin </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshPorkShoulder"   value="Fresh Pork Shoulder"><label class="radioLabel">Fresh Pork Shoulder </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PorkSausage"   value="Pork Sausage"><label class="radioLabel">Pork Sausage</label><br><br>
						<label class="dairyButtons">Salami</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Salamihard"   value="Salami hard"><label class="radioLabel">Salami (hard)</label><br><br>
						<label class="dairyButtons">Seeds</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChiaSeeds"   value="Chia Seeds"><label class="radioLabel">Chia Seeds </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FlaxSeeds"   value="Flax Seeds"><label class="radioLabel">Flax Seeds</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RoastedSesameSeeds"   value="Roasted Sesame Seeds"><label class="radioLabel">Roasted Sesame Seeds</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SesameSeedsRaw"   value="Sesame Seeds Raw"><label class="radioLabel">Sesame Seeds (Raw)</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SunflowerSeedsRaw"   value="Sunflower Seeds Raw"><label class="radioLabel">Sunflower Seeds (Raw) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SunflowerSeedsRoastedInShell"   value="Sunflower Seeds Roasted In Shell"><label class="radioLabel">Sunflower Seeds (Roasted - In-Shell) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SunflowerSeedsRoastedShelled"   value="Sunflower Seeds Roasted Shelled"><label class="radioLabel">Sunflower Seeds (Roasted - Shelled) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FlaxMeal"   value="Flax Meal"><label class="radioLabel">Flax Meal</label><br><br>
						<label class="dairyButtons">Shrimps</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedShrimp"   value="Canned Shrimp"><label class="radioLabel">Canned Shrimp </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedShrimp"   value="Cooked Shrimp"><label class="radioLabel">Cooked Shrimp </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshShrimpShellOn"   value="Fresh Shrimp Shell On"><label class="radioLabel">Fresh Shrimp (Shell On) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshShrimpShelled"   value="Fresh Shrimp Shelled"><label class="radioLabel">Fresh Shrimp (Shelled) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenShrimp"   value="Frozen Shrimp"><label class="radioLabel">Frozen Shrimp</label><br><br>
						<label class="dairyButtons">Tofu</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Tofu"   value="Tofu"><label class="radioLabel">Tofu </label><br>
						<label class="dairyButtons">Tahini</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Tahini"   value="Tahini"><label class="radioLabel">Tahini </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="TahiniPaste"   value="Tahini Paste"><label class="radioLabel">Tahini Paste</label><br><br>
						<label class="dairyButtons">Turkey</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RawFreshTurkey"   value="Raw Fresh Turkey"><label class="radioLabel">(Raw) Fresh Turkey </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RawGroundTurkey"   value="Raw Ground Turkey"><label class="radioLabel">(Raw) Ground Turkey </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedTurkey"   value="Cooked Turkey"><label class="radioLabel">Cooked Turkey </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DeliTurkey"   value="Deli Turkey"><label class="radioLabel">Deli Turkey </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundTurkey"   value="Ground Turkey"><label class="radioLabel">Ground Turkey </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeTurkeySoup"   value="Homemade Turkey Soup"><label class="radioLabel">Homemade Turkey Soup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ThanksgivingTurkey"   value="Thanksgiving Turkey"><label class="radioLabel">Thanksgiving Turkey </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Turkeyjerky"   value="Turkey jerky"><label class="radioLabel">Turkey jerky</label><br><br>
						<label class="dairyButtons">Beans</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedBeans"   value="Dried Beans"><label class="radioLabel">Dried Beans </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedSplitPeasregularpackaging"   value="Dried Split Peas regular packaging"><label class="radioLabel">Dried Split Peas (regular packaging) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DriedSplitPeaswithO2absorbers"   value="Dried Split Peas with O2 absorbers"><label class="radioLabel">Dried Split Peas (with O2 absorbers) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LentilsDried"   value="Lentils Dried"><label class="radioLabel">Lentils (Dried) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedBeans"   value="Canned Beans"><label class="radioLabel">Canned Beans </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CookedBeans"   value="Cooked Beans"><label class="radioLabel">Cooked Beans </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshGreenBeans"   value="Fresh Green Beans"><label class="radioLabel">Fresh Green Beans</label><br><br>
						<label class="dairyButtons">Sushi</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Sushi"   value="Sushi"><label class="radioLabel">Sushi</label><br><br>
		 	   </div>
		 	   
		 	   <button class="dropButton">Others<i class="fa fa-caret-down"></i></button>
		 	   <div class="dropdown-container">
		 	   			<label class="dairyButtons">Spread</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="AppleButter"   value="Apple Butter"><label class="radioLabel">Apple Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PumpkinButter"   value="Pumpkin Butter"><label class="radioLabel">Pumpkin Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CrunchyPeanutButter"   value="Crunchy Peanut Butter"><label class="radioLabel">Crunchy Peanut Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadePeanutButter"   value="Homemade Peanut Butter"><label class="radioLabel">Homemade Peanut Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="NaturalPeanutButter"   value="Natural Peanut Butter"><label class="radioLabel">Natural Peanut Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SmoothPeanutButter"   value="Smooth Peanut Butter"><label class="radioLabel">Smooth Peanut Butter </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SunButter"   value="Sun Butter"><label class="radioLabel">Sun Butter</label><br><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LemonCurd"   value="Lemon Curd"><label class="radioLabel">Lemon Curd </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Nutella"   value="Nutella"><label class="radioLabel">Nutella</label><br><br>
						<label class="dairyButtons">Aspirin</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Aspirin"   value="Aspirin"><label class="radioLabel">Aspirin</label><br><br>
						<label class="dairyButtons">Canned food</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedFrosting/Icing"   value="Canned Frosting/Icing"><label class="radioLabel">Canned Frosting/Icing</label><br><br>
						<label class="dairyButtons">Cake</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakeryCake"   value="Bakery Cake"><label class="radioLabel">Bakery Cake </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakeryCupcakes"   value="Bakery Cupcakes"><label class="radioLabel">Bakery Cupcakes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cakewithfreshfruit"   value="Cake with fresh fruit"><label class="radioLabel">Cake with fresh fruit </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cakewithwhippedcream"   value="Cake with whipped cream"><label class="radioLabel">Cake with whipped cream </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cupcakeswithcreamcheese"   value="Cupcakes with Cream Cheese"><label class="radioLabel">Cupcakes with cream cheese </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cupcakeswithfreshfruit"   value="Cupcakes with fresh fruit"><label class="radioLabel">Cupcakes with fresh fruit </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cupcakeswithwhippedcream"   value="Cupcakes with whipped cream"><label class="radioLabel">Cupcakes with whipped cream </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FruitCake"   value="Fruit Cake"><label class="radioLabel">Fruit Cake </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeCupcakes"   value="Homemade Cupcakes"><label class="radioLabel">Homemade Cupcakes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HostessCupcakes"   value="Hostess Cupcakes"><label class="radioLabel">Hostess Cupcakes</label><br><br>
						<label class="dairyButtons">Candy</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CandySprinkles"   value="Candy Sprinkles"><label class="radioLabel">Candy Sprinkles</label><br><br>
						<label class="dairyButtons">Cheesecake</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cheesecake"   value="Cheesecake"><label class="radioLabel">Cheesecake </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshCheesecake"   value="Fresh Cheesecake"><label class="radioLabel">Fresh Cheesecake </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenCheesecake"   value="Frozen Cheesecake"><label class="radioLabel">Frozen Cheesecake </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeCheesecake"   value="Homemade Cheesecake"><label class="radioLabel">Homemade Cheesecake</label><br><br>
						<label class="dairyButtons">Chips</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BananaChips"   value="Banana Chips"><label class="radioLabel">Banana Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadePotatoChips"   value="Homemade Potato Chips"><label class="radioLabel">Homemade Potato Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedPotatoChips"   value="Packaged Potato Chips"><label class="radioLabel">Packaged Potato Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedPotatoChips"   value="Packaged Potato Chips"><label class="radioLabel">Packaged Potato Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedTortillaChips"   value="Packaged Tortilla Chips"><label class="radioLabel">Packaged Tortilla Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="VegetableChips"   value="Vegetable Chips"><label class="radioLabel">Vegetable Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Bugles"   value="Bugles"><label class="radioLabel">Bugles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Doritos"   value="Doritos"><label class="radioLabel">Doritos </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Fritos"   value="Fritos"><label class="radioLabel">Fritos </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pringles"   value="Pringles"><label class="radioLabel">Pringles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Tostitos"   value="Tostitos"><label class="radioLabel">Tostitos</label><br><br>
						<label class="dairyButtons">Chocolate</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BelgianChocolate"   value="Belgian Chocolate"><label class="radioLabel">Belgian Chocolate </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Chocolate"   value="Chocolate"><label class="radioLabel">Chocolate </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChocolateBars"   value="Chocolate Bars"><label class="radioLabel">Chocolate Bars </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChocolateChips"   value="Chocolate Chips"><label class="radioLabel">Chocolate Chips </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChocolateSyrup"   value="Chocolate Syrup"><label class="radioLabel">Chocolate Syrup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChocolateTruffles"   value="Chocolate Truffles"><label class="radioLabel">Chocolate Truffles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryKCupHotChocolate"   value="Dry K Cup Hot Chocolate"><label class="radioLabel">Dry K-Cup Hot Chocolate</label><br><br>
						<label class="dairyButtons">Cinnamon</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GroundCinnamon"   value="Ground Cinnamon"><label class="radioLabel">Ground Cinnamon </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CinnamonSticks"   value="Cinnamon Sticks"><label class="radioLabel">Cinnamon Sticks</label><br><br>
						<label class="dairyButtons">Cookies</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PillsburyCookieDough"   value="Pillsbury Cookie Dough"><label class="radioLabel">Pillsbury Cookie Dough </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakeryCookies"   value="Bakery Cookies"><label class="radioLabel">Bakery Cookies </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenCookieDough"   value="Frozen Cookie Dough"><label class="radioLabel">Frozen Cookie Dough </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeCookieDough"   value="Homemade Cookie Dough"><label class="radioLabel">Homemade Cookie Dough </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeCookiesHard"   value="Homemade Cookies Hard"><label class="radioLabel">Homemade Cookies (Hard) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeCookiesSoft"   value="Homemade Cookies Soft"><label class="radioLabel">Homemade Cookies (Soft) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedCookiesHard"   value="Packaged Cookies Hard"><label class="radioLabel">Packaged Cookies (Hard) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PackagedCookiesSoft"   value="Packaged Cookies Soft"><label class="radioLabel">Packaged Cookies (Soft) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenFruitBars"   value="Frozen Fruit Bars"><label class="radioLabel">Frozen Fruit Bars </label><br><br>
						<label class="dairyButtons">Cocoa</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cocoa"   value="Cocoa"><label class="radioLabel">Cocoa </label><br><br>
					<label class="dairyButtons">Cracker</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Crackers"   value="Crackers"><label class="radioLabel">Crackers </label><br><br>
						<label class="dairyButtons">Dressing</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CaesarDressing"   value="Caesar Dressing"><label class="radioLabel">Caesar Dressing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ItalianDressing"   value="Italian Dressing"><label class="radioLabel">Italian Dressing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RanchDressing"   value="Ranch Dressing"><label class="radioLabel">Ranch Dressing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ThousandIslandDressing"   value="Thousand Island Dressing"><label class="radioLabel">Thousand Island Dressing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MiracleWhip"   value="Miracle Whip"><label class="radioLabel">Miracle Whip </label><br><br>
						<label class="dairyButtons">Flour</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CornFlour"   value="Corn Flour"><label class="radioLabel">Corn Flour </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Flour"   value=" Flour"><label class="radioLabel">Flour </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PotatoFlour"   value="Potato Flour"><label class="radioLabel">Potato Flour </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RiceFlour"   value="Rice Flour"><label class="radioLabel">Rice Flour </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SelfrisingFlour"   value="Selfrising Flour"><label class="radioLabel">Self-rising Flour </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WholeWheatFlour"   value="WholeWheat Flour"><label class="radioLabel">Whole Wheat Flour </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Cornstarch"   value="Cornstarch"><label class="radioLabel">Cornstarch </label><br><br>
						<label class="dairyButtons">Frosting</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeFrosting/Icing"   value="Homemade Frosting/Icing"><label class="radioLabel">Homemade Frosting/Icing </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReadytoDecorateIcingGel"   value="Ready to Decorate Icing Gel"><label class="radioLabel">Ready to Decorate Icing - Gel </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ReadytoDecorateIcingPressureTube"   value="Ready to Decorate Icing Pressure Tube"><label class="radioLabel">Ready to Decorate Icing - Pressure Tube</label><br><br>
						<label class="dairyButtons">Honey</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Honey"   value="Honey"><label class="radioLabel">Honey</label><br><br>
						<label class="dairyButtons">Ice Cream</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Popsicles"   value="Popsicles"><label class="radioLabel">Popsicles </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Sherbert"   value="Sherbert"><label class="radioLabel">Sherbert</label><br><br>
						<label class="dairyButtons">Jam</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ApricotJam"   value="Apricot Jam"><label class="radioLabel">Apricot Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BlackberryJam"   value="Blackberry Jam"><label class="radioLabel">Blackberry Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeJam"   value="Homemade Jam"><label class="radioLabel">Homemade Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="LowSugarJam"   value="Low Sugar Jam"><label class="radioLabel">Low Sugar Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PeachJam"   value="Peach Jam"><label class="radioLabel">Peach Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Smucker'sSugarFreeJam"   value="Smucker's Sugar Free Jam"><label class="radioLabel">Smucker's Sugar Free Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="StrawberryJam"   value="Strawberry Jam"><label class="radioLabel">Strawberry Jam </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SugarFreeJam"   value="Sugar Free Jam"><label class="radioLabel">Sugar Free Jam</label><br><br>
						<label class="dairyButtons">Jelly</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryJello"   value="Dry Jello"><label class="radioLabel">Dry Jello </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Jellodrypowdermix"   value="Jello Dry Powder Mix"><label class="radioLabel">Jello (dry powder mix) </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedJello"   value="Prepared Jello"><label class="radioLabel">Prepared Jello </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SealedPrepackagedPreparedJello"   value="Sealed Prepackaged Prepared Jello"><label class="radioLabel">Sealed Pre-packaged Prepared Jello </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="UnflavoredGelatin"   value="Unflavored Gelatin"><label class="radioLabel">Unflavored Gelatin </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Welch'sGrapeJelly"   value="Welch's Grape Jelly"><label class="radioLabel">Welch's Grape Jelly </label><br><br>
						<label class="dairyButtons">Ketchup</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HeinzKetchup"   value="Heinz Ketchup"><label class="radioLabel">Heinz Ketchup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PreparedKetchup"   value="Prepared Ketchup"><label class="radioLabel">Prepared Ketchup</label><br><br>
						<label class="dairyButtons">Marshmallow</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MarshmallowFluff"   value="Marshmallow Fluff"><label class="radioLabel">Marshmallow Fluff </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MarshmallowPeeps"   value="Marshmallow Peeps"><label class="radioLabel">Marshmallow Peeps </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Marshmallows"   value="Marshmallows"><label class="radioLabel">Marshmallows</label><br><br>
						<label class="dairyButtons">Marmalade</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OrangeMarmalade"   value="Orange Marmalade"><label class="radioLabel">Orange Marmalade</label><br><br>
						<label class="dairyButtons">Mayonaise</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Mayonnaise"   value="Mayonnaise"><label class="radioLabel">Mayonnaise</label><br><br>
						<label class="dairyButtons">Mix</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BrownieMix"   value="Brownie Mix"><label class="radioLabel">Brownie Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CakeMix"   value="Cake Mix"><label class="radioLabel">Cake Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChexMix"   value="Chex Mix"><label class="radioLabel">Chex Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryFrostingMix"   value="Dry Frosting Mix"><label class="radioLabel">Dry Frosting Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Kraft'sDryPuddingMix"   value="Kraft's Dry Pudding Mix"><label class="radioLabel">Kraft's Dry Pudding Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MuffinMix"   value="Muffin Mix"><label class="radioLabel">Muffin Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="NestleHotChocolateMix"   value="Nestle Hot Chocolate Mix"><label class="radioLabel">Nestle Hot Chocolate Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PestoPreparedFromDryMix"   value="Pesto Prepared From Dry Mix"><label class="radioLabel">Pesto Prepared From Dry Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="uddingPreparedfromDryMix"   value="Pudding Prepared from Dry Mix"><label class="radioLabel">udding Prepared from Dry Mix</label><br><br>
						<label class="dairyButtons">Mustard</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="AmericanMustard"   value="American Mustard"><label class="radioLabel">American Mustard </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChineseMustard"   value="Chinese Mustard"><label class="radioLabel">Chinese Mustard </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DijonMustard"   value="Dijon Mustard"><label class="radioLabel">Dijon Mustard </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryMustard"   value="Dry Mustard"><label class="radioLabel">Dry Mustard </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeMustard"   value="Homemade Mustard"><label class="radioLabel">Homemade Mustard </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HoneyMustard"   value="Honey Mustard"><label class="radioLabel">Honey Mustard</label><br><br>
						<label class="dairyButtons">Oil</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CoconutOil"   value="Coconut Oil"><label class="radioLabel">Coconut Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="AvocadoOil"   value="Avocado Oil"><label class="radioLabel">Avocado Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BlendedOil"   value="Blended Oil"><label class="radioLabel">Blended Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CanolaOil"   value="Canola Oil"><label class="radioLabel">Canola Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChiliOil"   value="Chili Oil"><label class="radioLabel">Chili Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CornOil"   value="Corn Oil"><label class="radioLabel">Corn Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GrapeSeedOil"   value="Grape Seed Oil"><label class="radioLabel">Grape Seed Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HazelnutOil"   value="Hazelnut Oil"><label class="radioLabel">Hazelnut Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="MacadamiaNutOil"   value="Macadamia Nut Oil"><label class="radioLabel">Macadamia Nut Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OilBasedPastaSauce"   value="Oil Based Pasta Sauce"><label class="radioLabel">Oil Based Pasta Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OliveOil"   value="Olive Oil"><label class="radioLabel">Olive Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PeanutOil"   value="Peanut Oil"><label class="radioLabel">Peanut Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RefinedCoconutOil"   value="Refined Coconut Oil"><label class="radioLabel">Refined Coconut Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SafflowerOil"   value="Safflower Oil"><label class="radioLabel">Safflower Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SesameOil"   value="Sesame Oil"><label class="radioLabel">Sesame Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SprayOilCan"   value="Spray Oil Can"><label class="radioLabel">Spray Oil Can </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SunflowerOil"   value="Sunflower Oil"><label class="radioLabel">Sunflower Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="TruffleOil"   value="Truffle Oil"><label class="radioLabel">Truffle Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="VegetableOil"   value="Vegetable Oil"><label class="radioLabel">Vegetable Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="VirginorExtravirginCoconutOil"   value="Virgin or Extra Virgin Coconut Oil"><label class="radioLabel">Virgin or Extra-virgin Coconut Oil </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WalnutOil"   value="Walnut Oil"><label class="radioLabel">Walnut Oil</label><br><br>
						<label class="dairyButtons">Pasta</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryPackagePastaSauceMix"   value="Dry Package Pasta Sauce Mix"><label class="radioLabel">Dry Package Pasta Sauce Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pasta"   value="Pasta"><label class="radioLabel">Pasta</label><br><br>
						<label class="dairyButtons">Pastry</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakedPuffPastry"   value="Baked Puff Pastry"><label class="radioLabel">Baked Puff Pastry </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FrozenPuffPastry"   value="Frozen Puff Pastry"><label class="radioLabel">Frozen Puff Pastry</label><br><br>
						<label class="dairyButtons">Pesto</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadePesto"   value="Homemade Pesto"><label class="radioLabel">Homemade Pesto </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PurchasedCannedPesto"   value="Purchased Canned Pesto"><label class="radioLabel">Purchased Canned Pesto </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PurchasedRefrigeratedPesto"   value="Purchased Refrigerated Pesto"><label class="radioLabel">Purchased Refrigerated Pesto</label><br><br>
						<label class="dairyButtons">Pie</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ApplePie"   value="Apple Pie"><label class="radioLabel">Apple Pie </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CreamPie"   value="Cream Pie"><label class="radioLabel">Cream Pie </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CustardPie"   value="Custard Pie"><label class="radioLabel">Custard Pie </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FruitPie"   value="Fruit Pie"><label class="radioLabel">Fruit Pie </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PieCrustMix"   value="Pie Crust Mix"><label class="radioLabel">Pie Crust Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Piewithfreshfruit"   value="Pie with fresh fruit"><label class="radioLabel">Pie with fresh fruit </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PotPie"   value="Pot Pie"><label class="radioLabel">Pot Pie </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PumpkinPie"   value="Pumpkin Pie"><label class="radioLabel">Pumpkin Pie </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RefrigeratorPieCrust"   value="Refrigerator Pie Crust"><label class="radioLabel">Refrigerator Pie Crust </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PumpkinPie"   value="Pumpkin Pie"><label class="radioLabel">Pumpkin Pie</label><br><br>
						<label class="dairyButtons">Pizza</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Pizza"   value="Pizza"><label class="radioLabel">Pizza </label><br>
						<label class="dairyButtons">Powder</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BakingPowder"   value="Baking Powder"><label class="radioLabel">Baking Powder </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CocoaPowder"   value="Cocoa Powder"><label class="radioLabel">Cocoa Powder </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PurchasedPowderedPestoMix"   value="Purchased Powdered Pesto Mix"><label class="radioLabel">Purchased Powdered Pesto Mix </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WasabiPowder"   value="Wasabi Powder"><label class="radioLabel">Wasabi Powder</label><br><br>
						<label class="dairyButtons">Salsa</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadeSalsa"   value="Homemade Salsa"><label class="radioLabel">Homemade Salsa </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SalsaJar"   value="Salsa Jar"><label class="radioLabel">Salsa (Jar)</label><br><br>
						<label class="dairyButtons">Sauce</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CannedCranberrySauce"   value="Canned Cranberry Sauce"><label class="radioLabel">Canned Cranberry Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshHomemadeCranberrySauce"   value="Fresh Homemade Cranberry Sauce"><label class="radioLabel">Fresh (Homemade) Cranberry Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BarbecueBarbequeSauce"   value="Barbecue Barbeque Sauce"><label class="radioLabel">Barbecue (Barbeque) Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CreamBasedPastaSauce"   value="Cream Based Pasta Sauce"><label class="radioLabel">Cream Based Pasta Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FishSauce"   value="Fish Sauce"><label class="radioLabel">Fish Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="OysterSauce"   value="Oyster Sauce"><label class="radioLabel">Oyster Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SoySauce"   value="Soy Sauce"><label class="radioLabel">Soy Sauce </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Tomato BasedPastaSauce"   value="Tomato Based Pasta Sauce"><label class="radioLabel">Tomato Based Pasta Sauce</label><br><br>
						<label class="dairyButtons">Seaweed</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Nori"   value="Nori"><label class="radioLabel">Nori</label><br><br>
						<label class="dairyButtons">Shortening</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CriscoshorteningCans"   value="Crisco Shortening Cans"><label class="radioLabel">Crisco shortening Cans </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CriscoSticks"   value="Crisco Sticks"><label class="radioLabel">Crisco Sticks</label><br><br>
						<label class="dairyButtons">Spices</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="FreshFigs"   value="Fresh Figs"><label class="radioLabel">Fresh Figs</label><br><br>
						<label class="dairyButtons">Sprinkles</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Jimmies"   value="Jimmies"><label class="radioLabel">Jimmies</label><br><br>
						<label class="dairyButtons">Sugar</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BrownSugar"   value="Brown Sugar"><label class="radioLabel">Brown Sugar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ColoredSugarCrystals"   value="Colored Sugar Crystals"><label class="radioLabel">Colored Sugar Crystals </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="GranulatedWhiteSugar"   value="Granulated White Sugar"><label class="radioLabel">Granulated White Sugar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PowderedSugar"   value="Powdered Sugar"><label class="radioLabel">Powdered Sugar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RawSugar"   value="Raw Sugar"><label class="radioLabel">Raw Sugar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Sugar"   value="Sugar"><label class="radioLabel">Sugar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WhiteSugarCubes"   value="White Sugar Cubes"><label class="radioLabel">White Sugar Cubes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SugarSubstitutes"   value="Sugar Substitutes"><label class="radioLabel">Sugar Substitutes </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="SweetnLow"   value="Sweet n Low"><label class="radioLabel">Sweet n Low</label><br><br>
						<label class="dairyButtons">Syrup</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CornSyrup"   value="Corn Syrup"><label class="radioLabel">Corn Syrup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Hershey'sSyrup"   value="Hershey's Syrup"><label class="radioLabel">Hershey's Syrup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PancakeSyrup"   value="Pancake Syrup"><label class="radioLabel">Pancake Syrup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PureMapleSyrup"   value="Pure Maple Syrup"><label class="radioLabel">Pure Maple Syrup </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HotFudge"   value="HotFudge"><label class="radioLabel">Hot Fudge</label><br><br>
						<label class="dairyButtons">Vanilla</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ImitationVanillaExtract"   value="Imitation Vanilla Extract"><label class="radioLabel">Imitation Vanilla Extract </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="PureVanillaExtract"   value="Pure VanillaE xtract"><label class="radioLabel">Pure Vanilla Extract</label><br><br>
						<label class="dairyButtons">Vinegar</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RiceWineVinegar"   value="Rice Wine Vinegar"><label class="radioLabel">Rice Wine Vinegar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="AppleCiderVinegar"   value="Apple Cider Vinegar"><label class="radioLabel">Apple Cider Vinegar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BalsamicVinegar"   value="Balsamic Vinegar"><label class="radioLabel">Balsamic Vinegar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="BalsamicVinegarette"   value="Balsamic Vinegarette"><label class="radioLabel">Balsamic Vinegarette </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RaspberryVinegar"   value="Raspberry Vinegar"><label class="radioLabel">Raspberry Vinegar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="RedWineVinegar"   value="RedWine Vinegar"><label class="radioLabel">Red Wine Vinegar </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WhiteVinegar"   value="White Vinegar"><label class="radioLabel">White Vinegar</label><br><br>
						<label class="dairyButtons">Wasabi</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WasabiPaste"   value="Wasabi Paste"><label class="radioLabel">Wasabi Paste </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WasabiPeas"   value="Wasabi Peas"><label class="radioLabel">Wasabi Peas </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="WasabiRoot"   value="Wasabi Root"><label class="radioLabel">Wasabi Root</label><br><br>			
								<label class="dairyButtons">Yeast</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="DryActiveYeast"   value="DryActive Yeast"><label class="radioLabel">Dry Active Yeast </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="CakeYeast"   value="Cake Yeast"><label class="radioLabel">Cake Yeast</label><br><br>
						<label class="dairyButtons">Pudding</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="ChocolatePudding"   value="Chocolate Pudding"><label class="radioLabel">Chocolate Pudding </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="HomemadePudding"   value="Homemade Pudding"><label class="radioLabel">Homemade Pudding </label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="VanillaPudding"   value="Vanilla Pudding"><label class="radioLabel">Vanilla Pudding</label><br><br>
						<label class="dairyButtons">Salt</label><br>
								<input type="radio" name="oneFoodOnly" class="foodButtons" id="Salt"   value="Salt"><label class="radioLabel">Salt </label><br><br>
		 	   </div>
		 	  </div>
		</div>
		
		
		
		
		<div class="main">
			<h1>Food Freshness Checker</h1>
		</div>
		
		
		<div class="foodName" >
			<label class="categoryTitle">The Food</label><br>
			<p id="theFood" class="stored"></p>
		</div>
			
		<div class="foodInfo">
				<form id="unopen" class="unopen" action="/webapps/calcFoodFreshnessUnopened" >
					<label class="categoryTitle">UNOPENED</label><br><br>
					<label class="question">Choose the food's sell-by-date or the printed best-before date : </label><br><br>
					<input type="text" id="inputDate" name="pastPrintedDate" value="DD/MM/YYYY"><br><br><br>
					 <p class="error" id="dateError"></p>
					<input type="hidden" name="selectedRadioValue" id="hidden" value="a">
					<label class="question">Where do you keep this food?</label><br><br>
					<input type="radio" class="categoryButton" name="unopened"  value="unopened_in_pantry"><label class="radioInfo">Pantry</label><br>
					<input type="radio" class="categoryButton" name="unopened"  value="unopened_in_fridge"><label class="radioInfo">Fridge</label><br>
					<input type="radio" class="categoryButton" name="unopened"  value="unopened_in_freezer"><label class="radioInfo">Freezer</label><br><br>
					<p class="error" id="unopenstorageError"></p>
					<button class="unopenedsubmit" type="submit">Check</button>
				</form>
				<form class="open"  action="/webapps/calcFoodFreshnessOpened">
					<label class="categoryTitle">OPENED / BOILED / COOKED</label><br><br>
					<label class="question">When did you open/boil/cook this food?</label><br><br>
					<input type="text"  class="time" name="opentime" >
					<input type="radio"  class="radTime" name="dateButton" value="daysAgo" ><label class="radioTime">day(s) ago </label><br>
					<input type="radio"  class="radTime" name="dateButton" value="weeksAgo"><label class="radioTime">week(s) ago </label><br>
					<input type="radio"  class="radTime" name="dateButton" value="monthsAgo"><label class="radioTime">month(s) ago</label><br><br>
					<input type="hidden" name="selectedtime" id="hidden" value="a">
				    <p class="error" id="dayError"></p>
				    <p class="error" id="opentimeError"></p>
					<input type="hidden" name="selectedRadioValue" id="hidden" value="a">
					<label class="question">Where do you keep this food?</label><br><br>
					<input type="radio"  class="categoryButton" name="opened" value="opened_in_pantry"><label class="radioInfo">Pantry &nbsp;</label><br>
					<input type="radio"  class="categoryButton" name="opened" value="opened_in_fridge"><label class="radioInfo">Fridge &nbsp;</label><br>
					<input type="radio"  class="categoryButton" name="opened" value="opened_in_freezer"><label class="radioInfo">Freezer</label><br><br>
					<input type="hidden" name="selectedstorage" id="hidden" value="a">
					<p class="error" id="storageError"></p>
					<button class="openedsubmit" type="submit">Check</button>
				</form>
		
		</div>
		
		

		<div class="foodResult">
				<div class="categoryTitle">
					<label class="title">Result</label><br>
					<label id="foodchosenprev">FOOD CHOSEN</label><br>
				</div>
				
				<div class="ed">
					<label class="res">Edibility</label><br>
					<p><%=request.getAttribute("edibility") %></p>
				</div>
				
				<div class="ed">
					<label class="res"> Edible Date</label><br>
					<p><%=request.getAttribute("lastDate") %></p>
				</div>
				
				<div class="ed">
					<label class="res">Is edible for another</label><br>
					<p><%=request.getAttribute("daysLeft") %></p>
				</div>
			</div>
			
		<div class="Info">
		<label class="title">About the food</label><br>
			<p id="theinfo">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc posuere, mauris sed gravida interdum, dolor ipsum egestas lorem, a malesuada arcu urna vel magna. Etiam consequat tempus nisi sit amet viverra. Curabitur efficitur ante a enim pulvinar scelerisque. Nulla sodales sit amet est nec interdum. Vivamus sagittis dignissim neque. Vestibulum blandit sit amet elit rutrum varius. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer justo magna, interdum in tellus id, hendrerit dignissim sapien. Vivamus a arcu sit amet ante efficitur cursus. Quisque bibendum, ipsum sit amet ultricies porttitor, lorem risus sollicitudin eros, quis pretium velit magna sit amet purus. Ut ipsum lorem, sagittis ac consectetur id, condimentum id augue. Integer mattis risus a eros commodo, et facilisis est fermentum.</p>
		</div>			
		
</body>
</html>

<!-- <a href class="dropbutton">Click and choose a food </label><br>
 left :50%;
  transform: translate(-50%, -50%);
  font-size:36px;-->