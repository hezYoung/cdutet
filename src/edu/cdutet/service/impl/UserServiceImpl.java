package edu.cdutet.service.impl;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cdutet.entity.User;
import edu.cdutet.mapper.UserMapper;
import edu.cdutet.service.UserService;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private HttpSession session;
	
	@Override
	public boolean validateLogin(User user) {

		boolean flag = false;
		
		User userDb = userMapper.queryUser(user.getUserName());
		if(userDb != null) {
			if(userDb.getPassword().equals(user.getPassword())) {
				flag = true;
				session.setAttribute("empName", userDb.getEmployeeName());
			}
		}
		
		return flag;
	}

	@Override
	public void doAdd(User user) {
		boolean result = this.hasUser(user.getUserName());
		if (result){
			user.setPassword("123456");
			user.setStatus("可用");
			userMapper.save(user);
		}
	}

	@Override
	public List<User> listUser() {
		List<User> list =userMapper.list();
		return list;
	}

	@Override
	public User selectid(int id) {
		User user=userMapper.queryUserByid(id);
		return user;
	}

	@Override
	public void editUser(User user) {
	userMapper.esitUser(user);
	}

	@Override
	public void dodelete(int id) {
		userMapper.deleteUser(id);
	}


	private boolean hasUser(String userName) {
		boolean flag=false;
		User user =userMapper.selectserByName(userName);
		if (user==null)
			flag=true;
		return  flag;

	}


}
