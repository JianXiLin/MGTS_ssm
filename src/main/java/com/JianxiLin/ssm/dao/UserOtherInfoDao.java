package com.JianxiLin.ssm.dao;

import com.JianxiLin.ssm.entity.Contact;
import org.apache.ibatis.annotations.Param;

public interface UserOtherInfoDao {


    void insContact(@Param("contact")Contact contact);

    void updContact(@Param("contact")Contact contact);

    Contact selContactById(Integer id);

    Contact selContactByUserId(Integer userId);

    Contact selContactByAccountId(@Param("accountId") String accountId);


}
