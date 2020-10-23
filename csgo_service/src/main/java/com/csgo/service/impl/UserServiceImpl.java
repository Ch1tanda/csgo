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
        return users;
    }

    @Override
    public boolean registerUser(User user) {
        System.out.println(user);
        //将邮箱转为小写
        user.setEmail(user.getEmail().toLowerCase());
        //将平台转为大写
        user.setPlatform(user.getPlatform().toUpperCase());
        //获取所有用户
        List<User> users = dao.findAll();
        //声明结果
        boolean result = true;
        for(User u : users){
            //有邮箱一样的就失败注册
            if(u.getEmail().toLowerCase().equals(user.getEmail())){
                result = false;
            }
        }
        if(result){
            //设置未报名
            user.setSigned("No");
            //调取持久层方法进行注册
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

    @Override
    public void updateUser(User user) {
        dao.updateUser(user);
    }

    @Override
    public User findById(Integer id) {
        return dao.findById(id);
    }

    @Override
    public List<User> searchByName(String username) {
        String queryName = "%"+username+"%";
        return dao.searchByName(queryName);
    }
}
