package com.fyp.webapps.logic;

import java.beans.PropertyVetoException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;

import com.fyp.webapps.Main;
import com.fyp.webapps.dao.FreshDAO;
import com.fyp.webapps.entity.FoodFreshness;
import com.mchange.v2.c3p0.ComboPooledDataSource;


public class FoodShelfLife {
	
	 
	 SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
		

		public static void main(String[] args) throws ParseException, PropertyVetoException {
			FoodShelfLife f = new FoodShelfLife();
			FoodFreshness ff = new FoodFreshness();
			//f.calcBasedOnDate("03/03/2018",ff,"Coffeemate Powder",,,Main.getDataSource());
			//System.out.println(f.convertToDays(null,"7"));
			//String dateProcessed = f.checkTimeFoodProcessed("daysAgo","2");
			//System.out.println(dateProcessed);
			f.calcBasedOnDate("03/03/2018",ff,"Coffee-mate Powder", "unopened", "pantry",Main.getDataSource());
			
		}

		public void calcBasedOnDate(String pastPrintedDate,FoodFreshness ff, String foodName, String tag, String place, ComboPooledDataSource dataSource) throws ParseException {
			
		
		        FreshDAO dao = new FreshDAO();
		        dao.setDataSource(dataSource);
				
				String period = "";
				period = dao.getPeriod(foodName, place , tag);
				System.out.println(period);
				
				System.out.println("period: " + period);
				if(period.equals("0")) {
					ff.setEdibility("No Data Available");
					ff.setDaysleft("No Data Available");
					ff.setLastEdibleNoDataAlert("No Data Available");
					System.out.println("nodataavailable");
				}
				else{
					System.out.println("period======="+period);
					int periodToCheck = Integer.parseInt(period);
					Date lastEdibleDate = null;
					
					if(tag.equals("unopened")) {
						lastEdibleDate = this.getLastEdibleDate(pastPrintedDate,periodToCheck, ff);
					}
					else if(tag.equals("opened")) {
						Date date = format.parse(pastPrintedDate);
						lastEdibleDate = this.processedLastEdible(date , periodToCheck);
						System.out.println("fgjhfk.h");
					}
		
					ff.setLastEdibleDate(lastEdibleDate);
					this.isEdible(lastEdibleDate,ff);
					System.out.println(ff.getLastEdibleDate());
					System.out.println(ff.getDaysLeft());
					System.out.println(ff.getEdibility());	
				}
		}
	
		/*public String getPeriod(String foodName, String place, String taggg) throws SQLException{
	
			//String tag =  (taggg + "_in_" + place).toLowerCase();
			String period = "";
			String databaseURL = "jdbc:mysql://localhost:3306/FOODSHELFLIFE?user=root&password=ravenclaw83&useSSL=false";
			Connection conn = null;
	
			conn = DriverManager.getConnection(databaseURL);
			if (conn != null) {
				System.out.println("Connected to the database");
				String sql = "SELECT " + place + " FROM ShelfLife " + "WHERE name = '" + foodName + "'";
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery(sql);
	
				while(rs.next()){
					if(rs.getInt(1)==0) {
						period ="0";
					}
					else {
						period = rs.getString(1) ;
					}
				}
				ps.close();
			}
			return period; 	
		}*/
	
		
		public Date getLastEdibleDate(String printedDate,int period ,FoodFreshness ff) throws ParseException {

			Date parsedPrintedDate = format.parse(printedDate);
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(parsedPrintedDate);
			calendar.add(Calendar.DATE, period); //******brain*******minus number would decrement the days
			Date date = calendar.getTime();	
			return date;
		}
	
		
		public void isEdible(Date lastEdibleDate,FoodFreshness ff) {
			
			Date today = Calendar.getInstance().getTime();
	
			//equals() returns true if both the dates are equal
			if(this.dateIsToday(lastEdibleDate)){
				ff.setDaysleft("1 day (today)");
				ff.setEdibility("Edible");
				//System.out.println("Days left = 1 (today)");
				//System.out.println("Edible");
			}
			else if(lastEdibleDate.after(today)){
				ff.setDaysleft( calcDaysLeft(today,lastEdibleDate) + " days");
				ff.setEdibility("Edible");
				//System.out.println("Days left =" + calcDaysLeft(today,lastEdibleDate));
				//System.out.println("Edible");
			}
			//before() will return true if and only if date1 is before date2
			else if(lastEdibleDate.before(today)){
				ff.setDaysleft("0 day");
				ff.setEdibility("Not Edible");
				//System.out.println("Days left = 0");
				//System.out.println("Not Edible");
			}
		}
	
		
		public boolean dateIsToday(Date lastEdibleDate) {
			Calendar today = Calendar.getInstance();
			Calendar specifiedDate  = Calendar.getInstance();
			specifiedDate.setTime(lastEdibleDate);
	
			return today.get(Calendar.DAY_OF_MONTH) == specifiedDate.get(Calendar.DAY_OF_MONTH)
					&&  today.get(Calendar.MONTH) == specifiedDate.get(Calendar.MONTH)
					&&  today.get(Calendar.YEAR) == specifiedDate.get(Calendar.YEAR);
		}
	
		
		public long calcDaysLeft(Date today, Date lastEdibleDate) {
			return ChronoUnit.DAYS.between(today.toInstant(), lastEdibleDate.toInstant())+2;//******brain*******
		}
		
		public int convertWeekToDays(String weeks) {
			
			int weekOrMonth = Integer.parseInt(weeks);
			int days = weekOrMonth  * 7;
			return days;
		}
		
		public String checkTimeFoodProcessed(String name,String toSubtract) {
			
			Calendar calendar = Calendar.getInstance();
			String date;
			int time;
			time = Integer.parseInt(toSubtract);
			
			if(name.equals("daysAgo")) {			
				calendar.add(Calendar.DATE, -time); //******brain*******minus number would decrement the days
			}
			else if (name.equals("weeksAgo")) {
				System.out.println("benar");
				calendar.add(Calendar.WEEK_OF_YEAR, -time);
			}
			else if(name.equals("monthsAgo")) {
				calendar.add(Calendar.MONTH, -time); //******brain*******minus number would decrement the days

			}
			
			date = format.format(calendar.getTime());
			return date;
		}
		
		public Date processedLastEdible(Date dateProcessed, int period) {
			Calendar cal = Calendar.getInstance();
			cal.setTime(dateProcessed);
			cal.add(Calendar.DATE, period);
			Date date = cal.getTime();	
			return date;
		}
}

/*
 * SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			String parsedTodayDate = format.format(today);
			System.out.println(parsedTodayDate);
			
			*public void  calcFreshness(String printedDate, int period) throws ParseException {
			//SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			//Date today = Calendar.getInstance().getTime();
			//System.out.println("Today's date = "+ format.format(today));
			
		}
			*
			*/
