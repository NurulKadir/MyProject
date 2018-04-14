package com.fyp.webapps.logic;

import java.sql.SQLException;
import java.util.List;

import com.fyp.webapps.dao.RecipeDAO;
import com.fyp.webapps.entity.Recipe;

public class RecipeFinder {
	
	
	public List<Recipe> getTheRecipes(String chosenfoodList) throws SQLException {
		
		String[] result = chosenfoodList.split(",");

		RecipeDAO dao = new RecipeDAO();
		
        List<Recipe> recipeIDS = dao.getRecipes(result);
       
	    return recipeIDS;
	}
}