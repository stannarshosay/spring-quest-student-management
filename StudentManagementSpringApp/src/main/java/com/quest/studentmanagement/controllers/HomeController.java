package com.quest.studentmanagement.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quest.studentmanagement.models.User;
import com.quest.studentmanagement.repositories.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private UserRepository userRepo;
	
	@GetMapping("/")
	public String showHomePage() {
			
		return "home";
		
	}
	
	@PostMapping("/login")
	public String login(@RequestParam String username,@RequestParam String password, HttpSession session) {
		
		User user = userRepo.findByUsernameAndPassword(username, password);
		
		if(user == null) {
			
			session.invalidate();
						
			return "redirect:/error/Incorrect Credentials";
		}
		
		session.setAttribute("username", username);
		
		return "redirect:/admin";
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/";
		
	}
	
	@GetMapping("/error/{message}")
	public String showErrorPage(@PathVariable String message, Model model) {
		
		model.addAttribute("message",message);
		
		return "error";
		
	}

}
