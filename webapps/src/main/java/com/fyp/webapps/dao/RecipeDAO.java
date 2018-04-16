package com.fyp.webapps.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.fyp.webapps.entity.Recipe;

public class RecipeDAO implements BaseDao{
	
		 DataSource dataSource;
		 ResultExtractor extractor = new ResultExtractor();

		@Autowired
		public void setDataSource(DataSource dataSource) {
			this.dataSource = dataSource;
		}
		
		
		public List<Recipe> getRecipes(String[] foods) throws SQLException{

			HashMap<String,Recipe> ids = new HashMap<String,Recipe>();
			List<Recipe> all = new ArrayList<>();
	        List<Recipe> allrecipes = new ArrayList<>();

			JdbcTemplate select = new JdbcTemplate(dataSource);
			
			for(String food : foods) {
				//System.out.println(food);
				List<Recipe> oneingrreclist = 
						select.query("select Recipe.recipeID, Recipe.recipeName, Recipe.description, Recipe.photoDir , Recipe.totalTime , RecipeNutrition.nutritionValue " + 
						"from Recipe " + 
						"inner join RecipeIngredientTag on Recipe.recipeID = RecipeIngredientTag.recipeID " + 
						"inner join RecipeNutrition on Recipe.recipeID = RecipeNutrition.recipeID " + 
						"where RecipeIngredientTag.ingredientTag = '" + food + "' " + 
						"and RecipeNutrition.nutritionID ='E'" ,
				 new ResultSetExtractor<List<Recipe>>() {
					
					@Override
					public List<Recipe> extractData(ResultSet rs) throws SQLException, DataAccessException {
						
						 return extractor.getRecipesBasedOnIngr(rs);
						
					}
					
				});
				all.addAll(oneingrreclist);
			}
			
			for(Recipe id : all) {
        			ids.put(id.getRecipeID(),id);
			}
			
			for(Entry<String, Recipe> abu : ids.entrySet()) {
	        		allrecipes.add(abu.getValue());
	        }
			return allrecipes;
		}
}