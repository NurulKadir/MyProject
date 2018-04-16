package com.fyp.webapps.dao;

import java.sql.ResultSet;
import java.sql.SQLException;


import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.fyp.webapps.entity.Login;
import com.fyp.webapps.entity.User;

public class UserDAO implements BaseDao{


	DataSource dataSource;
	ResultExtractor extractor = new ResultExtractor();

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}


	public void register(User user) {

		String sql = "insert into users values(?,?,?)";

		JdbcTemplate template = new JdbcTemplate(dataSource);

		template.update(sql, new Object[] { user.getUsername(), user.getPassword(), user.getEmail()});
	}



	public User validateUser(Login login) {

		
		JdbcTemplate template = new JdbcTemplate(dataSource);
        
		return template.query("select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
		+ "'", new ResultSetExtractor<User>() {

			public User extractData(ResultSet rs) throws SQLException, DataAccessException {
				return extractor.getThisUser(rs);
			}
			
		});
		
	}
}