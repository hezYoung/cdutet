package edu.cdutet.service.impl;

import edu.cdutet.entity.Student;

import edu.cdutet.entity.User;
import edu.cdutet.mapper.StudentMapper;
import edu.cdutet.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class StudentServiceimpl implements StudentService {
    @Autowired
    private StudentMapper StudentMapper;
    @Autowired
    private HttpSession session;

    @Override
    public void doAdd(Student student) {
//        boolean result = this.hasUser(student.getStudentName());
        StudentMapper.save(student);
    }

    @Override
    public List<Student> listStudent() {
        List<Student> list =StudentMapper.list();
        return list;
    }

    @Override
    public void editStudent(Student student) {
        StudentMapper.esitStudent(student);
    }

    @Override
    public Student selectidstudent(int id) {
        Student student=StudentMapper.querySyudentByid(id);
        return student;
    }

    @Override
    public void dodelete(int id) {
        StudentMapper.deleteStudent(id);
    }



    private boolean hasUser(String StudentName) {
        boolean flag=false;
        Student student =StudentMapper.selectserByName(StudentName);
        if (student==null)
            flag=true;
        return  flag;

    }



    }

