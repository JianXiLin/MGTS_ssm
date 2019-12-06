package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.entity.Contact;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

    Contact getContactByUserId(Integer id);

    boolean isHaveContact(Integer userId);
}
