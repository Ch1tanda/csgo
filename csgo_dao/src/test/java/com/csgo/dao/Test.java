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
        List<User> users = ud.findAll();
        for(User user : users){
            System.out.println(user);
        }
    }
}
