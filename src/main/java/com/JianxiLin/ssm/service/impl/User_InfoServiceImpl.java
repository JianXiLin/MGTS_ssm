package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.User_InfoDao;
import com.JianxiLin.ssm.entity.User_info;
import com.JianxiLin.ssm.service.User_InfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class User_InfoServiceImpl implements User_InfoService {
    @Autowired
    private User_InfoDao user_infoDao;

    @Override
    public User_info getGoodsWithUserById(int user_id) {

        User_info user_info=user_infoDao.selUserInfoByUserId(user_id);

        return user_info;
    }

    @Override
    public void creatUser_Info(User_info user_info) {
        user_infoDao.insUser_Info(user_info);
    }

    @Override
    public void updateUser_Info(User_info user_info) {
        user_infoDao.updateUser_Info(user_info);
    }
}
