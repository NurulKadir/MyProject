package com.fyp.webapps.entity;

public class UserInfo {
	
	String height , weight , age , gender , lifestyle , dailyMealConsumed , carbPreference , proteinPreference , fatsPreference , 
	gainMaintainLose ,toLose , toGain;


	public UserInfo(String height, String weight, String age, String gender, String lifestyle, String dailyMealConsumed,
			String carbPreference, String proteinPreference, String fatsPreference , String gainMaintainLose , String toLose,
			String toGain) {
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.gender = gender;
		this.lifestyle = lifestyle;
		this.dailyMealConsumed = dailyMealConsumed;
		this.carbPreference = carbPreference;
		this.proteinPreference = proteinPreference;
		this.fatsPreference = fatsPreference;
		this.gainMaintainLose = gainMaintainLose;
		this.toLose = toLose;
		this.toGain = toGain;
	}
	
	
	public int getHeight() {
		return Integer.parseInt(height);
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public int getWeight() {
		return Integer.parseInt(weight);
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public int getAge() {
		return Integer.parseInt(age);
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLifestyle() {
		return lifestyle;
	}

	public void setLifestyle(String lifestyle) {
		this.lifestyle = lifestyle;
	}

	public double getCarbPreference() {
		return Double.parseDouble(carbPreference);
	}

	public void setCarbPreference(String carbPreference) {
		this.carbPreference = carbPreference;
	}

	public double getProteinPreference() {
		return Double.parseDouble(proteinPreference);
	}

	public void setProteinPreference(String proteinPreference) {
		this.proteinPreference = proteinPreference;
	}

	public double getFatsPreference() {
		return Double.parseDouble(fatsPreference);
	}

	public void setFatsPreference(String fatsPreference) {
		this.fatsPreference = fatsPreference;
	}
	
	public int getToLose() {
		return Integer.parseInt(toLose);
	}
	
	public int getToGain() {
		return Integer.parseInt(toGain);
	}

	public void setToLose(String toLose) {
			this.toLose = toLose;
	}
	public void setToGain(String toGain) {
		this.toGain = toGain;
	}
	
	public String getGainMaintainLose() {
		return gainMaintainLose;
	}


	public void setGainMaintainLose(String gainMaintainLose) {
		this.gainMaintainLose = gainMaintainLose;
	}


	public String toString() {
		return "UserInfo [height=" + height + ", weight=" + weight + ", age=" + age + ", gender=" + gender
				+ ", lifestyle=" + lifestyle + ", dailyMealConsumed=" + dailyMealConsumed + ", carbPreference="
				+ carbPreference + ", proteinPreference=" + proteinPreference + ", fatsPreference=" + fatsPreference
				+ "]";
	}

	public void setDailyMealConsumed(String dailyMealConsumed) {
		this.dailyMealConsumed = dailyMealConsumed;
	}
	
	public int getDailyMealConsumed() {
		return Integer.parseInt(dailyMealConsumed);
	}

}
