package com.fyp.webapps.logic;

import javax.sql.DataSource;

import com.fyp.webapps.dao.UserDAO;
import com.fyp.webapps.entity.Login;
import com.fyp.webapps.entity.User;

public class UserService {

	UserDAO dao;
	
	public UserService(DataSource dataSource) {
		dao = new UserDAO();
		dao.setDataSource(dataSource);
	}

	public void register(User user) {
		dao.register(user);
	}

	public User validate(Login login) {
		User a = dao.validateUser(login);
		return a;
	}
}
