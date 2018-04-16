package com.fyp.webapps.logic;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import com.fyp.webapps.dao.RecipeDAO;
import com.fyp.webapps.entity.Recipe;

public class RecipeFinder {
	
    RecipeDAO dao ;
	
	public RecipeFinder(DataSource dataSource) {
		dao = new RecipeDAO();
		dao.setDataSource(dataSource);
	}

	public List<Recipe> getTheRecipes(String chosenfoodList) throws SQLException {
		
		String[] result = chosenfoodList.split(",");
		
        List<Recipe> recipeIDS = dao.getRecipes(result);
       
	    return recipeIDS;
	}
}