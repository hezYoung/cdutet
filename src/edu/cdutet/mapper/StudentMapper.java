package edu.cdutet.mapper;

import edu.cdutet.entity.Student;
import edu.cdutet.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    void save(@Param("student")Student student);

    Student selectserByName(String studentName);

    List<Student> list();

    void esitStudent(Student student);

    Student querySyudentByid(int id);

    void deleteStudent(int id);

}
