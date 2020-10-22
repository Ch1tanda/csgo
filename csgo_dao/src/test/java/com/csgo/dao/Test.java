package com.csgo.dao;

import com.csgo.domain.User;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/22
 * Time: 10:12
 */
public class Test {
    @org.junit.Test
    public void daoTest(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory ssf = (SqlSessionFactory) ac.getBean("sqlSessionFactory");
        SqlSession session = ssf.openSession();
        IUserDao ud = session.getMapper(IUserDao.class);
        User user = new User();
        user.setEmail("997847038@qq.com");
        user.setQq("997847038");
        user.setPassword("password");
        user.setUsername("Ch1tanda");
        user.setPlatform("5E");
        user.setRank("2000");
        ud.registerUser(user);
    }
}
