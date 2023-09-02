package edu.cdutet.service;

import edu.cdutet.entity.User;

import java.util.List;

public interface UserService {

	public boolean validateLogin(User user);

    void doAdd(User user);

    List<User> listUser();

    User selectid(int id);

    void editUser(User user);

    void dodelete(int id);
}
