package com.fyp.webapps.entity;

import java.util.HashMap;
import java.util.List;


public class Recipe {
	
	
	String recipeID;
	String prepTime;
	String cookingTime;
	String totalTime;
	String serves;
	String recipeName , description , additionalInfo ,complexity;
	String cuisine;
	String category;
	String restriction;
	String photoDir;
	String nutritionDescription;
	HashMap<String, String> ingredients;
	List<String> method;
	List<String> mealType;
	HashMap<String, String> nutritionList = new HashMap<String, String>();
	HashMap<String, String> nutritionDes = new HashMap<String, String>();
	
	
	/*public Recipe(int recipeID, String recipeName, String description, String additionalInfo, int prepTime,
			int cookingTime, int totalTime, int serves, String complexity, String cuisine, String category,
			String restriction, String photoDir, String nutritionDescription, String ingredients, String method,
			String mealType, List<Nutrition> nutritionList) {
		super();
		this.recipeID = recipeID;
		this.recipeName = recipeName;
		this.description = description;
		this.additionalInfo = additionalInfo;
		this.prepTime = prepTime;
		this.cookingTime = cookingTime;
		this.totalTime = totalTime;
		this.serves = serves;
		this.complexity = complexity;
		this.cuisine = cuisine;
		this.category = category;
		this.restriction = restriction;
		this.photoDir = photoDir;
		this.nutritionDescription = nutritionDescription;
		this.ingredients = ingredients;
		this.method = method;
		this.mealType = mealType;
		this.nutritionList = nutritionList;
	}*/
	
	/*public Recipe(int recipeID, String recipeName ,String cuisine) {
		this.cuisine =cuisine;
		this.recipeID=recipeID;
		this.recipeName=recipeName;
	}*/
	
	public Recipe(String recipeName, String description, String additionalInfo, String prepTime,
			String cookingTime, String totalTime, String serves, String complexity, String cuisine,
			String category, String restriction, String photoDir, String nutDesc) {
		super();
		this.recipeName = recipeName;
		this.description = description;
		this.additionalInfo = additionalInfo;
		this.prepTime = prepTime;
		this.cookingTime = cookingTime;
		this.totalTime = totalTime;
		this.serves = serves;
		this.complexity = complexity;
		this.cuisine = cuisine;
		this.category = category;
		this.restriction = restriction;
		this.photoDir = photoDir;
		this.nutritionDescription = nutDesc;
	}
	
	public Recipe() {
	}

	public String getRecipeID() {
		return recipeID;
	}
	public void setRecipeID(String iD) {
		this.recipeID = iD;
	}
	public String getRecipeName() {
		return recipeName;
	}
	public void setRecipeName(String recipeName) {
		this.recipeName = recipeName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAdditionalInfo() {
		return additionalInfo;
	}
	public void setAdditionalInfo(String additionalInfo) {
		this.additionalInfo = additionalInfo;
	}
	public String getPrepTime() {
		return prepTime;
	}
	public void setPrepTime(String prepTime) {
		this.prepTime = prepTime;
	}
	public String getCookingTime() {
		return cookingTime;
	}
	public void setCookingTime(String cookingTime) {
		this.cookingTime = cookingTime;
	}
	public String getTotalTime() {
		return totalTime;
	}
	public void setTotalTime(String totalTime) {
		this.totalTime = totalTime;
	}
	public String getServes() {
		return serves;
	}
	public void setServes(String serves) {
		this.serves = serves;
	}
	public String getComplexity() {
		return complexity;
	}
	public void setComplexity(String complexity) {
		this.complexity = complexity;
	}
	public String getCuisine() {
		return cuisine;
	}
	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getRestriction() {
		return restriction;
	}
	public void setRestriction(String restriction) {
		this.restriction = restriction;
	}
	public String getPhotoDir() {
		return photoDir;
	}
	public void setPhotoDir(String photoDir) {
		this.photoDir = photoDir;
	}
	public String getNutritionDescription() {
		return nutritionDescription;
	}
	public void setNutritionDescription(String nutritionDescription) {
		this.nutritionDescription = nutritionDescription;
	}
	public HashMap<String, String> getIngredients() {
		return ingredients;
	}
	public HashMap<String, String> getNutritionDes() {
		return nutritionDes;
	}

	public void setNutritionDes(HashMap<String, String> nutritionDes) {
		this.nutritionDes = nutritionDes;
	}

	public void setIngredients(HashMap<String, String> quantityIngredient) {
		this.ingredients = quantityIngredient;
	}
	public List<String> getMethod() {
		return method;
	}
	public void setMethod(List<String> mealTypes) {
		this.method = mealTypes;
	}
	public List<String> getMealType() {
		return mealType;
	}
	public void setMealType(List<String> mealType) {
		this.mealType = mealType;
	}
	public HashMap<String, String> getNutritionList() {
		return nutritionList;
	}
	public void setNutritionList(HashMap<String, String> nutritions) {
		this.nutritionList = nutritions;
	}	

}
