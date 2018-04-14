package com.fyp.webapps.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;



@Repository
public class WasteDAO implements BaseDao{
	
	 DataSource dataSource;
	 ResultExtractor extractor = new ResultExtractor();

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public String getFoodPrice(String food) {
		
		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select price from FoodPrice where foodName = '" + food + "'", new ResultSetExtractor<String>() {
						
			@Override
			public String extractData(ResultSet rs) throws SQLException, DataAccessException {
				
				return extractor.getFoodPrice(rs);
			}
			
		});
	}
}