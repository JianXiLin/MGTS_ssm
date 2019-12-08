package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.entity.Collectionperson;
import com.JianxiLin.ssm.entity.Contact;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {

    Contact getContactByUserId(Integer id);

    boolean isHaveContact(Integer userId);

    /**
     * 根据用户user_id查找收藏表
     * @param
     * @return
     */
    List<Collectionperson> getCollectionByUserId(int user_id);
}
