package edu.cdutet.controller;

import edu.cdutet.entity.User;
import edu.cdutet.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/add")
    public String add(){
        return "system/user_add";
    };
    @RequestMapping("/doadd")
    public String doAdd(User user){
        try{
            userService.doAdd(user);

        }catch (Exception e){

            e.printStackTrace();
        }
        return "redirect:/user/list";
    }
    @RequestMapping("/list")
    public ModelAndView list(){
        List<User> list=userService.listUser();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("list",list);
        modelAndView.setViewName("system/user_list");
        return modelAndView;
    }

    @RequestMapping("/endit")
    public  ModelAndView endit(int id){
        ModelAndView modelAndView=new ModelAndView();
       User user= userService.selectid(id);
        modelAndView.addObject("user",user);
        modelAndView.setViewName("system/user_endit");
        return modelAndView;
    }

    @RequestMapping("/doendit")
    public String doendit(User user){
        userService.editUser(user);
        return "redirect:/user/list";
    }

    @RequestMapping("delete")
    public String delete(int id){
        userService.dodelete(id);
        return "redirect:/user/list";
    }
}
