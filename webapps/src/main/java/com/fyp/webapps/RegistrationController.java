package com.fyp.webapps;

import java.beans.PropertyVetoException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fyp.webapps.entity.User;
import com.fyp.webapps.logic.UserService;

@Controller
public class RegistrationController {

	@RequestMapping("/register")
	public String register(@RequestParam("username") String username
			, @RequestParam("email") String email , @RequestParam("password") String password ) throws PropertyVetoException{
		
		User user = new User(username, password,email );
		UserService service = new UserService(Main.getDataSource());
		service.register(user);
		return "index.jsp";
	}

}
