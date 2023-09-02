package edu.cdutet.service;

import edu.cdutet.entity.Student;
import edu.cdutet.entity.User;

import java.util.List;


public interface StudentService {
    void doAdd(Student student);

    List<Student> listStudent();

    void editStudent(Student student);

    Student selectidstudent(int id);

    void dodelete(int id);

}
