package com.fyp.webapps.entity;

public class Requirement {
	
	double fatsPerMeal;
	double proteinPerMeal;
	double carbPerMeal;
	double calPerMeal;
	double fatsPerDay;
	double proteinPerDay;
	double carbPerDay;
	double calPerDay;
	double BMI ;
	double BMR;
	
	public double getCarbPerMeal() {
		return carbPerMeal;
	}

	public void setCarbPerMeal(double carb) {
		this.carbPerMeal = carb;
	}

	public double getProteinPerMeal() {
		return proteinPerMeal;
	}

	public void setProteinPerMeal(double carb) {
		this.proteinPerMeal = carb;
	}

	public double getFatsPerMeal() {
		return fatsPerMeal;
	}
	
	public void setFatsPerMeal(double fats) {
		this.fatsPerMeal = fats;
	}
	
	public double getCalPerMeal() {
		return calPerMeal;
	}

	public void setCalPerMeal(double cal) {
		this.calPerMeal = cal;
	}
	
	public double getCarbPerDay() {
		return (carbPerDay);
	}

	public void setCarbPerDay(double carbPerDay) {
		this.carbPerDay = carbPerDay;
	}

	public double getProteinPerDay() {
		return proteinPerDay;
	}

	public void setProteinPerDay(double proteinPerDay2) {
		this.proteinPerDay = proteinPerDay2;
	}

	public double getFatsPerDay() {
		return fatsPerDay;
	}

	public void setFatsPerDay(double fatsPerDay2) {
		this.fatsPerDay = fatsPerDay2;
	}
	
	public double getCalPerDay() {
		return calPerDay;
	}

	public void setCalPerDay(double dailyToAlter) {
		this.calPerDay = dailyToAlter;
	}

	public double getBMI() {
		return BMI;
	}

	public void setBMI(double bMI) {
		BMI = bMI;
	}
	
	public double getBMR() {
		return BMR;
	}

	public void setBMR(double bmr) {
		BMR = bmr;
	}
}