package com.csgo.service.impl;

import com.csgo.dao.IUserDao;
import com.csgo.domain.User;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 夭暝
 */
@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    public IUserDao dao;

    @Override
    public List<User> findAll() {
        System.out.println("业务层：查询所有账户信息...");
        List<User> users = dao.findAll();
        if (users != null) {
            for (User user : users) {
                System.out.println(user);
            }
        }
        return users;
    }

    @Override
    public void registerUser(User user) {
        System.out.println("业务层：用户注册...");
        System.out.println(user);
        dao.registerUser(user);
    }

    @Override
    public User findByEmail(String email) {
        User user = dao.findByEmail(email);
        return user;
    }

    @Override
    public User login(String email, String pwd){
        User user = findByEmail(email);
        if (user.getPassword().equals(pwd)){
            return user;
        }
        else
            return null;
    }
}
