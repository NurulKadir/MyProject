package com.fyp.webapps.logic;

import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.HashMap;
import java.util.List;

import javax.sql.DataSource;

import com.fyp.webapps.dao.RealRecipeDAO;
import com.fyp.webapps.entity.Ingredient;
import com.fyp.webapps.entity.Nutrition;
import com.fyp.webapps.entity.Recipe;

public class SelectedRecipeFinder {
	
	RealRecipeDAO dao ;
	
	public SelectedRecipeFinder(DataSource dataSource) {
		dao = new RealRecipeDAO();
		dao.setDataSource(dataSource);
	}

	public Recipe getSelectedRecipe(String recipeID) throws SQLException {

		Recipe selected = dao.selectRecipe(recipeID);
		return selected;
	}

	public List<String> getSelectedRecipesMeal(String recipeID) throws SQLException {

		List<String> mealTypes = dao.selectRecipeMeal(recipeID);
		return mealTypes;
	}

	public List<String> getMethods(String recipeID) throws SQLException {

		List<String> steps = dao.selectMethod(recipeID);
		return steps;
	}

	public List<Ingredient> getIngredients(String recipeID) throws SQLException {

		List<Ingredient> ingredients = dao.selectIngredients(recipeID);
		return ingredients;
	}
	
	public ArrayList<Nutrition> getNutritions(String recipeID) throws SQLException {

		ArrayList<Nutrition> nutritions = dao.selectNutrition(recipeID);
		return nutritions;
	}
	
	public List<String> getIngredientList(String recipeID) throws SQLException {

		List<String> ingrs = dao.selectIngTag(recipeID);
		return ingrs;
	}
}
