package com.csgo.service.impl;

import com.csgo.dao.IUserDao;
import com.csgo.domain.User;
import com.csgo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public boolean registerUser(User user) {
        System.out.println(user);
        //将邮箱转为小写
        user.setEmail(user.getEmail().toLowerCase());
        //获取所有用户
        final List<User> users = dao.findAll();
        //声明结果
        boolean result = true;
        for(User u : users){
            if(u.getEmail().toLowerCase().equals(user.getEmail())){
                result = false;
            }
        }
        if(result){
            dao.registerUser(user);
        }
        return result;
    }

    /**
     * 通过邮箱登录，查询前会把要查的邮箱更换为全小写
     * @param email
     * @return
     */
    @Override
    public User findByEmail(String email) {
        email=email.toLowerCase();
        User user = dao.findByEmail(email);
        return user;
    }

    /**
     * 登录
     * @param email
     * @param pwd
     * @return
     */
    @Override
    public User login(String email, String pwd){
        User user = findByEmail(email);
        if(user != null && user.getPassword().equals(pwd)){
            return user;
        }else return null;
    }
}
