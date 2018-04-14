package com.fyp.webapps.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

@Repository
public class GainMaintainLosePhotoDAO implements BaseDao{
	
	 DataSource dataSource;
	 ResultExtractor extractor = new ResultExtractor();

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<String> getDirectory(String gainmaintainlose) {
		
		String photoTagtOFind = "";
		
		if(gainmaintainlose.equals("lose")) {
			photoTagtOFind = "lose";
		}
		else if(gainmaintainlose.equals("maintain")) {
			photoTagtOFind = "maintain";
		}
		else if (gainmaintainlose.equals("gain")) {
			photoTagtOFind = "gain";
		}
		
		JdbcTemplate select = new JdbcTemplate(dataSource);
		return select.query("select directory from GainMaintainLosePhotoDirectory where tag = '" + photoTagtOFind + "'", new ResultSetExtractor<List<String>>() {
						
			@Override
			public List<String> extractData(ResultSet rs) throws SQLException, DataAccessException {
				
				return extractor.getDirectory(rs);
			}
			
		});
	}

	
}