package edu.cdutet.controller;

import edu.cdutet.entity.Exame;

import edu.cdutet.service.ExameService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/exame")
public class ExameController {
    @Autowired
    private ExameService exameService;
    @RequestMapping("/add")
    public String add(){
        return "system/exame_add";
    };
    @RequestMapping("/doadd")
    public String doAdd(Exame exame){
        try{
            exameService.doAdd(exame);

        }catch (Exception e){

            e.printStackTrace();
        }
        return "redirect:/exame/list";
    }
    @RequestMapping("/list")
    public ModelAndView list(){
        List<Exame> list=exameService.listExame();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("system/exame_list");
        return modelAndView;
    }
    @RequestMapping("/endit")
    public  ModelAndView endit(int id){
        ModelAndView modelAndView=new ModelAndView();
        Exame exame= exameService.selectidexame(id);
        modelAndView.addObject("exame",exame);
        modelAndView.setViewName("system/exame_endit");
        return modelAndView;
    }

    @RequestMapping("/doendit")
    public String doendit(Exame exame){
        exameService.editExame(exame);
        return "redirect:/exame/list";
    }

    @RequestMapping("delete")
    public String delete(int id){
        exameService.dodelete(id);
        return "redirect:/exame/list";
    }

    @RequestMapping("/sousuo")
    public ModelAndView sousuo(){
        List<Exame> list=exameService.sousuolist();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("system/exame_list");
        return modelAndView;
    }
}
