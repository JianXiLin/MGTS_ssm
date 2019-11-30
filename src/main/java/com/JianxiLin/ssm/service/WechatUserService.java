package com.JianxiLin.ssm.service;

import com.JianxiLin.ssm.dto.WechatUserDTO;
import com.JianxiLin.ssm.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface WechatUserService {

    WechatUserDTO getWechatUserDTO(String code,String state);

    void createOrUpdateWechatUser(User user);

}
