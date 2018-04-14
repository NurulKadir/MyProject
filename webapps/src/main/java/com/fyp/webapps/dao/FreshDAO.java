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
	public class FreshDAO implements BaseDao{
		
		DataSource dataSource;
		ResultExtractor extractor = new ResultExtractor();

		
		@Autowired
		public void setDataSource(DataSource cookdataSource) {
			this.dataSource = cookdataSource;
		}
		

		public String getPeriod(String foodName, String place, String taggg){
			 
			 String tag =  (taggg + "_in_" + place).toLowerCase();
			 JdbcTemplate select = new JdbcTemplate(dataSource);
		     return select.query("select "+tag+" from ShelfLife where name = '" + foodName + "'", new ResultSetExtractor<String>() {

				@Override
				public String extractData(ResultSet rs) throws SQLException, DataAccessException {
					return extractor.getShelfLife(rs);
				}
		    	 });
		}
}