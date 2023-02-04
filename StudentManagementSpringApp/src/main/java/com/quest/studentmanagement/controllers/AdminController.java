package com.quest.studentmanagement.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quest.studentmanagement.models.Subject;
import com.quest.studentmanagement.models.Teacher;
import com.quest.studentmanagement.repositories.SubjectRepository;
import com.quest.studentmanagement.repositories.TeacherRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private SubjectRepository subjectRepo;
	
	@Autowired
	private TeacherRepository teacherRepo;
	
	@GetMapping("")
	public String showAdminHomePage() {
				
		return "admin-home";
		
	}

	//SUBJECT
	
	@GetMapping("/subject")
	public String showManageSubjectsPage(Model model) {
		
		List<Subject> subjects = subjectRepo.findAll();
		
		model.addAttribute("subjects", subjects);
				
		return "manage-subjects";
		
	}
	
	@GetMapping("/subject/add")
	public String showAddSubjectPage() {
		
		return "add-subject";
		
	}
	
	@PostMapping("/subject/add")
	public String addSubject(@ModelAttribute Subject subject) {
		
		subjectRepo.save(subject);
		
		return "redirect:/admin/subject";
		
	}
	
	@GetMapping("/subject/update/{id}")
	public String showUpdateSubjectPage(@PathVariable Integer id, Model model) {
		
		Subject subject = null;
				
		Optional<Subject> optionalSubject  = subjectRepo.findById(id);
		
		if(optionalSubject.isPresent()) {
			
			subject = optionalSubject.get();
						
		}else {
			
			return "redirect:/error/No Subject With ID : "+id+" Found";
			
		}
		
		model.addAttribute("subject",subject);
		
		return "update-subject";
		
	}
	
	@PostMapping("/subject/update")
	public String updateSubject(@ModelAttribute Subject subject) {
		
		subjectRepo.save(subject);
		
		return "redirect:/admin/subject";
		
	}
	

	@GetMapping("/subject/remove/{id}")
	public String removeSubject(@PathVariable Integer id) {
		
		subjectRepo.deleteById(id);
		
		return "redirect:/admin/subject";
		
	}
	
	//TEACHERS
	
	@GetMapping("/teacher")
	public String showManageTeachersPage(Model model) {
		
		List<Teacher> teachers = teacherRepo.findAll();
		
		model.addAttribute("teachers", teachers);
				
		return "manage-teachers";
		
	}
	
	@GetMapping("/teacher/add")
	public String showAddTeacherPage(Model model) {
		
		List<Subject> subjects = subjectRepo.findAll();
		
		model.addAttribute("subjects",subjects);
		
		return "add-teacher";
		
	}
	
	@PostMapping("/teacher/add")
	public String addTeacher(@ModelAttribute Teacher teacher, @RequestParam Integer subjectId) {
		
		Subject subject = new Subject();
		subject.setId(subjectId);
		
		teacher.setSubject(subject);
		
		teacherRepo.save(teacher);
		
		return "redirect:/admin/teacher";
		
	}
	
	@GetMapping("/teacher/update/{id}")
	public String showUpdateTeacherPage(@PathVariable Integer id, Model model) {
		
		Teacher teacher = null;
				
		Optional<Teacher> optionalTeacher  = teacherRepo.findById(id);
		
		if(optionalTeacher.isPresent()) {
			
			teacher = optionalTeacher.get();
						
		}else {
			
			return "redirect:/error/No Teacher With ID : "+id+" Found";
			
		}
		
		List<Subject> subjects = subjectRepo.findAll();
		
		model.addAttribute("subjects",subjects);
		
		model.addAttribute("teacher",teacher);
		
		return "update-teacher";
		
	}
	
	@PostMapping("/teacher/update")
	public String updateTeacher(@ModelAttribute Teacher teacher, @RequestParam Integer subjectId) {
		
		Subject subject = subjectRepo.findById(subjectId).get();
		
		teacher.setSubject(subject);
		
		teacherRepo.save(teacher);
		
		return "redirect:/admin/teacher";
		
	}
	
	@GetMapping("/teacher/remove/{id}")
	public String removeTeacher(@PathVariable Integer id) {
		
		teacherRepo.deleteById(id);
		
		return "redirect:/admin/teacher";
		
	}
	
	@PostMapping("/teacher/search")
	public String searchTeacher(@RequestParam String term, Model model) {
				
//		List<Teacher> teachers = teacherRepo.findByNameContaining(term);		
//		List<Teacher> teachers = teacherRepo.findByNameLike("%"+term+"%");
//		List<Teacher> teachers = teacherRepo.findByNameLikeOrQualificationLike("%"+term+"%","%"+term+"%");
//		List<Teacher> teachers = teacherRepo.searchByNameOrQualification("%"+term+"%");
//		List<Teacher> teachers = teacherRepo.searchByNameOrQualificationNative("%"+term+"%");
		List<Teacher> teachers = teacherRepo.search("%"+term+"%");
		
		model.addAttribute("teachers", teachers);
		
		return "manage-teachers";
		
	}
	
}
