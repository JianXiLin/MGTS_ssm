package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.UserOtherInfoDao;
import com.JianxiLin.ssm.entity.Contact;
import com.JianxiLin.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserOtherInfoDao userOtherInfoDao;

    /**
     * 获取用户的联系方式
     * @param userId
     * @return
     */
    @Override
    public Contact getContactByUserId(Integer userId) {
        Contact contact;
        contact = userOtherInfoDao.selContactByUserId(userId);
        return contact;
    }

    /**
     * 用户是否含有一个或一个以上的联系方式
     * @param userId
     * @return
     */
    @Override
    public boolean isHaveContact(Integer userId) {
        Contact contact = userOtherInfoDao.selContactByUserId(userId);

        //没有该用户的联系方式
        if (contact == null || (contact.getWechat()==null && contact.getPhoneNumber()==null
                && contact.getQq()==null)){
            return false;
        }
        return true;
    }
}
