package com.fyp.webapps;

import java.awt.image.BufferedImage;
import java.beans.PropertyVetoException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

import com.fyp.webapps.dao.RealRecipeDAO;
import com.fyp.webapps.dao.UserDAO;
import com.fyp.webapps.entity.Login;
import com.fyp.webapps.entity.Nutrition;
//import com.fyp.webapps.dao.RecipeDAO;
import com.fyp.webapps.entity.Recipe;
import com.fyp.webapps.entity.User;
import com.fyp.webapps.logic.RecipeFinder;
import com.mchange.v2.c3p0.ComboPooledDataSource;

public final class Main {
    

	public static ComboPooledDataSource getDataSource() throws PropertyVetoException{
		
				ComboPooledDataSource cpds = new ComboPooledDataSource();
				
				cpds.setDriverClass("com.mysql.cj.jdbc.Driver");
				cpds.setJdbcUrl("jdbc:mysql://localhost:3306/MYRECIPE?useSSL=false");
				cpds.setUser("root");
				cpds.setPassword("ravenclaw83");
		
				// Optional Settings
				cpds.setInitialPoolSize(5);
				cpds.setMinPoolSize(3);
				cpds.setAcquireIncrement(5);
				cpds.setMaxPoolSize(10);
				cpds.setMaxStatements(100);
		
				return cpds;
	}
	
	
    public static void main(String[] args) throws PropertyVetoException, SQLException, IOException {
    	   
    	UserDAO u = new UserDAO();
    	u.setDataSource(getDataSource());
    	User a = u.validateUser(new Login("kkk", "nnn"));
    System.out.println(a.getUsername() + a.getEmail() + a.getPassword());
    	
    	
    	/*WasteDAO  W = new WasteDAO();
     	W.setDataSource(getDataSource());
     	System.out.println(W.getFoodPrice("Lamb Steaks").toString());
     	

     	FreshDAO  F = new FreshDAO();
     	F.setDataSource(getDataSource());
     	System.out.println(F.getPeriod("Coffee-mate Powder", "pantry", "unopened"));
     	
     	
     	RealRecipeDAO rr = new RealRecipeDAO();
     	rr.setDataSource(getDataSource());
     	rr.selectNutrition("1");
     	//Recipe rec = rr.selectRecipe("1");
     	
     	for(Nutrition s : rr.selectNutrition("1")) {
     		System.out.println("nutr = "+ s.getNutritionName() + " " + s.getNutritionValue() + " "+s.getUnit());
     	}
     	
     	
     	/*List<String> steps = rr.selectMethod(Integer.toString(1));
     	for(String s : steps) {
     		System.out.println("step = "+s);
     	}
     	
     	RecipeDAO R = new RecipeDAO();
     	R.setDataSource(getDataSource());
     	
		
 		List<Recipe> allrecipes = R.getRecipes(new String[] {"almond","apricot"});
         for(Recipe recipe : allrecipes) {
     		System.out.println(recipe.getRecipeName() +" "+ recipe.getTotalTime());
     }
         RecipeFinder find = new RecipeFinder(getDataSource());
         List<Recipe> allrec= find.getTheRecipes("almond,apricot");
         for(Recipe recipe : allrec) {
      		System.out.println(recipe.getRecipeName() +" "+ recipe.getTotalTime() + " "+recipe.getTotalCalories());
      }
    	
    		/*GainMaintainLosePhotoDAO gmlpd = new GainMaintainLosePhotoDAO();
    		gmlpd.setDataSource(getDataSource());
     		List<String> dirs = gmlpd.getDirectory("lose");
     		for(String s : dirs) {
         		System.out.println("dir = "+s);
         	JFrame frame=new JFrame();
         	
         	InputStream stream = Main.class.getResourceAsStream("/resources/images/1.jpg");
         	BufferedImage img= ImageIO.read( stream );
        		//BufferedImage img = ImageIO.read(Main.class.getResource("FYP/src/main/webapp/resources/images/1.jpg"));
        		ImageIcon icon = new ImageIcon(img);
        		JLabel label = new JLabel(icon);
        		frame.add(label);  
        		frame.setExtendedState( frame.getExtendedState()|JFrame.MAXIMIZED_BOTH );
        		frame.setVisible(true);
         	//}*/
     	
     	
     }

}