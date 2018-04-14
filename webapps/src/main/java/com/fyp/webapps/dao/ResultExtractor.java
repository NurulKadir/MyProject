package com.fyp.webapps.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.fyp.webapps.entity.Recipe;


public class ResultExtractor  {
	
	
	public List<Recipe> getRecipesBasedOnIngr(ResultSet rs){
		
		List<Recipe> list = new ArrayList<>();
		

		try {
			while(rs.next()){
				Recipe recipes = new Recipe();
				String ID =rs.getString("recipeID");
				//System.out.println("id = "+ID);
				String name = rs.getString("recipeName");
				//System.out.println("name = "+name);
				String description = rs.getString("description");
				//System.out.println("description = " + description);
				String photo = rs.getString("photoDir");
				//System.out.println("description = " + photo);
				recipes.setRecipeID(ID);
				recipes.setRecipeName(name);
				recipes.setDescription(description);
				recipes.setPhotoDir(photo);
				list.add(recipes);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public String getFoodPrice(ResultSet rs) {
		String price = "";

			try {
				while (rs.next())
				{
					price = rs.getString("price");
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return price;
	}
	
	public String getShelfLife(ResultSet rs) {
		String period = "";
		try {
			while(rs.next()){
				if(rs.getInt(1)==0) {
					period ="0";
				}
				else {
					period = rs.getString(1) ;
					System.out.println("ppp = "+period);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return period;	
	}

	
	public Recipe getSelectedRecipe(ResultSet rs) {
		
		Recipe recipe = null;
		try {
			while(rs.next()){
				String recipeName = rs.getString("recipeName");
				String description = rs.getString("description");
				String additionalInfo = rs.getString("additionalInfo");
				String prepTime = rs.getString("prepTime");
				String cookingTime = rs.getString("cookingTime");
				String totalTime = rs.getString("totalTime");
				String serves = rs.getString("serves");
				String complexity = rs.getString("complexity");
				String cuisine = rs.getString("cuisine");
				String category = rs.getString("category");
				String restriction = rs.getString("restriction");
				String photoDir = rs.getString("photoDir");
				String nutDesc = rs.getString("nutritionDescription");
				
				recipe = new Recipe(recipeName,  description,  additionalInfo,  prepTime, cookingTime,  totalTime,  serves,  complexity,
						 cuisine,  category,restriction, photoDir , nutDesc);
				recipe.setDescription(description);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return recipe;
	}
	
	public List<String> getSelectedMethod(ResultSet rs) {
		List<String> steps = new ArrayList<String>();
		String step = "";
		String recipeID ="";
		try {
			while(rs.next()) {
				step = rs.getString("method");
				recipeID =  rs.getString("recipeID");
				System.out.println(recipeID);
				steps.add(step);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Recipe r = new Recipe();
		r.setRecipeID(recipeID);
		r.setMethod(steps);
		return steps;
	}
	
	public List<String> getSelectedRecipeMeal(ResultSet rs) {
		List<String> mealTypes = new ArrayList<String>();
		String recipeID="";
		String meal ="";
		try {
			while(rs.next()){
				meal = rs.getString("mealName");
				recipeID = rs.getString("recipeID");
				mealTypes.add(meal);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Recipe r = new Recipe();
		r.setRecipeID(recipeID);
		r.setMethod(mealTypes);
		return mealTypes;
	}

	

	public List<String> getIngredientTags(ResultSet rs) {
		
		List<String> inglist = new ArrayList<String>();
		try {
			while(rs.next()){
				String ingredientTag = rs.getString("ingredientTag");
				inglist.add(ingredientTag);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return inglist;
	}
	
	
	public HashMap<String, String> getSelectedNutrition(ResultSet rs) {
		
		HashMap<String,String> nutritions = new HashMap<String,String>();
		HashMap<String,String> nutdesc = new HashMap<String,String>();
		String recipeID = "";
		
		try {
			while(rs.next()){
				String nutname = rs.getString("nutritionName");
				String nutQuan = rs.getString("nutritionValue");
				String nutritionDesc = rs.getString("nutritionDesc");
				 rs.getString("recipeID");
				nutdesc.put(nutname, nutritionDesc);
				nutritions.put(nutname, nutQuan);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Recipe r = new Recipe();
		r.setRecipeID(recipeID);
		r.setNutritionList(nutritions);
		r.setNutritionDes(nutdesc);
		return nutritions;
	}

	public HashMap<String, String> getSelectedIngredients(ResultSet rs) {
	    
		HashMap<String, String> quantityIngredient =  new HashMap<String, String>();
	    String recipeID = "";
		try {
			while(rs.next()) {
				String quantity = rs.getString("quantity");
				String ingredient = rs.getString("realIngredient");
				recipeID = rs.getString("recipeID");
				quantityIngredient.put(quantity, ingredient);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Recipe r = new Recipe();
		r.setRecipeID(recipeID);
		r.setIngredients(quantityIngredient);
		return quantityIngredient;
	}

	public List<String> getDirectory(ResultSet rs) {
		List<String> dirlist = new ArrayList<String>();
		try {
			while(rs.next()) {
				String dir = rs.getString("directory");
				dirlist.add(dir);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dirlist;
	}
}