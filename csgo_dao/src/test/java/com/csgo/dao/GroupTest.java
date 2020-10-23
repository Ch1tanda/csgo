package com.csgo.dao;

import com.csgo.domain.Group;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ch1tanda
 * Date: 2020/10/23
 * Time: 12:22
 */
public class GroupTest {

    @Test
    public void saveGroup(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory sqlSessionFactory = ac.getBean("sqlSessionFactory", SqlSessionFactory.class);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        IGroupDao gd = sqlSession.getMapper(IGroupDao.class);
        Group group = new Group();
        group.setGroupname("测试组");
        group.setId1(1);
        group.setId2(2);
        group.setId3(3);
        group.setId4(4);
        group.setId5(5);
        System.out.println(group);
        gd.saveGroup(group);
        System.out.println(group);
    }

    @Test
    public void findAll(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory sqlSessionFactory = ac.getBean("sqlSessionFactory", SqlSessionFactory.class);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        IGroupDao gd = sqlSession.getMapper(IGroupDao.class);
        List<Group> groups = gd.findAll();
        for(Group group : groups){
            System.out.println(group);
        }
    }

    @Test
    public void findById(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory sqlSessionFactory = ac.getBean("sqlSessionFactory", SqlSessionFactory.class);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        IGroupDao gd = sqlSession.getMapper(IGroupDao.class);
        Group id = gd.findById(1);
        System.out.println(id);
    }

    @Test
    public void updateGroup(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory sqlSessionFactory = ac.getBean("sqlSessionFactory", SqlSessionFactory.class);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        IGroupDao gd = sqlSession.getMapper(IGroupDao.class);
        Group group = new Group();
        group.setId(1);
        group.setGroupname("111");
        group.setId1(1);
        group.setId2(2);
        group.setId3(3);
        group.setId4(4);
        group.setId5(5);
        gd.updateGroup(group);
    }

    @Test
    public void deleteTest(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
        SqlSessionFactory sqlSessionFactory = ac.getBean("sqlSessionFactory", SqlSessionFactory.class);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        IGroupDao gd = sqlSession.getMapper(IGroupDao.class);
        gd.deleteGroup(gd.findById(8));
    }
}
