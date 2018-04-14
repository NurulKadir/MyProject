package com.fyp.webapps;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fyp.webapps.dao.RegisterDAO;
import com.fyp.webapps.entity.Account;


@Controller
public class IndexController {
	
	@Autowired
	RegisterDAO regDao;
	Account account;
	
	
	//berjaya juga akhirnya yesssss yesss yessss
	@RequestMapping("/register")
	public String register(@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName
			, @RequestParam("email") String email , @RequestParam("password") String password ){
		
		account = new Account(firstName, lastName, email, password);
		//regDao.register(account);
		return "index.jsp";
	}
	
}
