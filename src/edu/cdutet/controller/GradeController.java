package edu.cdutet.controller;


import edu.cdutet.entity.Grade;

import edu.cdutet.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
@RequestMapping("/grade")

public class GradeController {
    @Autowired
    private GradeService gradeService;
    private Object EcDtUtils;

    @RequestMapping("/add")
    public String add(){
        return "system/grade_add";
    };
    @RequestMapping("/doadd")
    public String doAdd(Grade grade){
        try{
            gradeService.doAdd(grade);

        }catch (Exception e){

            e.printStackTrace();
        }
        return "redirect:/grade/list";
    }
    @RequestMapping("/list")
    public ModelAndView list(){
        List<Grade> list=gradeService.listGrade();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("system/grade_list");
        return modelAndView;
    }
    @RequestMapping("/endit")
    public  ModelAndView endit(int id){
        ModelAndView modelAndView=new ModelAndView();
        Grade grade= gradeService.selectidgrade(id);
        modelAndView.addObject("grade",grade);
        modelAndView.setViewName("system/grade_endit");
        return modelAndView;
    }

    @RequestMapping("/doendit")
    public String doendit(Grade grade){
        gradeService.editGrade(grade);
        return "redirect:/grade/list";
    }

    @RequestMapping("delete")
    public String delete(int id){
        gradeService.dodelete(id);
        return "redirect:/grade/list";
    }


}
