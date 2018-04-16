package com.fyp.webapps.entity;

import java.util.HashMap;

public class Nutrition {
	
	String nutritionName;
	String nutritionDesc;
	HashMap<String,String> nutdesc;
	String unit;
	String nutritionValue;
	
	public Nutrition(HashMap<String,String> nutdesc) {
		this.nutdesc = nutdesc;
	}
	
	public Nutrition(String nutritionName, String nutritionValue, String unit) {
		this.nutritionName = nutritionName ;
		this.nutritionValue = nutritionValue;
		this.unit = unit;
	}
	
	public String getNutritionName() {
		return nutritionName;
	}

	public void setNutritionName(String nutritionName) {
		this.nutritionName = nutritionName;
	}
	
	public String getNutritionValue() {
		return nutritionValue;
	}

	public void setNutritionValue(String nutritionValue) {
		this.nutritionValue = nutritionValue;
	}


	public void setNutritionDesc(HashMap<String,String> nutdesc) {
		this.nutdesc = nutdesc;
	}
	
	public HashMap<String, String> getNutritionDesc() {
		return nutdesc;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	public String getUnit() {
		return unit;
	}
}
