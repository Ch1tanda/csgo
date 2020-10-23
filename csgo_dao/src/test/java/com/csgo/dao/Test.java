package com.csgo.dao;

import com.csgo.domain.User;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/22
 * Time: 10:12
 */
public class Test {
    @org.junit.Test
    public void userTest(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory ssf = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
        SqlSession session = ssf.openSession();
        IUserDao ud = session.getMapper(IUserDao.class);
        User id = ud.findById(14);
        if(id.getGroupid() == null){
            System.out.println(111);
        }
    }

    @org.junit.Test
    public void updateTest(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory ssf = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
        SqlSession session = ssf.openSession();
        IUserDao ud = session.getMapper(IUserDao.class);
        User user = ud.findById(14);
        user.setGroupid(null);
        ud.updateUser(user);
    }

    @org.junit.Test
    public void findUserByUsername(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory ssf = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
        SqlSession session = ssf.openSession();
        IUserDao ud = session.getMapper(IUserDao.class);
        List<User> users = ud.searchByName("%o%");
        System.out.println(users);
    }
}
