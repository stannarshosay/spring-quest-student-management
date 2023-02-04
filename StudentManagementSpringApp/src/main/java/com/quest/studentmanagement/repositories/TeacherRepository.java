package com.quest.studentmanagement.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.quest.studentmanagement.models.Teacher;

public interface TeacherRepository extends JpaRepository<Teacher, Integer> {

	List<Teacher> findByNameContaining(String term);

	List<Teacher> findByNameLike(String term);

	List<Teacher> findByNameLikeOrQualificationLike(String nameTerm, String qualificationTerm);

	// JPQL
	@Query("SELECT t FROM Teacher t WHERE t.name LIKE ?1 OR t.qualification LIKE ?1")
	List<Teacher> searchByNameOrQualification(String term);

	@Query(value = "SELECT * FROM teachers_tb WHERE name LIKE ?1 OR qualification LIKE ?1", nativeQuery = true)
	List<Teacher> searchByNameOrQualificationNative(String term);
	
	@Query(value = "SELECT t.id,t.name,t.qualification,t.subject_id FROM teachers_tb t JOIN subjects_tb s ON(t.subject_id = s.id) WHERE t.name LIKE ?1 OR t.qualification LIKE ?1 OR s.subject_name LIKE ?1", nativeQuery = true)
	List<Teacher> search(String term);
	

}
