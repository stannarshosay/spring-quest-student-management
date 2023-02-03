package com.quest.studentmanagement.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.quest.studentmanagement.models.Subject;

public interface SubjectRepository extends JpaRepository<Subject, Integer> {

}
