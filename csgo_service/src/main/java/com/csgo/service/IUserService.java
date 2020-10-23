package com.csgo.service;

import com.csgo.domain.User;

import java.util.List;

public interface IUserService {

    /**
     * 查询所有
     * @return
     */
    List<User> findAll();

    /**
     * 用户注册
     * @param user
     */
    boolean registerUser(User user);

    User findByEmail(String email);

    User login(String email, String pwd);

    void updateUser(User user);

    User findById(Integer id);

    List<User> searchByName(String username);
}
