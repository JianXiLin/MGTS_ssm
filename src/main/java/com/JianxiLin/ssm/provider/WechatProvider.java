package com.JianxiLin.ssm.provider;

import com.alibaba.fastjson.JSON;
import com.JianxiLin.ssm.dto.AccessTokenDTO;
import com.JianxiLin.ssm.dto.WechatUserDTO;
import com.JianxiLin.ssm.util.OkHttpUtils;
import org.springframework.stereotype.Component;


import java.util.Map;

@Component
public class WechatProvider {


    public Map<String,String> getReqCodeResult(AccessTokenDTO accessTokenDTO){

        String getUrl = "https://api.weixin.qq.com/sns/oauth2/access_token?";
        getUrl += "appid="+accessTokenDTO.getAppid();
        getUrl += "&secret="+accessTokenDTO.getSecret();
        getUrl += "&code="+accessTokenDTO.getCode();
        getUrl += "&grant_type="+accessTokenDTO.getGrant_type();

        String allDataString = OkHttpUtils.OkHttpGet(getUrl);
        if(null != allDataString){
            Map<String, String> map=JSON.parseObject(allDataString, Map.class);
            return map;
        }
        return null;
    }


    public WechatUserDTO getWechatUser(Map codeResult){

        StringBuilder getUrl = new StringBuilder("https://api.weixin.qq.com/sns/userinfo?");
        getUrl.append("access_token=").append(codeResult.get("access_token"));
        getUrl.append("&openid=").append(codeResult.get("openid"));
        getUrl.append("&lang=").append("zh_CN");
        String allWechatUserData = OkHttpUtils.OkHttpGet(getUrl.toString());
        WechatUserDTO wechatUserDTO = JSON.parseObject(allWechatUserData, WechatUserDTO.class);
        return wechatUserDTO;
    }





}
