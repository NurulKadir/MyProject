package com.fyp.webapps.logic;

import java.text.DecimalFormat;

import com.fyp.webapps.entity.Requirement;
import com.fyp.webapps.entity.UserInfo;

public class RequirementCalculator {
	
	Requirement requirement;

	public RequirementCalculator (Requirement requirement) {
		this.requirement = requirement;
	}
	
	public Requirement getReq() {
		return requirement;
	}
	
	static DecimalFormat df = new DecimalFormat("0.00");
	
	/*public static void main(String[] args) {
		
		RequirementCalculator calc = new RequirementCalculator(new Requirement());
		UserInfo user = new UserInfo("160", "50", "22", "women", "sedantary", "3", "30", "30", "40" , "gain", "2");
		calc.calcRequirement(user);
		Requirement r = calc.getReq();
		System.out.println("BMR = " + df.format(r.getBMR()));
		System.out.println("fatsPerMeal = " + df.format(r.getFatsPerMeal()));
		System.out.println("proteinPerMeal = " + df.format(r.getProteinPerMeal()));
		System.out.println("carbPerMeal = " + df.format(r.getCarbPerMeal()));
		System.out.println("calPerMeal = " + df.format(r.getCalPerMeal()));
		System.out.println("fatsPerDay = " + df.format(r.getFatsPerDay()));
		System.out.println("proteinPerDay = " + df.format(r.getProteinPerDay()));
		System.out.println("carbPerDay = " + df.format(r.getCarbPerDay()));
		System.out.println("calPerDay = " + df.format(r.getCalPerDay()));
	}*/
	
	
	
	
	public void calcRequirement(UserInfo user) {
		
		int height = user.getHeight();
		int weight = user.getWeight();
		int age = user.getAge();
		String gender = user.getGender();
		String activity = user.getLifestyle();
		String gainMaintainLose = user.getGainMaintainLose();
		double carbsPrefered = user.getCarbPreference();
		double proteinPrefered = user.getProteinPreference();
		double fatsPrefered = user.getFatsPreference();
		int mealTime = user.getDailyMealConsumed();
		
		this.calcBMR(weight, height, age, gender);
		double calorieNeeded = this.calcCalorieNeeded(activity, requirement.getBMR());
		this.getDailyCalorieToAlter(gainMaintainLose, calorieNeeded , user);
		this.getPerDaySuggestion(requirement.getCalPerDay(), carbsPrefered , proteinPrefered , fatsPrefered);
		this.getPerMealSuggestion(requirement.getCalPerDay(), requirement.getCarbPerDay(),requirement.getProteinPerDay(), requirement.getFatsPerDay(), mealTime);
	}
	
	
	
	public double calcBMR(int weight , int height , int age , String gender) {
		
		double BMR = 0.00;
		
		if(gender.equals("female")) {
			BMR = (10 * weight) + (6.25 * height) - (5 * age) - 161;
		}
		else if (gender.equals("male")) {
			BMR = (10 * weight) + (6.25 * height) - (5 * age) +5;
		}
		requirement.setBMR(BMR);
		return BMR;
	}
	
	
	public double calcCalorieNeeded(String activity,double BMR) {
		
		double calorieNeeded = 0;
		
		if(activity.equals("sedantary")) {
			calorieNeeded = BMR * 1.2;
		}
		else if(activity.equals("lightlyActive")) {
			calorieNeeded = BMR * 1.375;
		}
		else if(activity.equals("moderatelyActive")) {
			calorieNeeded = BMR * 1.550;	
		}
		else if(activity.equals("veryActive")) {
			calorieNeeded = BMR * 1.725;
		}
		else if(activity.equals("extraActive")) {
			calorieNeeded = BMR * 1.9;
		}
		return calorieNeeded;
	}
	
	
	public void getDailyCalorieToAlter(String loseOrGain , double calorieNeeded , UserInfo user) {
		
		double totalCal;
		double dailyToAlter = 0;
		
		if(loseOrGain.equals("lose")) {
			totalCal = (calorieNeeded * 7 ) - getWeeklyCaloriesToAlter(user.getToLose()) ;
			dailyToAlter = totalCal/7;
			requirement.setCalPerDay(dailyToAlter);
		}
		else if(loseOrGain.equals("gain")) {
			totalCal = (calorieNeeded * 7 ) + getWeeklyCaloriesToAlter(user.getToGain()) ;
			dailyToAlter = totalCal/7;
			requirement.setCalPerDay(dailyToAlter);
		}
		else if(loseOrGain.equals("maintain")) {
			requirement.setCalPerDay(calorieNeeded);
		}
	}
	
	public int getWeeklyCaloriesToAlter(int poundToAlter) {
		return poundToAlter * 3500;
	}
	
	
	public void getPerDaySuggestion(double caloriesPerDay , double carbsPrefered , double proteinPrefered , double fatsPrefered) {
		double carbsPerDay = ( (carbsPrefered / 100) * caloriesPerDay ) / 4 ;
		double proteinPerDay = ( (proteinPrefered / 100) * caloriesPerDay ) / 4 ;
		double fatsPerDay = ( (fatsPrefered / 100) * caloriesPerDay ) / 9 ;
		requirement.setCarbPerDay(carbsPerDay);
		requirement.setProteinPerDay(proteinPerDay);
		requirement.setFatsPerDay(fatsPerDay);

	}
	
	public void getPerMealSuggestion(double dailyCal, double dailyCarbs , double dailyProtein , double dailyFats , int mealTime ) {
		
		double cal = dailyCal / 3;
		double carb = dailyCarbs / 3;
		double protein = dailyProtein / 3;
		double fats = dailyFats / 3;
		requirement.setCalPerMeal(cal);
		requirement.setCarbPerMeal(carb);
		requirement.setProteinPerMeal(protein);
		requirement.setFatsPerMeal(fats);
	}
}