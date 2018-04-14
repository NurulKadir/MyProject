package com.fyp.webapps.logic;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import javax.sql.DataSource;

import com.fyp.webapps.dao.RealRecipeDAO;
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

	public HashMap<String,String> getIngredients(String recipeID) throws SQLException {

		HashMap<String,String> ingredients = dao.selectIngredients(recipeID);
		return ingredients;
	}
	
	public HashMap<String,String> getNutritions(String recipeID) throws SQLException {

		HashMap<String,String> nutritions = dao.selectNutrition(recipeID);
		return nutritions;
	}
	
	public List<String> getIngredientList(String recipeID) throws SQLException {

		List<String> ingrs = dao.selectIngTag(recipeID);
		return ingrs;
	}
}
