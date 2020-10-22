package com.csgo.service;

import com.csgo.domain.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/22
 * Time: 12:04
 */
public class Test {
    @org.junit.Test
    public void registerTest(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-service.xml");
        IUserService userService = ac.getBean("userService", IUserService.class);
        User user = new User();
        user.setEmail("99784303@qQ.com");
        user.setQq("997847038");
        user.setPassword("password");
        user.setUsername("Ch1tanda");
        user.setPlatform("5E");
        user.setRank("2000");
        System.out.println(userService.registerUser(user));
    }
}
