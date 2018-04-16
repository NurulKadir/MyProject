package com.fyp.webapps.entity;

public class Ingredient {

	String quantity , unit,  ingredient;
	
	public Ingredient(String quantity, String unit, String ingredient) {
		this.quantity = quantity;
		this.unit = unit;
		this.ingredient=ingredient;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getIngredient() {
		return ingredient;
	}

	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	
	

}
