package edu.cdutet.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.cdutet.entity.User;
import edu.cdutet.service.UserService;

@Controller
@RequestMapping("/sys")
public class LoginController {
	
	@Resource
	private UserService userService;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/login")
	public String index() {
		
		return "login";
	}
	
	@RequestMapping("/doLogin")
	public String login(User user) {
		String view = "login";
	
		boolean flag = userService.validateLogin(user);
		if(flag) {
			view = "index";
		}
	
		return view;
	}
	
	
	
	@RequestMapping("/welcome")
	public String welcome() {
		
		return "welcome";
	}
	
	@RequestMapping("/logout")
	public String logOut() {
		
		session.removeAttribute("empName");
		
		return "login";
	}
}
