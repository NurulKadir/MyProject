package com.fyp.webapps;

import java.beans.PropertyVetoException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fyp.webapps.entity.FoodFreshness;
import com.fyp.webapps.entity.Ingredient;
import com.fyp.webapps.entity.Nutrition;
import com.fyp.webapps.entity.Recipe;
import com.fyp.webapps.entity.Requirement;
import com.fyp.webapps.entity.UserInfo;
import com.fyp.webapps.entity.WastedFood;
import com.fyp.webapps.logic.FoodShelfLife;
import com.fyp.webapps.logic.GainMaintainLose;
import com.fyp.webapps.logic.RecipeFinder;
import com.fyp.webapps.logic.RequirementCalculator;
import com.fyp.webapps.logic.SelectedRecipeFinder;
import com.fyp.webapps.logic.WasteTracker;

@Controller
public class FeaturesController {

	
	@RequestMapping(value = { "/", "/welcome**" })
	public String home() {
		return "index";
	}
	
	@RequestMapping("/findRecipe")
	public String findRecipe(){
		return "FindRecipe";
	}
	
	@RequestMapping("/foodFreshness")
	public String freshnessChecker(){
		return "FoodFreshness";
	}
	
	@RequestMapping("/wasteTracker")
	public String moneyCalc() {
		return "wasteTracker";
	}
	
	@RequestMapping("/nutRequirement")
	public String nutReqCalc() {
		return "nutritionalRequirement";
	}

	
	@RequestMapping("/calcFoodFreshnessUnopened")
	public ModelAndView freshnessCalc(@RequestParam(required=false,name="pastPrintedDate") String pastPrintedDate ,
			@RequestParam(required=false,name="selectedRadioValue") String foodName,
			@RequestParam(required=false,name="unopened") String place) throws PropertyVetoException{
		System.out.println(place);
		System.out.println(foodName);
		//System.out.println(pastPrintedDate);
		FoodShelfLife db=new FoodShelfLife();
		FoodFreshness f = new FoodFreshness();
		try {
			db.calcBasedOnDate(pastPrintedDate,f,foodName,"unopened",place,Main.getDataSource());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String edi = f.getEdibility();
		String left = f.getDaysLeft();
		String last =f.getLastEdibleDate();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("edibility", edi);
		model.put("daysLeft", left);
		model.put("lastDate", last);
		//and so on
		return new ModelAndView("foodFreshness",model);
		
	}
	
	@RequestMapping("/calcFoodFreshnessOpened")
	public ModelAndView freshnessCalculator(@RequestParam(required=false,name="pastPrintedDate") String pastPrintedDate ,
			@RequestParam(required=false,name="selectedRadioValue") String foodName,
			@RequestParam(required=false,name="opened") String place , 
			@RequestParam(name="dateButton") String time,
			@RequestParam(name="opentime") String inputTime) throws PropertyVetoException{
		System.out.println("place="+place);
		System.out.println("foodname="+foodName);
		System.out.println("time="+time);
		System.out.println("INPUTtime="+inputTime);
		//System.out.println(pastPrintedDate);
		FoodShelfLife db=new FoodShelfLife();
		FoodFreshness f = new FoodFreshness();
		try {
			String dateProcessed = db.checkTimeFoodProcessed(time,inputTime);
			db.calcBasedOnDate(dateProcessed,f,foodName, "opened", place, Main.getDataSource());

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String edi = f.getEdibility();
		String left = f.getDaysLeft();
		String last =f.getLastEdibleDate();
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("edibility", edi);
		model.put("daysLeft", left);
		model.put("lastDate", last);
		//and so on
		return new ModelAndView("foodFreshness",model);
		
	}
	
	@RequestMapping("/calcWaste")
	public ModelAndView wasteCalculator( @RequestParam(required=false,name="percent") String percentageDiscarded ,
			@RequestParam(required=false,name="selectedRadioValue") String foodName){
		

		WasteTracker waste = new WasteTracker();
		WastedFood tracker = new WastedFood();
		try {
			waste.calcWaste(percentageDiscarded,foodName,tracker, Main.getDataSource());
		} catch (PropertyVetoException e) {
			e.printStackTrace();
		}
		
		String wasted = tracker.getWaste().toString();
		
		ModelAndView mv = new ModelAndView("wasteTracker");
		
		mv.addObject("moneyWasted",wasted);
		
		return mv;
	}
	
	
	@RequestMapping("/calcRequirement")
	public ModelAndView requirementCalculator( 
			@RequestParam(required=false, name="height") String height ,
			@RequestParam(required=false, name="weight") String weight,
			@RequestParam(required=false, name="age") String age, 
			@RequestParam(required=false, name="gender") String gender,
			@RequestParam(required=false, name="lifestyle") String lifestyle,
			@RequestParam(required=false, name="dailyMealConsumed") String dailyMealConsumed,
			@RequestParam(required=false, name="carbPreference") String carbPreference,
			@RequestParam(required=false, name="proteinPreference") String proteinPreference,
			@RequestParam(required=false, name="fatsPreference") String fatsPreference,
			@RequestParam(required=false, name="gainMaintainLose") String gainMaintainLose,
			@RequestParam(required=false, name="lose") String toLose,
			@RequestParam(required=false, name="gain") String toGain){
		
		
		RequirementCalculator calc = new RequirementCalculator(new Requirement());
		UserInfo user = new UserInfo(height, weight, age, gender, lifestyle, dailyMealConsumed, carbPreference, proteinPreference, fatsPreference ,gainMaintainLose,
				toLose , toGain);
		System.out.println(toGain);
		calc.calcRequirement(user);
		Requirement r = calc.getReq();
		DecimalFormat df = new DecimalFormat("0.00");
		GainMaintainLose gml;
		List<String> dir = new ArrayList<>();
		try {
			gml = new GainMaintainLose(Main.getDataSource());
			dir = gml.getPhotoDirectory(gainMaintainLose);

		} catch (PropertyVetoException | SQLException e1) {
			e1.printStackTrace();
		}
		
		
		
		String BMR = df.format(r.getBMR());
		String BMI = df.format(r.getBMR());
		String fatsPerMeal = df.format(r.getFatsPerMeal());
		String proteinPerMeal =df.format(r.getProteinPerMeal());
		String carbPerMeal = df.format(r.getCarbPerMeal());
		String calPerMeal = df.format(r.getCalPerMeal());
		String fatsPerDay =df.format(r.getFatsPerDay());
		String proteinPerDay = df.format(r.getProteinPerDay());
		String carbPerDay = df.format(r.getCarbPerDay());
		String calPerDay =df.format(r.getCalPerDay());
		
		
		
		
		System.out.println("BMR = " + BMR);
		System.out.println("BMI = " + BMI);
		System.out.println("fatsPerMeal = " + fatsPerMeal);
		System.out.println("proteinPerMeal = " +  proteinPerMeal);
		System.out.println("carbPerMeal = " + carbPerMeal);
		System.out.println("calPerMeal = " + calPerMeal);
		System.out.println("fatsPerDay = " + fatsPerDay);
		System.out.println("proteinPerDay = " + proteinPerDay);
		System.out.println("carbPerDay = " + carbPerDay);
		System.out.println("calPerDay = " + calPerDay);
		
		
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("alter", gainMaintainLose);
		model.put("BMR",BMR);
		model.put("fatsPerMeal",fatsPerMeal);
		model.put("proteinPerMeal",proteinPerMeal);
		model.put("carbPerMeal",carbPerMeal);
		model.put("calPerMeal",calPerMeal);
		model.put("fatsPerDay",fatsPerDay);
		model.put("proteinPerDay" ,proteinPerDay);
		model.put("carbPerDay" ,carbPerDay);
		model.put("calPerDay" , calPerDay);
		model.put("dirs", dir);
		return new ModelAndView("nutRequirement",model);
		
	}
	
	@RequestMapping("/findRec")
	public ModelAndView findRec(@RequestParam(required=false, name="chosenfood") String chosenfood) throws SQLException, PropertyVetoException {
		
		RecipeFinder finder = new RecipeFinder(Main.getDataSource());
		List<Recipe> all = finder.getTheRecipes(chosenfood);
		for(Recipe rec : all) {
			//System.out.println(rec.getRecipeID() + " " + rec.getRecipeName() + "  " + rec.getDescription() + " " + rec.getTotalTime());
			System.out.println("hhhhh" + rec.getTotalTime()+"  " + rec.getTotalCalories());

		}
		ModelAndView model = new ModelAndView("findRecipe");
		model.addObject("recipeList" , all);
		return model;		
	    
	}

	
	@RequestMapping("/recipes")
	public ModelAndView getRecipe(@RequestParam ("recipeID") String recipeID) throws SQLException, PropertyVetoException{
		SelectedRecipeFinder finder = new SelectedRecipeFinder(Main.getDataSource());
		Recipe r = finder.getSelectedRecipe(recipeID);
		
		String name = r.getRecipeName();
		String additionalInfo = r.getAdditionalInfo();
		String description = r.getDescription();
		String serves = r.getServes();
		String totalTime = r.getTotalTime();
		String complexity = r.getComplexity();
		String category = r.getCategory();
		String cuisine = r.getCuisine();
		String restriction = r.getRestriction();
		String photoDir = r.getPhotoDir();
		String nutDesc = r.getNutritionDescription();
		List<String> mealTypes = finder.getSelectedRecipesMeal(recipeID);
		List<String> steps = finder.getMethods(recipeID);
		List<Ingredient> ingredients = finder.getIngredients(recipeID);
		//HashMap<String,String> ingredients = finder.getIngredients(recipeID);
		List<Nutrition> nutritions = finder.getNutritions(recipeID);
		List<String> ingredientList = finder.getIngredientList(recipeID);
		for(Nutrition a : nutritions) {
			System.out.println(a.getUnit());
		}
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("photoDir", photoDir);
		model.put("name", name);
		model.put("additionalInfo",additionalInfo);
		model.put("description", description);
		model.put("serves", serves);
		model.put("totalTime", totalTime);
		model.put("complexity",complexity);
		model.put("category",category);
		model.put("cuisine", cuisine);
		model.put("mealTypes", mealTypes);
		model.put("restriction", restriction);
		model.put("nutDesc", nutDesc);
		model.put("nutritions", nutritions);
		model.put("ingredients", ingredients);
		model.put("steps", steps);
		model.put("ingredientList", ingredientList);

		
		return new ModelAndView("/selectedRecipe",model);
		
	}
	
	
}
