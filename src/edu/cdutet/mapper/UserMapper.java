package edu.cdutet.mapper;


import edu.cdutet.entity.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import edu.cdutet.entity.User;

import java.util.List;

@Repository
public interface UserMapper {

	User queryUser( String userName);

//    User selectserByName(String userName);

    void save(@Param("user") User user);

    User selectserByName(String userName);

    List<User> list();

    User queryUserByid(int id);

    void esitUser(User user);

    void deleteUser(int id);


}
