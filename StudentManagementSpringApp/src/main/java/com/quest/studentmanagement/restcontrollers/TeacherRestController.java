package com.quest.studentmanagement.restcontrollers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quest.studentmanagement.models.Teacher;
import com.quest.studentmanagement.repositories.TeacherRepository;

@RestController
public class TeacherRestController {
	
	@Autowired
	private TeacherRepository repo;
	
	@GetMapping("/api/teacher")
	public List<Teacher> getAllTeachers() {
		
		List<Teacher> teachers = repo.findAll();
		
		return teachers;
		
	}
	

}
