package com.fyp.webapps.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class FoodFreshness {
	
	String name,	category, food , unopenedTag	,openedTag,	unopened_in_pantry, unopened_in_fridge, 
	unopened_in_freezer,	opened_in_pantry	,opened_in_fridge,	opened_in_freezer,	pantry,	fridge, freezer, counter;
	String printedDate, daysleft, edibility ;
	String last;
	@Id
	int foodID;
	
	public FoodFreshness() {
	
	}
	
	public FoodFreshness(int foodID, String name, String category, String food, String unopenedTag, String openedTag,
			String unopened_in_pantry, String unopened_in_fridge, String unopened_in_freezer, String opened_in_pantry,
			String opened_in_fridge, String opened_in_freezer, String pantry, String fridge, String freezer,
			String counter) {
		super();
		this.foodID = foodID;
		this.name = name;
		this.category = category;
		this.food = food;
		this.unopenedTag = unopenedTag;
		this.openedTag = openedTag;
		this.unopened_in_pantry = unopened_in_pantry;
		this.unopened_in_fridge = unopened_in_fridge;
		this.unopened_in_freezer = unopened_in_freezer;
		this.opened_in_pantry = opened_in_pantry;
		this.opened_in_fridge = opened_in_fridge;
		this.opened_in_freezer = opened_in_freezer;
		this.pantry = pantry;
		this.fridge = fridge;
		this.freezer = freezer;
		this.counter = counter;
	}
	
	public void setLastEdibleDate(Date last) {
		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		this.last = format.format(last);
	}
	
	public void setLastEdibleNoDataAlert(String noDataMessage) {
		this.last = noDataMessage;
	}
	
	public String getLastEdibleDate() {
		return this.last;
	}
	
	public void setDaysleft(String daysleft) {
		this.daysleft = daysleft;
	}
	
	public String getDaysLeft() {
		return this.daysleft;
	}
	
	public void setEdibility(String edibility) {
		this.edibility = edibility;
	}
	
	public String getEdibility() {
		return this.edibility;
	}
	
	public void setPrintedDate(String printedDate) {
		this.printedDate =  printedDate;
	}
	
	public String getprintedDate() {
		return this.printedDate;
	}
	
	public int getFoodID() {
		return foodID;
	}

	public void setFoodID(int foodID) {
		this.foodID = foodID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getFood() {
		return food;
	}

	public void setFood(String food) {
		this.food = food;
	}

	public String getUnopenedTag() {
		return unopenedTag;
	}

	public void setUnopenedTag(String unopenedTag) {
		this.unopenedTag = unopenedTag;
	}

	public String getOpenedTag() {
		return openedTag;
	}

	public void setOpenedTag(String openedTag) {
		this.openedTag = openedTag;
	}

	public String getUnopened_in_pantry() {
		return unopened_in_pantry;
	}

	public void setUnopened_in_pantry(String unopened_in_pantry) {
		this.unopened_in_pantry = unopened_in_pantry;
	}

	public String getUnopened_in_fridge() {
		return unopened_in_fridge;
	}

	public void setUnopened_in_fridge(String unopened_in_fridge) {
		this.unopened_in_fridge = unopened_in_fridge;
	}

	public String getUnopened_in_freezer() {
		return unopened_in_freezer;
	}

	public void setUnopened_in_freezer(String unopened_in_freezer) {
		this.unopened_in_freezer = unopened_in_freezer;
	}

	public String getOpened_in_pantry() {
		return opened_in_pantry;
	}

	public void setOpened_in_pantry(String opened_in_pantry) {
		this.opened_in_pantry = opened_in_pantry;
	}

	public String getOpened_in_fridge() {
		return opened_in_fridge;
	}

	public void setOpened_in_fridge(String opened_in_fridge) {
		this.opened_in_fridge = opened_in_fridge;
	}

	public String getOpened_in_freezer() {
		return opened_in_freezer;
	}

	public void setOpened_in_freezer(String opened_in_freezer) {
		this.opened_in_freezer = opened_in_freezer;
	}

	public String getPantry() {
		return pantry;
	}

	public void setPantry(String pantry) {
		this.pantry = pantry;
	}

	public String getFridge() {
		return fridge;
	}

	public void setFridge(String fridge) {
		this.fridge = fridge;
	}

	public String getFreezer() {
		return freezer;
	}

	public void setFreezer(String freezer) {
		this.freezer = freezer;
	}

	public String getCounter() {
		return counter;
	}

	public void setCounter(String counter) {
		this.counter = counter;
	}

	public String toString() {
		return "FoodFreshness [name=" + name + ", category=" + category + ", food=" + food + ", unopenedTag="
				+ unopenedTag + ", openedTag=" + openedTag + ", unopened_in_pantry=" + unopened_in_pantry
				+ ", unopened_in_fridge=" + unopened_in_fridge + ", unopened_in_freezer=" + unopened_in_freezer
				+ ", opened_in_pantry=" + opened_in_pantry + ", opened_in_fridge=" + opened_in_fridge
				+ ", opened_in_freezer=" + opened_in_freezer + ", Pantry=" + pantry + ", Fridge=" + fridge
				+ ", Freezer=" + freezer + ", counter=" + counter + ", getclass()=" + getClass() + ", hashcode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	

}
