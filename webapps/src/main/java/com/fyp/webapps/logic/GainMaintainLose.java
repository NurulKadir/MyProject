package com.fyp.webapps.logic;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import com.fyp.webapps.dao.GainMaintainLosePhotoDAO;
import com.mchange.v2.c3p0.ComboPooledDataSource;


public class GainMaintainLose {
	
	DataSource ds;

	public GainMaintainLose(ComboPooledDataSource dataSource) {
		this.ds = dataSource;
	}

	public List<String> getPhotoDirectory(String gainmaintainlose) throws SQLException {

		GainMaintainLosePhotoDAO dao = new GainMaintainLosePhotoDAO();
		dao.setDataSource(ds);

		List<String> photoDirs = dao.getDirectory(gainmaintainlose);

		return photoDirs;
	}

}
