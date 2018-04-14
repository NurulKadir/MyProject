package com.fyp.webapps.entity;

import java.util.HashMap;

public class Nutrition {
	
	int nutritionName;
	String nutritionDesc;
	HashMap<String,String> nutdesc;
	
	public Nutrition(HashMap<String,String> nutdesc) {
		this.nutdesc = nutdesc;
	}
	
	public Nutrition() {
	}

	public HashMap<String, String> getNutritionDesc() {
		return nutdesc;
	}

	public void setNutritionDesc(HashMap<String,String> nutdesc) {
		this.nutdesc = nutdesc;
	}
}
