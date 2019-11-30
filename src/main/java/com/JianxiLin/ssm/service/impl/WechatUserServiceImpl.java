package com.JianxiLin.ssm.service.impl;

import com.JianxiLin.ssm.dao.UserDao;
import com.JianxiLin.ssm.dto.AccessTokenDTO;
import com.JianxiLin.ssm.dto.WechatUserDTO;
import com.JianxiLin.ssm.entity.User;
import com.JianxiLin.ssm.provider.WechatProvider;
import com.JianxiLin.ssm.service.WechatUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class WechatUserServiceImpl implements WechatUserService {

    @Value("${Wechat.appid}")
    private String appid;

    @Value("${Wechat.appSecret}")
    private String Secret;

    @Value("${Wechat.Grant_type}")
    private String Grant_type;
    @Value("${domain_name_url}")
    private String domain_name_url;
    @Autowired
    private WechatProvider wechatProvider;

    @Autowired
    private UserDao userDao;

    @Override
    public WechatUserDTO getWechatUserDTO(String code,String state) {
        AccessTokenDTO accessTokenDTO = new AccessTokenDTO();
        accessTokenDTO.setCode(code);
        accessTokenDTO.setState(state);
        accessTokenDTO.setAppid(appid);
        accessTokenDTO.setSecret(Secret);
        accessTokenDTO.setGrant_type(Grant_type);

        Map<String, String> reqCodeResult = wechatProvider.getReqCodeResult(accessTokenDTO);
        WechatUserDTO wechatUser = wechatProvider.getWechatUser(reqCodeResult);
        return wechatUser;
    }

    @Override
    public void createOrUpdateWechatUser(User user) {
        User userDB = userDao.selUserByAccountId(user.getAccountId());
        if(null == userDB){
            userDB = user;
            userDB.setGmtCreate(System.currentTimeMillis());
            userDB.setGmtUpdate(System.currentTimeMillis());
            userDao.insUser(userDB);
        }else {
            User updateUser = user;
            //不能修改的值
            updateUser.setAccountId(userDB.getAccountId());
            updateUser.setId(userDB.getId());
            updateUser.setGmtCreate(userDB.getGmtCreate());

            updateUser.setGmtUpdate(System.currentTimeMillis());
            userDao.updateUser(updateUser);
        }
    }

    public String getAppid() {
        return appid;
    }

    public String getSecret() {
        return Secret;
    }

    public String getGrant_type() {
        return Grant_type;
    }

    public String getDomain_name_url() {
        return domain_name_url;
    }
}
