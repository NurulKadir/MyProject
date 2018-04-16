package com.fyp.webapps.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import javax.sql.DataSource;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import com.fyp.webapps.entity.Ingredient;
import com.fyp.webapps.entity.Nutrition;
import com.fyp.webapps.entity.Recipe;


@Repository
public class RealRecipeDAO implements BaseDao{
	
	private DataSource dataSource;
	ResultExtractor extractor = new ResultExtractor();

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public Recipe selectRecipe(String recipeID) throws SQLException{

		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select * from Recipe where recipeID='" + recipeID + "'", new ResultSetExtractor<Recipe>() {
			
			public Recipe extractData(ResultSet rs)
					throws SQLException, DataAccessException {
				return extractor.getSelectedRecipe(rs);
			}
		});
	}	
	
	public List<String> selectMethod(String recipeID) throws SQLException{
		
		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select Recipe.recipeID, Method.method from Recipe join RecipeMethod on Recipe.recipeID = RecipeMethod.recipeID join Method on RecipeMethod.methodID  = Method.methodID where Recipe.recipeID= '" + recipeID + "'",
				new ResultSetExtractor<List<String>>() {

					@Override
					public List<String> extractData(ResultSet rs) throws SQLException, DataAccessException {
						return extractor.getSelectedMethod(rs);
					}});
			
	}
	
	public List<String> selectRecipeMeal(String recipeID) throws SQLException{

		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select Recipe.recipeID, Meal.mealName from Recipe join RecipeMeal on  RecipeMeal.recipeID = Recipe.recipeID join Meal on Meal.mealID = RecipeMeal.mealID where Recipe.recipeID = '" + recipeID + "'",
				new ResultSetExtractor<List<String>>() {
			
			public List<String> extractData(ResultSet rs)
					throws SQLException, DataAccessException {
						return extractor.getSelectedRecipeMeal(rs);}});
	}	
	
	public List<String> selectIngTag(String recipeID) throws SQLException{

		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select RecipeIngredientTag.ingredientTag from Recipe join RecipeIngredientTag on Recipe.recipeID = RecipeIngredientTag.recipeID where Recipe.recipeID='" + recipeID + "'",
				new ResultSetExtractor<List<String>>() {

					@Override
					public List<String> extractData(ResultSet rs) throws SQLException, DataAccessException {
						return extractor.getIngredientTags(rs);
						
					}});
	}	
	
	public ArrayList<Nutrition> selectNutrition(String recipeID) throws SQLException{

		//System.out.println(recipeID);
		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select Recipe.recipeID, Nutrition.nutritionName, Nutrition.nutritionDesc, RecipeNutrition.nutritionValue, RecipeNutrition.unit" + 
				"			from Recipe" + 
				"			join RecipeNutrition on Recipe.recipeID = RecipeNutrition.recipeID "+ 
				"			join Nutrition on Nutrition.nutritionID = RecipeNutrition.nutritionID" + 
				"			where Recipe.recipeID = '" + recipeID + "'",new ResultSetExtractor<ArrayList<Nutrition>>() {

					@Override
					public ArrayList<Nutrition> extractData(ResultSet rs) throws SQLException, DataAccessException {
						ArrayList<Nutrition> a =  extractor.getSelectedNutrition(rs);	
						for(Nutrition n : a) {
							System.out.println(n.getNutritionName() + " " + n.getNutritionValue() + " " + n.getUnit());
						}
						return a;
						
					}
		});
	}
	
	public List<Ingredient> selectIngredients(String recipeID) throws SQLException{

		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select Recipe.recipeID, RecipeIngredients.quantity, RecipeIngredients.unit, RecipeIngredients.realIngredient" + 
				"			from Recipe" + 
				"			join RecipeIngredients on Recipe.recipeID = RecipeIngredients.recipeID" + 
				"			where Recipe.recipeID = '" + recipeID + "'",new ResultSetExtractor<List<Ingredient>>(){

					@Override
					public List<Ingredient> extractData(ResultSet rs) throws SQLException, DataAccessException {
						return extractor.getSelectedIngredients(rs);
					}});

	}	
}