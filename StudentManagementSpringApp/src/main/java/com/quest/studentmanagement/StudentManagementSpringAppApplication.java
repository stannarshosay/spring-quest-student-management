package com.quest.studentmanagement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
public class StudentManagementSpringAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(StudentManagementSpringAppApplication.class, args);
	}

}
