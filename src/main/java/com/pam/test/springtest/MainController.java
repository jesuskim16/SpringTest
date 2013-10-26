package com.pam.test.springtest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/pam")
public class MainController {
	
	private final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "/test" ,  method = RequestMethod.GET)
	@ResponseBody
	public  String mainController(){
		
		String returnValue = "Hello World!!!";
		logger.info("{}" , returnValue);
		
		return returnValue;
	}
	
}
