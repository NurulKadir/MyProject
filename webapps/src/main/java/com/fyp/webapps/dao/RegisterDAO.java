package com.fyp.webapps.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class RegisterDAO {
	
	DataSource dataSource;
	
	@Autowired
	public void setDataSource(DataSource cookdataSource) {
		this.dataSource = cookdataSource;
	}

}
