package com.quest.studentmanagement.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quest.studentmanagement.models.Subject;
import com.quest.studentmanagement.repositories.SubjectRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private SubjectRepository repo;
	
	@GetMapping("")
	public String showAdminHomePage() {
				
		return "admin-home";
		
	}
	
	@GetMapping("/teacher")
	public String showManageTeachersPage() {
				
		return "manage-teachers";
		
	}
	
	@GetMapping("/subject")
	public String showManageSubjectsPage(Model model) {
		
		List<Subject> subjects = repo.findAll();
		
		model.addAttribute("subjects", subjects);
				
		return "manage-subjects";
		
	}
	
	@GetMapping("/subject/add")
	public String showAddSubjectsPage() {
		
		return "add-subject";
		
	}
	
	@PostMapping("/subject/add")
	public String addSubject(@ModelAttribute Subject subject) {
		
		repo.save(subject);
		
		return "redirect:/admin/subject/add";
		
	}
	

}
