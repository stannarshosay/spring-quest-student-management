package com.quest.studentmanagement.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quest.studentmanagement.models.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByUsernameAndPassword(String username,String password);
	
}
