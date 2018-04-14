package com.fyp.webapps.logic;

//import java.beans.PropertyVetoException;
import java.math.BigDecimal;

import javax.sql.DataSource;

import com.fyp.webapps.dao.WasteDAO;
import com.fyp.webapps.entity.WastedFood;

public class WasteTracker{
	
	/*public static void main(String[] args) throws PropertyVetoException {

		WasteTracker tr = new WasteTracker();
		WastedFood tracker = new WastedFood();
		BigDecimal bd = tr.calcWaste(Integer.toString(70), "Lamb Steaks", tracker, Main.getDataSource());
		
		System.out.println(bd.toString());
	}*/
	
	
	public BigDecimal calcWaste(String percentage , String food , WastedFood tracker, DataSource dataSource) {
			

			WasteDAO dao = new WasteDAO();
			dao.setDataSource(dataSource);
		    String priceToConvert = dao.getFoodPrice(food);
		   
			BigDecimal price = new BigDecimal(priceToConvert);	
			BigDecimal percent = new BigDecimal(percentage);
		 	BigDecimal hundred = new BigDecimal(100);
		    BigDecimal percentageFactor =percent.divide(hundred,2, BigDecimal.ROUND_HALF_UP);
		    BigDecimal value = price.multiply(percentageFactor);
			BigDecimal db = value.setScale(2, BigDecimal.ROUND_HALF_UP);
			tracker.setWaste(db);
		    return db;
	}
}