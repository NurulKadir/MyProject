package com.fyp.webapps;

import java.beans.PropertyVetoException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fyp.webapps.entity.Login;
import com.fyp.webapps.entity.User;
import com.fyp.webapps.logic.UserService;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String register(@RequestParam("username") String username, @RequestParam("password") String password ) throws PropertyVetoException{

		//System.out.println(username);
		//System.out.println(password);
		String toReturn;
		Login usertologin = new Login(username,password);
		UserService service = new UserService(Main.getDataSource());
		User loginUser = service.validate(usertologin);
		//System.out.println(loginUser.getUsername());

		
		if( loginUser != null) {
			toReturn = "index.jsp";
		}
		else {
			toReturn = "loginRegister.jsp";
		}
		return toReturn;
		
	}


}
