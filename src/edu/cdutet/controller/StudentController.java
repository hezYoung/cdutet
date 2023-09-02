package edu.cdutet.controller;

import edu.cdutet.entity.Student;
import edu.cdutet.entity.User;
import edu.cdutet.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;
    @RequestMapping("/add")
    public String add(){
        return "system/student_add";
    };
    @RequestMapping("/doadd")
    public String doAdd(Student student){
        try{
            studentService.doAdd(student);

        }catch (Exception e){

            e.printStackTrace();
        }
        return "redirect:/student/list";
    }

    @RequestMapping("/list")
    public ModelAndView list(){
        List<Student> list=studentService.listStudent();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("system/student_list");
        return modelAndView;


    }

    @RequestMapping("/endit")
    public  ModelAndView endit(int id){
        ModelAndView modelAndView=new ModelAndView();
        Student student= studentService.selectidstudent(id);
        modelAndView.addObject("student",student);
        modelAndView.setViewName("system/student_endit");
        return modelAndView;
    }

    @RequestMapping("/doendit")
    public String doendit(Student student){
        studentService.editStudent(student);
        return "redirect:/student/list";
    }

    @RequestMapping("delete")
    public String delete(int id){
        studentService.dodelete(id);
        return "redirect:/student/list";
    }

}
