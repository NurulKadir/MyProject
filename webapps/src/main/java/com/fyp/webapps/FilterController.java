package com.fyp.webapps;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FilterController {
	
	@RequestMapping("/filter")
	public ModelAndView filter(@RequestParam("chosenfood") String chosenfood , @RequestParam("filter") String filterby) {
		
		System.out.println("chosenfoods = " + chosenfood + " "+ filterby);
		
		
		return null;
		
	}

}
