package com.JianxiLin.ssm.dao;


import com.JianxiLin.ssm.entity.Collectionperson;
import com.JianxiLin.ssm.entity.User_info;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-dao.xml")
public class User_InfoDaoTset {

    @Autowired
    private User_InfoDao user_infoDao;
    @Autowired
    private CollectionDao collectionDao;

    @Test
    public void testselUserInfoByUserId(){
        User_info user_info=user_infoDao.selUserInfoByUserId(3);

        System.out.println(user_info.toString());
    }

    @Test
    public void testInserUserInfo(){
        User_info user_info=new User_info();
        user_info.setUserId(4);
        user_infoDao.insUser_Info(user_info);
        System.out.println("--------------------------");
    }

    @Test
    public void testupdateUser_Info(){
        User_info user_info=new User_info();
        user_info.setUserId(8);
        user_info.setWechat("ljh555");
        user_info.setPhoneNumber("1254666");
        user_info.setQq("8795233");
        user_infoDao.updateUser_Info(user_info);
        System.out.println("--------- update ok-----------");
    }

    @Test
    public void testCollection(){
         List<Collectionperson> list= collectionDao.selCollectionByUserId(7);
        for (Collectionperson collectionperson: list ) {
            Date date=new Date(collectionperson.getGmtUpdate());
            System.out.println(date);
            System.out.println(collectionperson.getGmtUpdate());
        }

    }

}
