package com.quest.studentmanagement.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String showHomePage() {
			
		return "home";
		
	}
	
	@GetMapping("/login")
	public String showLoginPage() {
		
		return "login";
		
	}

}
